// Generated using Sourcery 0.15.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

//
//  YAxisAnchor+LayoutVariable.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/4/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

extension YAxisAnchor: LayoutVariable {

    public typealias RightHandExpression = YAxisAnchorExpression

    public func plus(_ constant: LayoutConstant) -> YAxisAnchorExpression {
        return YAxisAnchorExpression(variable: self, coefficients: .constant(constant))
    }

    public func times(_ multiplier: LayoutMultiplier) -> YAxisAnchorExpression {
        return YAxisAnchorExpression(variable: self, coefficients: .multiplier(multiplier))
    }
}
