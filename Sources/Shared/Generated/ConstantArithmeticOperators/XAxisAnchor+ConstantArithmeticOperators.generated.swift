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
public func .+ (lhs: XAxisAnchor, rhs: LayoutConstant) -> XAxisAnchorExpression {
    return lhs.plus(rhs)
}

@discardableResult
public func .- (lhs: XAxisAnchor, rhs: LayoutConstant) -> XAxisAnchorExpression {
    return lhs.minus(rhs)
}

@discardableResult
public func .* (lhs: XAxisAnchor, rhs: LayoutMultiplier) -> XAxisAnchorExpression {
    return lhs.times(rhs)
}

@discardableResult
public func .* (lhs: LayoutMultiplier, rhs: XAxisAnchor ) -> XAxisAnchorExpression {
    return rhs.times(lhs)
}

@discardableResult
public func ./ (lhs: XAxisAnchor, rhs: LayoutDivisor) -> XAxisAnchorExpression {
    return lhs.divided(by: rhs)
}

// MARK: Expressions

@discardableResult
public func .+ (lhs: XAxisAnchorExpression, rhs: LayoutConstant) -> XAxisAnchorExpression {
    return lhs.with(constant: rhs)
}

@discardableResult
public func .- (lhs: XAxisAnchorExpression, rhs: LayoutConstant) -> XAxisAnchorExpression {
    return lhs.with(constant: -rhs)
}

@discardableResult
public func .* (lhs: XAxisAnchorExpression, rhs: LayoutMultiplier) -> XAxisAnchorExpression {
    return lhs.with(multiplier: rhs)
}

@discardableResult
public func .* (lhs: LayoutMultiplier, rhs: XAxisAnchorExpression ) -> XAxisAnchorExpression {
    return rhs.with(multiplier: lhs)
}

@discardableResult
public func ./ (lhs: XAxisAnchorExpression, rhs: LayoutDivisor) -> XAxisAnchorExpression {
    return lhs.with(multiplier: 1.0 / rhs)
}
