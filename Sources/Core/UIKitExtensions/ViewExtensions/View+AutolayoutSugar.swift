//
//  View+AutolayoutSugar.swift
//  Layman
//
//  Created by Brian Strobach on 1/15/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

// MARK: General Convenience Autolayout Extensions
public extension View {

    public func assertSuperview() -> View {
        assert(superview != nil, "Attempted to create constraint between a view and its superview without a superview.")
        return superview!
    }

    public func addActiveConstraints(_ constraints: Constraints, priority: LayoutPriority? = nil) {
        constraints.forEach {$0.activated(with: priority)}
        addConstraints(constraints)
    }
    @discardableResult
    public func enforceContentSize(_ priority: LayoutPriority = .required,
                                   forAxes axes: [Constraint.Axis] = [.vertical, .horizontal]) -> View {
        hugContent(priority, forAxes: axes)
        resistCompression(priority, forAxes: axes)
        return self
    }

    @discardableResult
    public func hugContent(_ priority: LayoutPriority = .required,
                           forAxes axes: [Constraint.Axis] = [.vertical, .horizontal]) -> View {
        axes.forEach { (axis) in
            setContentHuggingPriority(priority, for: axis)
        }
        return self
    }
    @discardableResult
    public func resistCompression(_ priority: LayoutPriority = .required,
                                  forAxes axes: [Constraint.Axis] = [.vertical, .horizontal]) -> View {
        axes.forEach { (axis) in
            setContentCompressionResistancePriority(priority, for: axis)
        }
        return self
    }

    public func forceAutolayoutPass() {
        setNeedsLayout()
        layoutIfNeeded()
    }

    @discardableResult
    public func pinToSuperview() -> SideConstraints{
        return edgeAnchors.equal(to: assertSuperview().edgeAnchors)
    }

    @discardableResult
    public func centerInSuperview() -> ConstraintPair{
        return centerXY.equal(to: assertSuperview().centerXY)
    }
}

// Constraint lookup
extension View {
    public func constraints(relatedTo item: AnyObject? = nil, for attributes: ConstraintAttribute...) -> Constraints {
        return attributes.compactMap { constraint(relatedTo: item, for: $0) }
    }

    public func constraint(relatedTo item: AnyObject? = nil, for attribute: ConstraintAttribute) -> Constraint? {
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

extension Collection where Element: ConstraintReferencing {
    public var heirarchy: ConstraintHeirarchy {
        return reduce(into: ConstraintHeirarchy()) { (result, constraints) in
            for element in constraints.all {
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
}

internal extension Dictionary where Key == ConstraintAttribute, Value == Constraints {
    internal func merging(with constraintHeirarchy: ConstraintAttributeMap) -> ConstraintAttributeMap {
        return self.merging(constraintHeirarchy) { (constraints, otherConstraints) -> Constraints in
            return constraints + otherConstraints
        }
    }

    internal mutating func update(with constraint: Constraint) {
        var array = self[constraint.firstAttribute] ?? []
        array.append(constraint)
        self[constraint.firstAttribute] = array
    }
}

internal extension Dictionary where Key == View, Value == ConstraintAttributeMap {
    internal func merging(with constraintHeirarchy: ConstraintHeirarchy) -> ConstraintHeirarchy {
        return self.merging(constraintHeirarchy) { (map, otherMap) -> ConstraintAttributeMap in
            return map.merging(otherMap, uniquingKeysWith: { (constraints, otherConstraints) -> Constraints in
                return [constraints, otherConstraints].flatMap {$0}
            })
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
        return self.viewHierarchy().intersection(other.viewHierarchy()).first
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

internal extension Collection where Element: Equatable & Hashable {
    var set: Set<Element> {
        return Set<Element>(self)
    }
}

internal extension Set {
    var array: [Element] {
        return Array(self)
    }

}
