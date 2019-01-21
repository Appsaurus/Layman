// Generated using Sourcery 0.15.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

//
//  LayoutDimensionConstantArithmeticOperators.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/4/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

@discardableResult
public func + (lhs: LayoutDimension, rhs: LayoutConstant) -> LayoutDimensionExpression {
    return lhs.plus(rhs)
}

@discardableResult
public func - (lhs: LayoutDimension, rhs: LayoutConstant) -> LayoutDimensionExpression {
    return lhs.minus(rhs)
}

@discardableResult
public func * (lhs: LayoutDimension, rhs: LayoutMultiplier) -> LayoutDimensionExpression {
    return lhs.times(rhs)
}

@discardableResult
public func / (lhs: LayoutDimension, rhs: LayoutDivisor) -> LayoutDimensionExpression {
    return lhs.divided(by: rhs)
}

@discardableResult
public func / (lhs: LayoutDimensionExpression, rhs: LayoutDivisor) -> LayoutDimensionExpression {
    return lhs.with(multiplier: (1.0 / rhs))
}
