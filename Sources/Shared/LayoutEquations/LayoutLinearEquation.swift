//
//  LayoutLinearEquation.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/23/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

extension CoefficientMutating where Multiplier == LayoutMultiplier {
    public func with(divisor: LayoutDivisor) -> Self {
        return with(multiplier: (1.0 / divisor))
    }
}

extension LayoutRelationship: LinearEquatable {
    public typealias Solution = Constraint

    public var solution: Constraint {
        return constraint
    }
}
