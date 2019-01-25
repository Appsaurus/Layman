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

// sourcery:inline:auto:LayoutConfigurationPair.TemplateName
// sourcery:end
}

extension LayoutConfigurationPair: CoefficientMutating {
    public static func constant(_ constant: LayoutConstant) -> LayoutConfigurationPair {
        return LayoutConfigurationPair(.constant(constant))
    }

    public static func multiplier(_ multiplier: LayoutMultiplier) -> LayoutConfigurationPair {
        return LayoutConfigurationPair(.multiplier(multiplier))
    }

    public static func priority(_ priority: LayoutPriority) -> LayoutConfigurationPair {
        return LayoutConfigurationPair(.priority(priority))
    }

    public func set(constant: LayoutConstant) {
        first.constant = constant
        second.constant = constant
    }

    public func set(multiplier: LayoutMultiplier) {
        first.multiplier = multiplier
        second.multiplier = multiplier
    }

    public func set(priority: LayoutPriority) {
        first.priority = priority
        second.priority = priority
    }
}
