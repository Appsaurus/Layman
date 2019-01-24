//
//  LayoutPairExpression.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/10/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

public final class LayoutPairExpression<F: AnchorVariable, S: AnchorVariable> {

    public var variable: LayoutAnchorPair<F, S>
    public var coefficients: LayoutConfigurationPair

    public init(variable: LayoutAnchorPair<F, S>, coefficients: LayoutConfigurationPair = .default) {
        self.variable = variable
        self.coefficients = coefficients
    }

//    public init(anchor: LayoutAnchorPair<F, S>, coefficients: LayoutConfiguration) {
//        self.anchor = anchor
//        self.coefficients = LayoutConfigurationPair(coefficients, coefficients)
//    }

    @discardableResult
    public func with(coefficients: LayoutConfiguration) -> Self {
        self.coefficients = LayoutConfigurationPair(coefficients, coefficients)
        return self
    }
}

extension LayoutPairExpression: Expression {
    public typealias C = LayoutConfigurationPair
    public typealias V = LayoutAnchorPair<F, S>

}
