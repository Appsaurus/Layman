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
public func .+ (lhs: EdgeAnchorGroup, rhs: LayoutConstant) -> EdgeAnchorGroupExpression {
    return lhs.plus(rhs)
}

@discardableResult
public func .- (lhs: EdgeAnchorGroup, rhs: LayoutConstant) -> EdgeAnchorGroupExpression {
    return lhs.minus(rhs)
}

@discardableResult
public func .* (lhs: EdgeAnchorGroup, rhs: LayoutConstant) -> EdgeAnchorGroupExpression {
    return lhs.times(rhs)
}

@discardableResult
public func .* (lhs: LayoutConstant, rhs: EdgeAnchorGroup ) -> EdgeAnchorGroupExpression {
    return rhs.times(lhs)
}

@discardableResult
public func .* (lhs: EdgeAnchorGroup, rhs: LayoutMultiplier) -> EdgeAnchorGroupExpression {
    return lhs.times(rhs)
}

@discardableResult
public func .* (lhs: LayoutMultiplier, rhs: EdgeAnchorGroup ) -> EdgeAnchorGroupExpression {
    return rhs.times(lhs)
}

@discardableResult
public func ./ (lhs: EdgeAnchorGroup, rhs: LayoutDivisor) -> EdgeAnchorGroupExpression {
    return lhs.divided(by: rhs)
}

// MARK: Expressions

@discardableResult
public func .+ (lhs: EdgeAnchorGroupExpression, rhs: LayoutConstant) -> EdgeAnchorGroupExpression {
    return lhs.with(constant: rhs)
}

@discardableResult
public func .- (lhs: EdgeAnchorGroupExpression, rhs: LayoutConstant) -> EdgeAnchorGroupExpression {
    return lhs.with(constant: -rhs)
}

@discardableResult
public func .* (lhs: EdgeAnchorGroupExpression, rhs: LayoutConstant) -> EdgeAnchorGroupExpression {
    return lhs.times(rhs)
}

@discardableResult
public func .* (lhs: LayoutConstant, rhs: EdgeAnchorGroupExpression ) -> EdgeAnchorGroupExpression {
    return rhs.times(lhs)
}

@discardableResult
public func .* (lhs: EdgeAnchorGroupExpression, rhs: LayoutMultiplier) -> EdgeAnchorGroupExpression {
    return lhs.times(rhs)
}

@discardableResult
public func .* (lhs: LayoutMultiplier, rhs: EdgeAnchorGroupExpression ) -> EdgeAnchorGroupExpression {
    return rhs.times(lhs)
}

@discardableResult
public func ./ (lhs: EdgeAnchorGroupExpression, rhs: LayoutDivisor) -> EdgeAnchorGroupExpression {
    return lhs.divided(by: rhs)
}
