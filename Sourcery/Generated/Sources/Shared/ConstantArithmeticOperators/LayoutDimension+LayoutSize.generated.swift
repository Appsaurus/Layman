// Generated using Sourcery 0.15.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

//
//  LayoutDimensionPair+SizeConstantArithmeticOperators.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/8/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

// MARK: Pair +/- LayoutSize Constant
@discardableResult
public func .+ (lhs: LayoutDimensionPair, rhs: LayoutSize) -> LayoutDimensionPairExpression {
    let coefficients = LayoutConfigurationPair(.constant(rhs.width), .constant(rhs.height))
    return LayoutDimensionPairExpression(variable: lhs, coefficients: coefficients)
}

@discardableResult
public func .- (lhs: LayoutDimensionPair, rhs: LayoutSize) -> LayoutDimensionPairExpression {
    return lhs .+ LayoutSize(width: -rhs.width, height: -rhs.height)
}

// MARK: Array +/- LayoutSize Constant
@discardableResult
public func .+ (lhs: LayoutDimensionPairs, rhs: LayoutSize) -> LayoutDimensionPairExpressions {
    return lhs.map { $0 .+ rhs }
}

@discardableResult
public func .- (lhs: LayoutDimensionPairs, rhs: LayoutSize) -> LayoutDimensionPairExpressions {
    return lhs.map { $0 .- rhs }
}
