//
//  LayoutVariable.swift
//  Layman
//
//  Created by Brian Strobach on 1/21/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

public protocol LayoutVariable {
    associatedtype RightHandExpression
    func plus(_ constant: LayoutConstant) -> RightHandExpression
    func plus(_ relativeConstant: RelativeLayoutConstant) -> RightHandExpression
    func minus(_ constant: LayoutConstant) -> RightHandExpression
    func times(_ multiplier: LayoutConstant) -> RightHandExpression
    func times(_ multiplier: LayoutMultiplier) -> RightHandExpression
    func divided(by divisor: LayoutDivisor) -> RightHandExpression
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

    public func outset(_ constant: LayoutConstant) -> RightHandExpression {
        return plus(RelativeLayoutConstant(relativity: .outset, constant: constant))
    }

}

extension LayoutVariable where RightHandExpression: Expression, RightHandExpression.Variable == Self {

    public func plus(_ relativeConstant: RelativeLayoutConstant) -> RightHandExpression {
        return RightHandExpression(variable: self).with(relativeConstant: relativeConstant)
    }

    public func plus(_ constant: LayoutConstant) -> RightHandExpression {
        return RightHandExpression(variable: self).with(constant: constant)
    }

    public func priority(_ priority: LayoutPriority) -> RightHandExpression {
        return RightHandExpression(variable: self).priority(priority)
    }
}

public protocol LayoutVariableTuple: LayoutVariable {
    func plus(_ constant: LayoutConstantTuple) -> RightHandExpression
    func plus(_ relativeConstantTuple: RelativeLayoutConstantTuple) -> RightHandExpression
}

extension LayoutVariableTuple where RightHandExpression: Expression, RightHandExpression.Variable == Self {

    public func inset(_ first: LayoutConstant,
                      _ second: LayoutConstant) -> RightHandExpression {
        return inset((first, second))
    }

    public func inset(_ constant: LayoutConstantTuple) -> RightHandExpression {
        return plus(.inset(constant.first, constant.second))
    }

    public func outset(_ first: LayoutConstant,
                       _ second: LayoutConstant) -> RightHandExpression {
        return outset((first, second))
    }

    public func outset(_ constant: LayoutConstantTuple) -> RightHandExpression {
        return plus(.outset(constant.first, constant.second))
    }
}

extension LayoutVariable where
    RightHandExpression: Expression,
    RightHandExpression.Variable == Self,
    RightHandExpression.Coefficients: LayoutConstantInitable {

    public func plus(_ constant: LayoutConstant) -> RightHandExpression {
        return RightHandExpression.init(variable: self).with(coefficients: .constant(constant))
    }

    public func plus(_ relativeConstantTuple: RelativeLayoutConstant) -> RightHandExpression {
        return RightHandExpression.init(variable: self).with(coefficients: .constant(relativeConstantTuple))
    }
}

extension LayoutVariable where
    RightHandExpression: Expression,
    RightHandExpression.Variable == Self,
    RightHandExpression.Coefficients: LayoutConstantTupleInitable {

    public func plus(_ constant: LayoutConstantTuple) -> RightHandExpression {
        return RightHandExpression.init(variable: self).with(coefficients: .constant(constant))
    }

    public func plus(_ relativeConstantTuple: RelativeLayoutConstantTuple) -> RightHandExpression {
        return RightHandExpression.init(variable: self).with(coefficients: .constant(relativeConstantTuple))
    }
}
