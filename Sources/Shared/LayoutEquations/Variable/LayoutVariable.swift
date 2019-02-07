//
//  LayoutVariable.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/21/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

public protocol LayoutVariable: Variable
where Multiplier == LayoutMultiplier, Constant == LayoutConstant, Divisor == LayoutDivisor {}

extension LayoutVariable {
    public func minus(_ constant: LayoutConstant) -> RightHandExpression {
        return plus(-constant)
    }

    public func times(_ multiplier: LayoutConstant) -> RightHandExpression {
        return times(LayoutMultiplier(multiplier))
    }

    public func divided(by divisor: LayoutDivisor) -> RightHandExpression {
        return times(1.0 / divisor)
    }
}
