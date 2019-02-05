//
//  ConstraintExtensions.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/8/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

#if canImport(Cocoa)
import Cocoa
#else
import UIKit
#endif

extension Constraint {

    public var items: [AnyObject?] {
        return [firstItem, secondItem]
    }

    public var firstView: View? {
        return firstItem as? View
    }

    public var secondView: View? {
        return secondItem as? View
    }

    @discardableResult
    public func activated(with coefficients: LayoutConfiguration) -> Constraint {
        return configured(with: coefficients).activated()
    }

    @discardableResult
    public func activated(with priority: LayoutPriority? = nil) -> Constraint {
        if let priority = priority { self.priority = priority }
        isActive = true

        #if DEBUG
        let views = [firstView, secondView].compactMap { $0 }
        if views.count == 2 {
            assert(views[0].nearestCommonSuperviewWith(other: views[1]) != nil, "Views that share constraints must share a common superview.")            
        }
        #endif
        return self
    }

    public func deactivated() -> Constraint {
        isActive = false
        return self
    }

}

// MARK: Constraint + LayoutConfiguration
extension Constraint {
    public func configured(with coefficients: LayoutConfiguration) -> Constraint {
        let constraint = Constraint(item: firstItem as Any,
                                    attribute: firstAttribute,
                                    relatedBy: relation,
                                    toItem: secondItem,
                                    attribute: secondAttribute,
                                    multiplier: coefficients.multiplier?.value ?? 1.0,
                                    constant: coefficients.constant)

        return constraint.with(priority: coefficients.priority)
    }

    public func with(multiplier: CGFloat) -> Constraint {

        return Constraint(item: firstItem as Any,
                          attribute: firstAttribute,
                          relatedBy: relation,
                          toItem: secondItem,
                          attribute: secondAttribute,
                          multiplier: multiplier,
                          constant: constant)
    }

    @discardableResult
    public func with(priority: LayoutPriority) -> Self {
        self.priority = priority
        return self
    }
}

extension ConstraintAttribute {

    public enum Category {
        case leading
        case trailing
        case xAxis
        case leadingXAxis
        case centerXAxis
        case trailingXAxis
        case yAxis
        case leadingYAxis
        case centerYAxis
        case trailingYAxis

        public static var leadingTypes: Set<ConstraintAttribute> = leadingXAxisTypes.union(leadingYAxisTypes)

        public static var trailingTypes: Set<ConstraintAttribute> = trailingXAxisTypes.union(trailingYAxisTypes)

        // MARK: XAxis
        public static var xAxisTypes: Set<ConstraintAttribute> = trailingXAxisTypes.union(centerXAxisTypes).union(leadingXAxisTypes)

        public static var leadingXAxisTypes: Set<ConstraintAttribute> = [.left, .leading, .leftMargin, .leadingMargin]

        public static var centerXAxisTypes: Set<ConstraintAttribute> = [.centerX, .centerXWithinMargins]

        public static var trailingXAxisTypes: Set<ConstraintAttribute> = [.right, .trailing, .rightMargin, .trailingMargin]

        // MARK: YAxis
        public static var yAxisTypes: Set<ConstraintAttribute> = trailingYAxisTypes.union(centerYAxisTypes).union(leadingYAxisTypes)

        public static var leadingYAxisTypes: Set<ConstraintAttribute> = [.top, .topMargin]

        public static var centerYAxisTypes: Set<ConstraintAttribute> = [.centerY, .centerYWithinMargins]

        public static var trailingYAxisTypes: Set<ConstraintAttribute> = [.bottom, .bottomMargin]

    }

    public func isCategory(_ category: Category) -> Bool {
        switch category {
        case .leading:
            return Category.leadingTypes.contains(self)
        case .trailing:
            return Category.trailingTypes.contains(self)
        case .xAxis:
            return Category.xAxisTypes.contains(self)
        case .leadingXAxis:
            return Category.leadingXAxisTypes.contains(self)
        case .centerXAxis:
            return Category.centerXAxisTypes.contains(self)
        case .trailingXAxis:
            return Category.trailingXAxisTypes.contains(self)
        case .yAxis:
            return Category.yAxisTypes.contains(self)
        case .leadingYAxis:
            return Category.leadingYAxisTypes.contains(self)
        case .centerYAxis:
            return Category.centerYAxisTypes.contains(self)
        case .trailingYAxis:
            return Category.trailingYAxisTypes.contains(self)
        }
    }

}
extension Constraint.Relation {
    public var inverted: Constraint.Relation {
        switch self {
        case .lessThanOrEqual:
            return .greaterThanOrEqual
        case .greaterThanOrEqual:
            return .lessThanOrEqual
        default:
            return self
        }
    }

}
extension Constraint {

    public func invertConstant() -> Constraint {
        return self.set(constant: -constant)
    }
    public func set(constant: LayoutConstant) -> Constraint {
        self.constant = constant
        return self
    }

    public var withInvertedRelationship: Constraint {
        return with(relation: relation.inverted)
    }

    public func with(relation: Constraint.Relation) -> Constraint {
        return Constraint(item: firstItem as Any,
                          attribute: firstAttribute,
                          relatedBy: relation,
                          toItem: secondItem,
                          attribute: secondAttribute,
                          multiplier: multiplier,
                          constant: constant).with(priority: priority)
    }
    public var invertedAsInset: Constraint {
        guard firstAttribute.isCategory(.trailing), secondAttribute.isCategory(.trailing) else { return self }
        return self.withInvertedRelationship.invertConstant()
    }
}
