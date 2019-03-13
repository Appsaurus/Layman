//
//  View+AutolayoutSugar.swift
//  Layman
//
//  Created by Brian Strobach on 1/15/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

// MARK: General Convenience Autolayout Extensions
prefix operator ^

public prefix func ^ (view: View) -> View {
    return view.assertSuperview()
}

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
    public func pinToSuperview() -> SideConstraints {
        return edgeAnchors.equal(to: assertSuperview().edgeAnchors)
    }

    @discardableResult
    public func centerInSuperview() -> ConstraintPair {
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

// Useful when you have a view that you want to calculate its content based height using autolayout
// but ultimately, it will not be able to use autolayout at time of layout to enforce its height (tableview headers/footers/etc)
extension View {
    public func layoutDynamicHeight(forWidth width: LayoutConstant) {
        translatesAutoresizingMaskIntoConstraints = false
        let widthConstraint = self.width.equal(to: width)
        addConstraint(widthConstraint)
        forceAutolayoutPass()
        let height = systemLayoutSizeFitting(View.layoutFittingExpandedSize).height
        removeConstraint(widthConstraint)
        frame = LayoutFrame(x: 0, y: 0, width: width, height: height)
        translatesAutoresizingMaskIntoConstraints = true
    }

    public class func parentViewFittingContent(of view: View, insetBy insets: LayoutPadding = LayoutPadding(20)) -> UIView {
        let layoutView: View = View()
        layoutView.addSubview(view)
        view.forceSuperviewToMatchContentSize(insetBy: insets)
        return layoutView
    }
}
#if canImport(UIKit)
import UIKit
//Dynamic Height TableView Header
extension UITableView {
    public func layoutDynamicHeightHeaderView(width: LayoutConstant) {
        guard let headerView = tableHeaderView else { return }
        headerView.layoutDynamicHeight(forWidth: width)
        self.tableHeaderView = headerView
    }

    /// Dynamically Size TableView headers with AutoLayout
    //  NOTE: Requires following override in UITableViewController
    //    open override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
    //        super.viewWillTransition(to: size, with: coordinator)
    //        self.tableView.layoutDynamicHeightHeaderView(width: size.width)
    //    }
    //
    //    override open func viewWillAppear(_ animated: Bool) {
    //        super.viewWillAppear(animated)
    //        self.tableView.layoutDynamicHeightHeaderView(width: self.tableView.bounds.width)
    //    }
    /// - Parameters:
    ///   - view: Base view for header
    ///   - insets: Insets for base view

    public func setupDynamicHeightTableHeaderView(fittingContentView view: View, insets: LayoutPadding = LayoutPadding(20)) {
        tableHeaderView = View.parentViewFittingContent(of: view, insetBy: insets)
    }

}
#endif
