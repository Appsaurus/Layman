//
//  EdgeAnchorsConfiguration.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/10/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

public final class EdgeAnchorsConfiguration: SidesTuple<LayoutConfiguration, LayoutConfiguration> {
    public static var `default`: EdgeAnchorsConfiguration { return .init(.default) }
}

extension EdgeAnchorsConfiguration: CoefficientMutating {

    public static func constant(_ constant: LayoutConstant) -> EdgeAnchorsConfiguration {
        return EdgeAnchorsConfiguration(.constant(constant))
    }
    public static func multiplier(_ multiplier: LayoutMultiplier) -> EdgeAnchorsConfiguration {
        return EdgeAnchorsConfiguration(.multiplier(multiplier))
    }
    public static func priority(_ priority: LayoutPriority) -> EdgeAnchorsConfiguration {
        return EdgeAnchorsConfiguration(.priority(priority))
    }
    
    public func set(constant: LayoutConstant) {
        all.forEach {$0.constant = constant}
    }

    public func set(multiplier: LayoutMultiplier) {
        all.forEach {$0.multiplier = multiplier}
    }

    public func set(priority: LayoutPriority) {
        all.forEach {$0.priority = priority}
    }
}
