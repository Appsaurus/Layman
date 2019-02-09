// Generated using Sourcery 0.15.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

//
//  XAxisAnchor+LayoutVariable.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/4/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

extension XAxisAnchor: LayoutVariable {

    public typealias RightHandExpression = XAxisAnchorExpression

    public func plus(_ constant: LayoutConstant) -> XAxisAnchorExpression {
        return XAxisAnchorExpression(variable: self).with(constant: constant)
    }

    public func times(_ multiplier: LayoutMultiplier) -> XAxisAnchorExpression {
        return XAxisAnchorExpression(variable: self).times(multiplier)
    }

    public func priority(_ priority: LayoutPriority) -> XAxisAnchorExpression {
        return XAxisAnchorExpression(variable: self).priority(priority)
    }
}
