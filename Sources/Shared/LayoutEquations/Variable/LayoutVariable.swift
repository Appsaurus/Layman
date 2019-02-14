//
//  LayoutVariable.swift
//  Layman
//
//  Created by Brian Strobach on 1/21/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

public protocol LayoutVariable: Variable
where Multiplier == LayoutMultiplier,
Constant == LayoutConstant,
Divisor == LayoutDivisor {
    func plus(_ relativeConstant: RelativeLayoutConstant) -> RightHandExpression
}

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

    public func inset(_ constant: LayoutConstant) -> RightHandExpression {
        return plus(RelativeLayoutConstant(relativity: .inset, constant: constant))
    }

    @discardableResult
    public func outset(_ constant: LayoutConstant) -> RightHandExpression {
        return plus(RelativeLayoutConstant(relativity: .outset, constant: constant))
    }

}

//public protocol ExpressionInitable {
//    public init(variable: LayoutAnchor<A>, coefficients: LayoutCoefficient = .default)
//}
