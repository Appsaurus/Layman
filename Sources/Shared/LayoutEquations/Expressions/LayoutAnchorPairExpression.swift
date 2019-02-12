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
}

extension LayoutAnchorPairExpression: Expression {
    public typealias Coefficients = LayoutCoefficientPair
    public typealias Variable = LayoutAnchorPair<F, S>

    @discardableResult
    public func divided(by divisor: LayoutDivisor) -> Self {
        coefficients.set(divisor: divisor)
        return self
    }
}
