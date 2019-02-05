//
//  LayoutExpression.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/10/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

public final class LayoutExpression<A: AnchorType> {

    public var variable: LayoutAnchor<A>
    public var coefficients: LayoutConfiguration

    public init(variable: LayoutAnchor<A>, coefficients: LayoutConfiguration = .default) {
        self.variable = variable
        self.coefficients = coefficients
    }

//    @discardableResult
//    public func with(priority: LayoutPriority) -> Self {
//        coefficients.priority = priority
//        return self
//    }

    @discardableResult
    public func with(active: Bool) -> Self {
        coefficients.active = active
        return self
    }

}

extension LayoutExpression: Expression where A: Variable {
    public typealias C = LayoutConfiguration
    public typealias V = LayoutAnchor<A>

    @discardableResult
    public func with(coefficients: LayoutConfiguration) -> Self {
        self.coefficients = coefficients
        return self
    }

    @discardableResult
    public func with(constant: LayoutConstant) -> Self {
        coefficients.set(constant: constant)
        return self
    }

    @discardableResult
    public func with(multiplier: LayoutMultiplier) -> Self {
        coefficients.set(multiplier: multiplier)
        return self
    }

    @discardableResult
    public func with(multiplier: LayoutConstant) -> Self {
        return with(multiplier: LayoutMultiplier(multiplier))
    }

    @discardableResult
    public func with(divisor: LayoutDivisor) -> Self {
        coefficients.set(divisor: divisor)
        return self
    }
}
