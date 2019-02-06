// Generated using Sourcery 0.15.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

//
//  EdgeAnchorGroup+LayoutVariable.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/4/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

extension EdgeAnchorGroup: LayoutVariable {

    public typealias RightHandExpression = EdgeAnchorGroupExpression

    public func plus(_ constant: LayoutConstant) -> EdgeAnchorGroupExpression {
        return EdgeAnchorGroupExpression(variable: self, coefficients: .constant(constant))
    }

    public func times(_ multiplier: LayoutMultiplier) -> EdgeAnchorGroupExpression {
        return EdgeAnchorGroupExpression(variable: self, coefficients: .multiplier(multiplier))
    }
}
