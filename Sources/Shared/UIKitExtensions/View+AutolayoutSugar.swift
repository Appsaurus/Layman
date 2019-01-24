//
//  View+AutolayoutSugar.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/15/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

// MARK: General Convenience Autolayout Extensions
public extension View {

    public func addActiveConstraints(_ constraints: Constraints) {
        constraints.forEach {$0.isActive = true}
        addConstraints(constraints)
    }

    public func autoEnforceContentSize(_ priority: LayoutPriority = .required, forAxes axes: [Constraint.Axis] = [.vertical, .horizontal]) {
        autoEnforceContentHugging(priority, forAxes: axes)
        autoEnforceCompressionResistance(priority, forAxes: axes)
    }

    public func autoEnforceContentHugging(_ priority: LayoutPriority = .required, forAxes axes: [Constraint.Axis] = [.vertical, .horizontal]) {
        axes.forEach { (axis) in
            setContentHuggingPriority(priority, for: axis)
        }

    }

    public func autoEnforceCompressionResistance(_ priority: LayoutPriority = .required, forAxes axes: [Constraint.Axis] = [.vertical, .horizontal]) {
        axes.forEach { (axis) in
            setContentCompressionResistancePriority(priority, for: axis)
        }
    }

    public func forceAutolayoutPass() {
        setNeedsLayout()
        layoutIfNeeded()
    }

    public func constraint(for attribute: ConstraintAttribute, relatedTo item: AnyObject? = nil) -> Constraint? {
        let allConstraints = constraints + (superview?.constraints ?? [])
        let contraintsToCheck = item != nil ? constraintsRelated(to: item!) : allConstraints
        for constraint in contraintsToCheck {
            if constraint.firstItem === self && constraint.firstAttribute == attribute {
                return constraint
            }
            if constraint.secondItem === self && constraint.secondAttribute == attribute {
                return constraint
            }
        }
        return nil
    }

    public func constraintsRelated(to item: AnyObject) -> Constraints {
        let allConstraints = constraints + (superview?.constraints ?? [])
        return allConstraints.compactMap({ (constraint: Constraint) -> Constraint? in
            return constraint.firstItem === item || constraint.secondItem === item ? constraint : nil
        })
    }
}

public typealias ConstraintAttributeMap = [ConstraintAttribute: Constraints]
public typealias ConstraintHeirarchy = [View: ConstraintAttributeMap]
extension Collection where Element == Constraint {
    public var heirarchy: ConstraintHeirarchy {
        return reduce(into: ConstraintHeirarchy()) { (result, element) in
            for view in [element.firstView, element.secondView].compactMap({$0}) {
                var viewContraints = result[view, default: [:]]
                var viewConstraintMap = viewContraints[element.firstAttribute, default: []]
                viewConstraintMap.append(element)
                viewContraints[element.firstAttribute] = viewConstraintMap
                result[view] = viewContraints
            }
        }
    }
}

private extension Dictionary where Key == ConstraintAttribute, Value == Constraints {
    subscript (all keys: Key...) -> [Value] {
        return self[all: keys]
    }

    subscript (all keys: [Key]) -> [Value] {
        return keys.map { self[$0] }.compactMap {$0}
    }
}
extension View {
    public var constraintMap: ConstraintAttributeMap {
        return constraintsRelated(to: self).heirarchy[self] ?? [ : ]
    }

    public var hasAmbiguousWidth: Bool {
        let leadingX = constraintMap[all: ConstraintAttribute.Category.leadingXAxisTypes.array]
        let trailingX = constraintMap[all: ConstraintAttribute.Category.trailingXAxisTypes.array]
        return constraintMap[.width] == nil && (leadingX.count == 0 || trailingX.count == 0)
    }

    public var hasAmbiguousHeight: Bool {
        let leadingY = constraintMap[all: ConstraintAttribute.Category.leadingYAxisTypes.array]
        let trailingY = constraintMap[all: ConstraintAttribute.Category.trailingYAxisTypes.array]
        return constraintMap[.height] == nil && (leadingY.count == 0 || trailingY.count == 0)
    }

    public var hasAmbiguousSize: Bool {
        return hasAmbiguousWidth || hasAmbiguousHeight
    }
}

// MARK: View Heirarchy
internal extension View {

    func nearestCommonSuperviewWith(other: View) -> View? {
        return self.viewHierarchy().intersection(other.self.viewHierarchy()).first
    }

    func viewHierarchy() -> Set<View> {
        return Set(View.hierarchyFor(view: self, accumulator: []))
    }

    static func hierarchyFor(view: View?, accumulator: [View]) -> [View] {
        guard let view = view else {
            return accumulator
        }
        return View.hierarchyFor(view: view.superview, accumulator: accumulator + [view])
    }

}
