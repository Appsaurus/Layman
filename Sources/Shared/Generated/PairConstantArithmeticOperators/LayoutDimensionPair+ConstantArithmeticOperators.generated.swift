// Generated using Sourcery 0.15.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

//
//  LayoutDimensionPair+ConstantArithmeticOperators.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/4/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

@discardableResult
public func + (lhs: LayoutDimensionPair, rhs: LayoutConstant) -> LayoutDimensionPairExpression {
    return LayoutDimensionPairExpression(anchor: lhs, coefficients: .constant(rhs))
}

@discardableResult
public func - (lhs: LayoutDimensionPair, rhs: LayoutConstant) -> LayoutDimensionPairExpression {
    return LayoutDimensionPairExpression(anchor: lhs, coefficients: .constant(-rhs))
}

@discardableResult
public func * (lhs: LayoutDimensionPair, rhs: LayoutDivisor) -> LayoutDimensionPairExpression {
    return LayoutDimensionPairExpression(anchor: lhs, coefficients: .multiplier(rhs))
}

@discardableResult
public func / (lhs: LayoutDimensionPair, rhs: LayoutDivisor) -> LayoutDimensionPairExpression {
    return lhs * (1.0 / rhs)
}

@discardableResult
public func / (lhs: LayoutDimensionPairExpression, rhs: LayoutDivisor) -> LayoutDimensionPairExpression {
    return lhs.with(multiplier: (1.0 / rhs))
}
