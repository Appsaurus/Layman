// Generated using Sourcery 0.15.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

//
//  ViewConstantArithmeticOperators.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/4/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

@discardableResult
public func .+ (lhs: View, rhs: LayoutConstant) -> LayoutDimensionPairExpression {
    return lhs.plus(rhs)
}

@discardableResult
public func .- (lhs: View, rhs: LayoutConstant) -> LayoutDimensionPairExpression {
    return lhs.minus(rhs)
}

@discardableResult
public func .* (lhs: View, rhs: LayoutConstant) -> LayoutDimensionPairExpression {
    return lhs.times(rhs)
}

@discardableResult
public func .* (lhs: LayoutConstant, rhs: View) -> LayoutDimensionPairExpression {
    return rhs.times(lhs)
}

@discardableResult
public func .* (lhs: View, rhs: LayoutMultiplier) -> LayoutDimensionPairExpression {
    return lhs.times(rhs)
}

@discardableResult
public func .* (lhs: LayoutMultiplier, rhs: View) -> LayoutDimensionPairExpression {
    return rhs.times(lhs)
}

@discardableResult
public func ./ (lhs: View, rhs: LayoutDivisor) -> LayoutDimensionPairExpression {
    return lhs.divided(by: rhs)
}
