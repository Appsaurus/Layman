// Generated using Sourcery 0.15.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

//
//  XAxisAnchor+Variable.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/4/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

extension XAxisAnchor: Variable {

    public typealias E = XAxisAnchorExpression

    public func plus(_ constant: LayoutConstant) -> XAxisAnchorExpression {
        return XAxisAnchorExpression(anchor: self, configuration: .constant(constant))
    }

    public func times(_ multiplier: LayoutMultiplier) -> XAxisAnchorExpression {
        return XAxisAnchorExpression(anchor: self, configuration: .multiplier(multiplier))
    }
}
