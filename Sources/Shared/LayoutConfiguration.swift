//
//  LayoutConfiguration.swift
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

public final class LayoutConfiguration {

    public var constant: LayoutConstant
    public var multiplier: LayoutMultiplier
    public var priority: LayoutPriority

    public init(constant: LayoutConstant = 0.0,
                multiplier: LayoutMultiplier = 1.0,
                priority: LayoutPriority = .required) {
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

extension LayoutConfiguration: Defaultable {
    public static var `default`: LayoutConfiguration{
        return .init()
    }

    public static func constant(_ constant: LayoutConstant) -> LayoutConfiguration{
        return LayoutConfiguration(constant: constant)
    }
    public static func multiplier(_ multiplier: LayoutMultiplier) -> LayoutConfiguration{
        return LayoutConfiguration(multiplier: multiplier)
    }
    public static func priority(_ priority: LayoutPriority) -> LayoutConfiguration{
        return LayoutConfiguration(priority: priority)
    }
}


public final class LayoutPairConfiguration: Pair<LayoutConfiguration>, Defaultable {
    public static var `default`: LayoutPairConfiguration { return .init(.default) }
}
