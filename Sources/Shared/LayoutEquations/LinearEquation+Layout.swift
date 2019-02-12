//
//  LayoutLinearEquation.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/23/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

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

extension LinearEquation where Relation == Constraint.Relation {
    public init(variable: Variable, coefficients: Coefficients) {
        self.init(variable, .equal, nil, coefficients)
    }
}

extension Expression where Coefficients: CoefficientModel, Coefficients.Priority == LayoutPriority {
    public func set(priority: LayoutPriority) {
        self.coefficients.priority = priority
    }
}

extension CoefficientModel where Multiplier == LayoutMultiplier {
    @discardableResult
    public func divided(by divisor: LayoutDivisor) -> Self {
        set(divisor: divisor)
        return self
    }

    public func set(divisor: LayoutDivisor) {
        set(multiplier: LayoutMultiplier(multiplier?.value ?? 1.0 / divisor))
    }
}

extension CoefficientMutating where Multiplier == LayoutMultiplier {
    public static func multiplier(_ multiplier: LayoutConstant) -> Self {
        return .multiplier(LayoutMultiplier(multiplier))
    }

//    public func divided(by divisor: LayoutDivisor) -> Self {
//        return times((1.0 / divisor))
//    }

//    public func times(_ multiplier: LayoutConstant) -> Self {
//        return times(LayoutMultiplier(multiplier))
//    }
}

extension CoefficientsReferencing where Coefficients.Multiplier == LayoutMultiplier {
    @discardableResult
    public func times(_ multiplier: LayoutMultiplier) -> Self {
        coefficients.set(multiplier: multiplier)
        return self
    }

    @discardableResult
    public func times(_ multiplier: LayoutConstant) -> Self {
        return times(LayoutMultiplier(multiplier))
    }
}

extension CoefficientsReferencing where Coefficients: CoefficientModel, Coefficients.Multiplier == LayoutMultiplier {
    @discardableResult
    public func divided(by divisor: LayoutDivisor) -> Self {
        coefficients.set(divisor: divisor)
        return self
    }
}

//
//extension LayoutCoefficient {
//    public func set(priority: LayoutPriority) {
//        self.priority = priority
//    }
//
//    public func priority(_ priority: LayoutPriority) -> Self {
//        set(priority: priority)
//        return self
//    }
//}
