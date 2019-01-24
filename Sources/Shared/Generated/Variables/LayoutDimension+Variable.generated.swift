// Generated using Sourcery 0.15.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

//
//  LayoutDimension+Variable.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/4/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

extension LayoutDimension: Variable {

    public typealias RightHandExpression = LayoutDimensionExpression

    public func plus(_ constant: LayoutConstant) -> LayoutDimensionExpression {
        return LayoutDimensionExpression(variable: self, coefficients: .constant(constant))
    }

    public func times(_ multiplier: LayoutMultiplier) -> LayoutDimensionExpression {
        return LayoutDimensionExpression(variable: self, coefficients: .multiplier(multiplier))
    }
}
