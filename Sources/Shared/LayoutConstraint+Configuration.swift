//
//  LayoutConstraint+Configuration.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/3/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

#if canImport(Cocoa)
import Cocoa
#else
import UIKit
#endif

public extension Constraint {
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

// MARK: - LayoutConfiguration
public class LayoutConfiguration {

    public static var `default`: LayoutConfiguration{
        return LayoutConfiguration()
    }

    public var constant: LayoutConstant
    public var multiplier: LayoutMultiplier
    public var priority: LayoutPriority

    public init(constant: LayoutConstant = 0.0, multiplier: LayoutMultiplier = 1.0, priority: LayoutPriority = .required) {
        self.constant = constant
        self.multiplier = multiplier
        self.priority = priority
    }


    public func with(constant: LayoutConstant) -> LayoutConfiguration{
        self.constant = constant
        return self
    }
    public func with(multiplier: LayoutMultiplier) -> LayoutConfiguration{
        self.multiplier = multiplier
        return self
    }
    public func with(priority: LayoutPriority) -> LayoutConfiguration{
        self.priority = priority
        return self
    }
}
