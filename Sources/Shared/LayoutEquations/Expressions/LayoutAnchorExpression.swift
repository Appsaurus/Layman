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
}
