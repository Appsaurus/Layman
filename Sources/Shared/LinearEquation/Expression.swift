//
//  Expression.swift
//  Layman
//
//  Created by Brian Strobach on 2/7/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

public protocol CoefficientsReferencing: class {
    associatedtype Coefficients: CoefficientMutating
    var coefficients: Coefficients { get set }
    func with(coefficients: Coefficients) -> Self
    func with(constant: LayoutConstant) -> Self
    func times(_ multiplier: LayoutMultiplier) -> Self
    func priority(_ priority: LayoutPriority) -> Self
}

extension CoefficientsReferencing {
    @discardableResult
    public func with(coefficients: Coefficients) -> Self {
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
    public func priority(_ priority: LayoutPriority) -> Self {
        coefficients.set(priority: priority)
        return self
    }
}

public protocol Expression: CoefficientsReferencing {

    associatedtype Variable
    var variable: Variable { get set }
}
