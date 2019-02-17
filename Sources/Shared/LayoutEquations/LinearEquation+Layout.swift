//
//  LayoutLinearEquation.swift
//  Layman
//
//  Created by Brian Strobach on 1/23/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

extension LayoutSizeEquatable {
    public typealias LayoutSize = Layman.LayoutSize
    public typealias LayoutCoefficientPair = Layman.LayoutCoefficientPair
    public typealias LayoutConstant = Layman.LayoutConstant
}

extension LeftHandLayoutExpression where LayoutVariable == Self {
    public func relation(_ relation: LayoutRelation, _ rhs: Self) -> LinearEquation {
        return LinearEquation(self, relation, rhs)
    }

    public func relation(_ relation: LayoutRelation, _ rhs: RightHandExpression) -> LinearEquation {
        return LinearEquation(self, relation, rhs)
    }
}

extension LinearEquation {
    public init(variable: Variable, coefficients: Coefficients) {
        self.init(variable, .equal, nil, coefficients)
    }    
}

extension LinearEquation where Coefficients == LayoutCoefficient {
    public init(_ variable: Variable, _ relation: LayoutRelation, _ relativeConstant: RelativeLayoutConstant) {
        self.init(variable, relation, nil, Coefficients().with(relativeConstant: relativeConstant))
    }
}

extension Expression where Coefficients: CoefficientModel {
    public func set(priority: LayoutPriority) {
        self.coefficients.priority = priority
    }
}

extension CoefficientModel {
    @discardableResult
    public func divided(by divisor: LayoutDivisor) -> Self {
        set(divisor: divisor)
        return self
    }

    public func set(divisor: LayoutDivisor) {
        set(multiplier: LayoutMultiplier(multiplier?.value ?? 1.0 / divisor))
    }
}

extension CoefficientMutating {
    public static func multiplier(_ multiplier: LayoutConstant) -> Self {
        return .multiplier(LayoutMultiplier(multiplier))
    }

}

extension CoefficientsReferencing {
//    @discardableResult
//    public func times(_ multiplier: LayoutMultiplier) -> Self {
//        coefficients.set(multiplier: multiplier)
//        return self
//    }

    @discardableResult
    public func times(_ multiplier: LayoutConstant) -> Self {
        return times(LayoutMultiplier(multiplier))
    }
}

extension CoefficientsReferencing where Coefficients: CoefficientModel {
    @discardableResult
    public func divided(by divisor: LayoutDivisor) -> Self {
        coefficients.set(divisor: divisor)
        return self
    }
}

extension CoefficientsReferencing where Coefficients: LayoutCoefficient {
    public typealias RelativeConstant = Relative<LayoutConstant>

    @discardableResult
    public func with(constantRelativity: LayoutConstantRelativity) -> Self {
        coefficients.constantRelativity = constantRelativity
        return self
    }

    public func plus(_ relativeConstant: RelativeConstant) -> Self {
        coefficients.set(relativeConstant: relativeConstant)
        return self
    }

    @discardableResult
    public func inset(_ constant: LayoutConstant) -> Self {
        coefficients.set(relativeConstant: .inset(constant))
        return self
    }

    @discardableResult
    public func outset(_ constant: LayoutConstant) -> Self {
        coefficients.set(relativeConstant: .outset(constant))
        return self
    }
}
