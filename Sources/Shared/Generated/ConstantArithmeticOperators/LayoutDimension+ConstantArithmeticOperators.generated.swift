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
    return LayoutExpression(anchor: lhs, configuration: LayoutConfiguration(constant: rhs))
}

@discardableResult
public func - (lhs: LayoutDimension, rhs: LayoutConstant) -> LayoutDimensionExpression {
    return LayoutExpression(anchor: lhs, configuration: LayoutConfiguration(constant: -rhs))
}

@discardableResult
public func * (lhs: LayoutDimension, rhs: LayoutConstant) -> LayoutDimensionExpression {
    return LayoutExpression(anchor: lhs, configuration: LayoutConfiguration(multiplier: rhs))
}

@discardableResult
public func / (lhs: LayoutDimension, rhs: LayoutConstant) -> LayoutDimensionExpression {
    return lhs * (1.0 / rhs)
}

@discardableResult
public func / (lhs: LayoutDimensionExpression, rhs: LayoutConstant) -> LayoutDimensionExpression {
    return lhs.with(multiplier: (1.0 / rhs))
}
