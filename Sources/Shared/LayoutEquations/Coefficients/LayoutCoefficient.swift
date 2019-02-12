//
//  LayoutCoefficient.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/3/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

public final class LayoutCoefficient {

    public var constant: LayoutConstant = 0.0
    public var multiplier: LayoutMultiplier?
    public var priority: LayoutPriority = .required
    public var active: Bool = true

    public init() {}
}

extension LayoutCoefficient {

    public func with(active: Bool) -> LayoutCoefficient {
        self.active = active
        return self
    }
}

extension LayoutCoefficient: CoefficientModel {

    public func set(constant: LayoutConstant) {
        self.constant = constant
    }

    public func set(multiplier: LayoutMultiplier) {
        self.multiplier = multiplier
        constant *= multiplier.value
    }

    public func set(priority: LayoutPriority) {
        self.priority = priority
    }
}

extension LayoutCoefficient {
    public func set(divisor: LayoutDivisor) {
        let dividend = multiplier?.value ?? 1.0
        set(multiplier: LayoutMultiplier(dividend / divisor))
    }
}
