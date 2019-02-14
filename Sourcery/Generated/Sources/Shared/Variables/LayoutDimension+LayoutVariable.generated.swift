// Generated using Sourcery 0.15.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

//
//  LayoutDimension+LayoutVariable.swift
//  Layman
//
//  Created by Brian Strobach on 1/4/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

extension LayoutDimension: LayoutVariable {

    public typealias RightHandExpression = LayoutDimensionExpression

    public func plus(_ constant: LayoutConstant) -> LayoutDimensionExpression {
        return LayoutDimensionExpression(variable: self).with(constant: constant)
    }

    public func times(_ multiplier: LayoutMultiplier) -> LayoutDimensionExpression {
        return LayoutDimensionExpression(variable: self).times(multiplier)
    }

    public func priority(_ priority: LayoutPriority) -> LayoutDimensionExpression {
        return LayoutDimensionExpression(variable: self).priority(priority)
    }

    public func plus(_ relativeConstant: RelativeLayoutConstant) -> LayoutDimensionExpression {
        return LayoutDimensionExpression(variable: self).plus(relativeConstant)
    }
}
