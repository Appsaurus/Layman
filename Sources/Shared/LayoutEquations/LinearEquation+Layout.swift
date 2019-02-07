//
//  LayoutLinearEquation.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/23/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

extension CoefficientReferencing where Multiplier == LayoutMultiplier {
    public static func multiplier(_ multiplier: LayoutConstant) -> Self {
        return Self().times(LayoutMultiplier(multiplier))
    }
}
extension CoefficientMutating where Multiplier == LayoutMultiplier {
    public func divided(by divisor: LayoutDivisor) -> Self {
        return times((1.0 / divisor))
    }

    public func times(_ multiplier: LayoutConstant) -> Self {
        return times(LayoutMultiplier(multiplier))
    }
}

extension LayoutSizeEquatable {
    public typealias LayoutSize = UILayoutKit.LayoutSize
    public typealias LayoutCoefficientPair = UILayoutKit.LayoutCoefficientPair
    public typealias LayoutConstant = UILayoutKit.LayoutConstant
}

extension LeftHandLayoutExpression where LayoutVariable == Self {
    public func relation(_ relation: Relation, _ rhs: Self) -> LinearEquation {
        return LinearEquation(self, relation, rhs)
    }

    public func relation(_ relation: Relation, _ rhs: RightHandExpression) -> LinearEquation {
        return LinearEquation(self, relation, rhs)
    }
}
