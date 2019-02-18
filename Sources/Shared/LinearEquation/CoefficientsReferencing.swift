//
//  CoefficientsReferencing.swift
//  Layman
//
//  Created by Brian Strobach on 2/18/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

public protocol CoefficientsReferencing: class {
    associatedtype Coefficients: CoefficientMutating
    var coefficients: Coefficients { get set }
    func with(coefficients: Coefficients) -> Self
    func with(constant: LayoutConstant) -> Self
    func with(relativeConstant: RelativeLayoutConstant) -> Self
    func times(_ multiplier: LayoutConstant) -> Self
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
    public func with(relativeConstant: RelativeLayoutConstant) -> Self {
        coefficients.set(relativeConstant: relativeConstant)
        return self
    }

    @discardableResult
    public func times(_ multiplier: LayoutConstant) -> Self {
        return times(LayoutMultiplier(multiplier))
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
