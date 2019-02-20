// Generated using Sourcery 0.15.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

//
//  XAxisAnchor+LayoutVariable.swift
//  Layman
//
//  Created by Brian Strobach on 1/4/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

extension XAxisAnchor: LayoutVariable {

    public typealias RightHandExpression = XAxisAnchorExpression


    public func plus(_ constant: LayoutConstant) -> RightHandExpression {
        return RightHandExpression(variable: self).with(constant: constant)
    }

    public func times(_ multiplier: LayoutMultiplier) -> RightHandExpression {
        return RightHandExpression(variable: self).times(multiplier)
    }

    public func priority(_ priority: LayoutPriority) -> RightHandExpression {
        return RightHandExpression(variable: self).priority(priority)
    }

    public func plus(_ relativeConstant: RelativeLayoutConstant) -> RightHandExpression {
        return RightHandExpression(variable: self).plus(relativeConstant)
    }
}
