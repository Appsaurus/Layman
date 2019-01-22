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

extension LayoutConfigurationPair: Coefficient {}
