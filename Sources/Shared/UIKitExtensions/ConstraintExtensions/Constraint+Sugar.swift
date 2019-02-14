//
//  ConstraintExtensions.swift
//  Layman
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

    public var firstLayoutGuide: LayoutGuide? {
        return firstItem as? LayoutGuide
    }

    public var secondLayoutGuide: LayoutGuide? {
        return secondItem as? LayoutGuide
    }

    @discardableResult
    public func activated(with coefficients: LayoutCoefficient) -> Constraint {
        return configured(with: coefficients).activated()
    }

    public func activate(with priority: LayoutPriority? = nil) {
        if let priority = priority { self.priority = priority }
        isActive = true

        firstView?.translatesAutoresizingMaskIntoConstraints = false

        #if DEBUG
        let views = [firstView, secondView].compactMap { $0 }
        if views.count == 2 {
            let areRelated = views[0].superview === views[1] || views[1].superview == views[0]
            assert(areRelated || views[0].nearestCommonSuperviewWith(other: views[1]) != nil, "Views that share constraints must share a common superview.")
        }
        #endif
    }

    @discardableResult
    public func activated(with priority: LayoutPriority? = nil) -> Constraint {
        activate(with: priority)
        return self
    }

    public func deactivated() -> Constraint {
        isActive = false
        return self
    }
}
