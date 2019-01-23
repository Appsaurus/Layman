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
        let views = items.filtered(as: UIView.self)
        if views.count == 2 {
            guard let commonSuperview = views[0].nearestCommonSuperviewWith(other: views[1]) else {
                assertionFailure("Views that share constraints must share a common superview.")
                return constraint
            }
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
                                    multiplier: coefficients.multiplier,
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
    public var isTrailingType: Bool {
        return [.right, .bottom, .trailing, .rightMargin, .bottomMargin, .trailingMargin].contains(self)

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
        guard firstAttribute.isTrailingType, secondAttribute.isTrailingType else { return self }
        return self.withInvertedRelationship.invertConstant()
    }
}
