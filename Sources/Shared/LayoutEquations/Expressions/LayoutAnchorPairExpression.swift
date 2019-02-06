//
//  LayoutAnchorPairExpression.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/10/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

public final class LayoutAnchorPairExpression<F: AnchorVariable, S: AnchorVariable> {

    public var variable: LayoutAnchorPair<F, S>
    public var coefficients: LayoutCoefficientPair

    public init(variable: LayoutAnchorPair<F, S>, coefficients: LayoutCoefficientPair = .default) {
        self.variable = variable
        self.coefficients = coefficients
    }

//    public init(anchor: LayoutAnchorPair<F, S>, coefficients: LayoutCoefficient) {
//        self.anchor = anchor
//        self.coefficients = LayoutCoefficientPair(coefficients, coefficients)
//    }

    @discardableResult
    public func with(coefficients: LayoutCoefficient) -> Self {
        self.coefficients = LayoutCoefficientPair(coefficients, coefficients)
        return self
    }

}

extension LayoutAnchorPairExpression: Expression {
    public typealias Coefficients = LayoutCoefficientPair
    public typealias Variable = LayoutAnchorPair<F, S>

    @discardableResult
    public func with(coefficients: LayoutCoefficientPair) -> Self {
        self.coefficients = coefficients
        return self
    }

    @discardableResult
    public func with(constant: LayoutConstant) -> Self {
        coefficients.set(constant: constant)
        return self
    }

    @discardableResult
    public func times(_ multiplier: LayoutMultiplier) -> Self {
        coefficients.set(multiplier: multiplier)
        return self
    }

    @discardableResult
    public func times(_ multiplier: LayoutConstant) -> Self {
        return times(LayoutMultiplier(multiplier))
    }

    @discardableResult
    public func divided(by divisor: LayoutDivisor) -> Self {
        coefficients.set(divisor: divisor)
        return self
    }
}
