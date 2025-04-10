//
//  LayoutAnchorExpression.swift
//  Layman
//
//  Created by Brian Strobach on 1/10/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

import UIKit

public final class LayoutAnchorExpression<A: AnchorType> {

    public var variable: LayoutAnchor<A>
    public var coefficients: LayoutCoefficient

    public convenience init(variable: LayoutAnchor<A>) {
        self.init(variable: variable, coefficients: .default)
    }

    public init(variable: LayoutAnchor<A>, coefficients: LayoutCoefficient) {
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
    public func plus(_ relativeConstant: RelativeConstant) -> LayoutAnchorExpression {
        coefficients.set(relativeConstant: relativeConstant)
        return self
    }

}
