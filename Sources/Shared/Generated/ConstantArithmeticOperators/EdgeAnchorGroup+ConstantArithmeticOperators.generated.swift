// Generated using Sourcery 0.15.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

//
//  EdgeAnchorGroupConstantArithmeticOperators.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/4/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

@discardableResult
public func + (lhs: EdgeAnchorGroup, rhs: LayoutConstant) -> EdgeAnchorGroupExpression {
    return lhs.plus(rhs)
}

@discardableResult
public func - (lhs: EdgeAnchorGroup, rhs: LayoutConstant) -> EdgeAnchorGroupExpression {
    return lhs.minus(rhs)
}

@discardableResult
public func * (lhs: EdgeAnchorGroup, rhs: LayoutMultiplier) -> EdgeAnchorGroupExpression {
    return lhs.times(rhs)
}

@discardableResult
public func / (lhs: EdgeAnchorGroup, rhs: LayoutDivisor) -> EdgeAnchorGroupExpression {
    return lhs.divided(by: rhs)
}

@discardableResult
public func / (lhs: EdgeAnchorGroupExpression, rhs: LayoutDivisor) -> EdgeAnchorGroupExpression {
    return lhs.with(multiplier: (1.0 / rhs))
}
