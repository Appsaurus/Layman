//
//  LayoutAnchorExpression.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/10/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

public final class LayoutAnchorExpression<A: AnchorType> {

    public var variable: LayoutAnchor<A>
    public var coefficients: LayoutCoefficient

    public init(variable: LayoutAnchor<A>, coefficients: LayoutCoefficient = .default) {
        self.variable = variable
        self.coefficients = coefficients
    }

    @discardableResult
    public func with(active: Bool) -> Self {
        coefficients.active = active
        return self
    }

}

extension LayoutAnchorExpression: Expression, CoefficientsReferencing where A: LayoutVariable {
    public typealias Coefficients = LayoutCoefficient
    public typealias Variable = LayoutAnchor<A>

    @discardableResult
    public func with(coefficients: LayoutCoefficient) -> Self {
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
