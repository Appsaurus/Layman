//
//  Variable.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/21/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

public protocol Variable {
    associatedtype RightHandExpression
    func plus(_ constant: LayoutConstant) -> RightHandExpression
    func minus(_ constant: LayoutConstant) -> RightHandExpression
    func times(_ multiplier: LayoutMultiplier) -> RightHandExpression
    func divided(by divisor: LayoutDivisor) -> RightHandExpression
}

extension Variable {
    public func minus(_ constant: LayoutConstant) -> RightHandExpression {
        return plus(-constant)
    }

    public func times(_ multiplier: LayoutConstant) -> RightHandExpression {
        return times(LayoutMultiplier(multiplier))
    }
    public func divided(by divisor: LayoutDivisor) -> RightHandExpression {
        return times(LayoutMultiplier(1.0 / divisor))
    }
}
