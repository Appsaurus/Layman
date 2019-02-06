//
//  ConstraintExtensions.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/8/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

#if canImport(AppKit)
import AppKit
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
    public func activated(with coefficients: LayoutCoefficient) -> Constraint {
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
