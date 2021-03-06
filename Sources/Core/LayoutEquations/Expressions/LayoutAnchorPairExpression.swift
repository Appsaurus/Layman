//
//  LayoutAnchorPairExpression.swift
//  Layman
//
//  Created by Brian Strobach on 1/10/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

public final class LayoutAnchorPairExpression<F: AnchorVariable, S: AnchorVariable> {

    public var variable: LayoutAnchorPair<F, S>
    public var coefficients: LayoutCoefficientPair

    public convenience init(variable: LayoutAnchorPair<F, S>) {
        self.init(variable: variable, coefficients: .default)
    }

    public init(variable: LayoutAnchorPair<F, S>, coefficients: LayoutCoefficientPair) {
        self.variable = variable
        self.coefficients = coefficients        
    }
}

extension LayoutAnchorPairExpression: Expression {

    public typealias Coefficients = LayoutCoefficientPair
    public typealias Variable = LayoutAnchorPair<F, S>

    @discardableResult
    public func divided(by divisor: LayoutDivisor) -> Self {
        coefficients.set(divisor: divisor)
        return self
    }

    @discardableResult
    public func plus(_ constant: LayoutConstantTuple) -> Self {
        coefficients.first.set(constant: constant.first)
        coefficients.second.set(constant: constant.second)
        return self
    }
    
    @discardableResult
    public func plus(_ relativeLayoutConstantTuple: RelativeLayoutConstantTuple) -> Self {
        coefficients.first.set(relativeConstant: relativeLayoutConstantTuple.first)
        coefficients.second.set(relativeConstant: relativeLayoutConstantTuple.second)
        return self
    }

    @discardableResult
    public func inset(_ tuple: LayoutConstantTuple) -> Self {
        return plus(.inset(tuple.first, tuple.second))
    }

    @discardableResult
    public func outset(_ tuple: LayoutConstantTuple) -> Self {
        return plus(.outset(tuple.first, tuple.second))

    }
}
