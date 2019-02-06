//
//  LayoutPairConfiguration.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/22/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

public final class LayoutCoefficientPair: LayoutModelReferencePair<LayoutCoefficient> {
    public static var `default`: LayoutCoefficientPair { return .init(.default) }

    public static func size(_ size: LayoutSize) -> LayoutCoefficientPair {
        return LayoutCoefficientPair(.constant(size.width), .constant(size.height))
    }
}

extension LayoutCoefficientPair: CoefficientMutating {
    public static func constant(_ constant: LayoutConstant) -> LayoutCoefficientPair {
        return LayoutCoefficientPair(.constant(constant))
    }

    public static func multiplier(_ multiplier: LayoutMultiplier) -> LayoutCoefficientPair {
        return LayoutCoefficientPair(.multiplier(multiplier))
    }

    public static func multiplier(_ multiplier: LayoutConstant) -> LayoutCoefficientPair {
        return .multiplier(LayoutMultiplier(multiplier))
    }

    public static func priority(_ priority: LayoutPriority) -> LayoutCoefficientPair {
        return LayoutCoefficientPair(.priority(priority))
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
