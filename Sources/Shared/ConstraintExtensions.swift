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

import Swiftest

extension Constraint{

    public var items: [AnyObject?]{
        return [firstItem, secondItem]
    }

    @discardableResult
    public func activated(with configuration: LayoutConfiguration) -> Constraint{
        return configured(with: configuration).activated()
    }

    @discardableResult
    public func activated(with priority: LayoutPriority? = nil) -> Constraint{
        self.priority =? priority
        isActive = true

        #if DEBUG
        let views = items.filtered(as: UIView.self)
        if views.count == 2{
            guard let commonSuperview = views[0].nearestCommonSuperviewWith(other: views[1]) else{
                assertionFailure("Views that share constraints must share a common superview.")
                return constraint
            }
        }
        #endif
        return self
    }

    public func deactivated() -> Constraint{
        isActive = false
        return self
    }
}

//MARK: Constraint + LayoutConfiguration
extension Constraint {
    public func configured(with configuration: LayoutConfiguration) -> Constraint{
        let constraint = Constraint(item: firstItem as Any,
                                    attribute: firstAttribute,
                                    relatedBy: relation,
                                    toItem: secondItem,
                                    attribute: secondAttribute,
                                    multiplier: configuration.multiplier,
                                    constant: configuration.constant)

        return constraint.with(priority: configuration.priority)
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
    public func with(priority: LayoutPriority) -> Self{
        self.priority = priority
        return self
    }
}


