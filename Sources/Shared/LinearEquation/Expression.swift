//
//  Expression.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 2/7/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

public protocol CoefficientsReferencing: class {
    associatedtype Coefficients: CoefficientMutating
    var coefficients: Coefficients { get set }
    func with(coefficients: Coefficients) -> Self
    func with(constant: Coefficients.Constant) -> Self
    func times(_ multiplier: Coefficients.Multiplier) -> Self
    func priority(_ priority: Coefficients.Priority) -> Self
}

extension CoefficientsReferencing {
    @discardableResult
    public func with(coefficients: Coefficients) -> Self {
        self.coefficients = coefficients
        return self
    }

    @discardableResult
    public func with(constant: Coefficients.Constant) -> Self {
        coefficients.set(constant: constant)
        return self
    }

    @discardableResult
    public func times(_ multiplier: Coefficients.Multiplier) -> Self {
        coefficients.set(multiplier: multiplier)
        return self
    }

    @discardableResult
    public func priority(_ priority: Coefficients.Priority) -> Self {
        coefficients.set(priority: priority)
        return self
    }
}

public protocol Expression: CoefficientsReferencing {

    associatedtype Variable
    var variable: Variable { get set }
}
