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
