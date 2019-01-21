// Generated using Sourcery 0.15.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

//
//  XAxisAnchorConstantArithmeticOperators.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/4/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

@discardableResult
public func + (lhs: XAxisAnchor, rhs: LayoutConstant) -> XAxisAnchorExpression {
    return lhs.plus(rhs)
}

@discardableResult
public func - (lhs: XAxisAnchor, rhs: LayoutConstant) -> XAxisAnchorExpression {
    return lhs.minus(rhs)
}

@discardableResult
public func * (lhs: XAxisAnchor, rhs: LayoutMultiplier) -> XAxisAnchorExpression {
    return lhs.times(rhs)
}

@discardableResult
public func / (lhs: XAxisAnchor, rhs: LayoutDivisor) -> XAxisAnchorExpression {
    return lhs.divided(by: rhs)
}

@discardableResult
public func / (lhs: XAxisAnchorExpression, rhs: LayoutDivisor) -> XAxisAnchorExpression {
    return lhs.with(multiplier: (1.0 / rhs))
}
