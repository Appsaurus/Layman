//
//  LayoutConfiguration.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/3/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

public final class LayoutConfiguration {

    public var constant: LayoutConstant = 0.0
    public var multiplier: LayoutMultiplier = 1.0
    public var priority: LayoutPriority = .required
    public var active: Bool = true

    public init() {}

}

extension LayoutConfiguration {
    public static var `default`: LayoutConfiguration {
        return .init()
    }

    public func with(active: Bool) -> LayoutConfiguration {
        self.active = active
        return self
    }
}

extension LayoutConfiguration: CoefficientMutating & Coeficient {

    public func set(constant: LayoutConstant) {
        self.constant = constant
    }

    public func set(multiplier: LayoutMultiplier) {
        self.multiplier = multiplier
    }

    public func set(priority: LayoutPriority) {
        self.priority = priority
    }
}
