//
//  LayoutPairConfiguration.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/22/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

public final class LayoutConfigurationPair: LayoutModelReferencePair<LayoutConfiguration> {
    public static var `default`: LayoutConfigurationPair { return .init(.default) }

    public static func size(_ size: LayoutSize) -> LayoutConfigurationPair {
        return LayoutConfigurationPair(.constant(size.width), .constant(size.height))
    }

}

extension LayoutConfigurationPair: CoefficientMutating {
    public static func constant(_ constant: LayoutConstant) -> LayoutConfigurationPair {
        return LayoutConfigurationPair(.constant(constant))
    }

    public static func multiplier(_ multiplier: LayoutMultiplier) -> LayoutConfigurationPair {
        return LayoutConfigurationPair(.multiplier(multiplier))
    }

    public static func multiplier(_ multiplier: LayoutConstant) -> LayoutConfigurationPair {
        return .multiplier(LayoutMultiplier(multiplier))
    }

    public static func priority(_ priority: LayoutPriority) -> LayoutConfigurationPair {
        return LayoutConfigurationPair(.priority(priority))
    }

    public func set(constant: LayoutConstant) {
        first.set(constant: constant)
        second.set(constant: constant)
    }

    public func set(multiplier: LayoutMultiplier) {
        first.set(multiplier: multiplier)
        second.set(multiplier: multiplier)
    }

    public func set(priority: LayoutPriority) {
        first.set(priority: priority)
        second.set(priority: priority)
    }

    public func set(divisor: LayoutDivisor) {
        first.set(divisor: divisor)
        second.set(divisor: divisor)
    }
}
