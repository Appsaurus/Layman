// Generated using Sourcery 0.15.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

//
//  YAxisAnchor+LayoutVariable.swift
//  Layman
//
//  Created by Brian Strobach on 1/4/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

extension YAxisAnchor: LayoutVariable {

    public typealias RightHandExpression = YAxisAnchorExpression

    public func plus(_ constant: LayoutConstant) -> YAxisAnchorExpression {
        return YAxisAnchorExpression(variable: self).with(constant: constant)
    }

    public func times(_ multiplier: LayoutMultiplier) -> YAxisAnchorExpression {
        return YAxisAnchorExpression(variable: self).times(multiplier)
    }

    public func priority(_ priority: LayoutPriority) -> YAxisAnchorExpression {
        return YAxisAnchorExpression(variable: self).priority(priority)
    }

    public func plus(_ relativeConstant: RelativeLayoutConstant) -> YAxisAnchorExpression {
        return YAxisAnchorExpression(variable: self).plus(relativeConstant)
    }
}
