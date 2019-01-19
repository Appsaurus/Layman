// Generated using Sourcery 0.15.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

//
//  YAxisAnchorConstantArithmeticOperators.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/4/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

@discardableResult
public func + (lhs: YAxisAnchor, rhs: LayoutConstant) -> YAxisAnchorExpression {
    return LayoutExpression(anchor: lhs, configuration: LayoutConfiguration(constant: rhs))
}

@discardableResult
public func - (lhs: YAxisAnchor, rhs: LayoutConstant) -> YAxisAnchorExpression {
    return LayoutExpression(anchor: lhs, configuration: LayoutConfiguration(constant: -rhs))
}

@discardableResult
public func * (lhs: YAxisAnchor, rhs: LayoutMultiplier) -> YAxisAnchorExpression {
    return LayoutExpression(anchor: lhs, configuration: LayoutConfiguration(multiplier: rhs))
}

@discardableResult
public func / (lhs: YAxisAnchor, rhs: LayoutDivisor) -> YAxisAnchorExpression {
    return lhs * (1.0 / rhs)
}

@discardableResult
public func / (lhs: YAxisAnchorExpression, rhs: LayoutDivisor) -> YAxisAnchorExpression {
    return lhs.with(multiplier: (1.0 / rhs))
}
