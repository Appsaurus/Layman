// Generated using Sourcery 0.15.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

//
//  XYAxesAnchorPair+ConstantArithmeticOperators.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/4/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

@discardableResult
public func .+ (lhs: XYAxesAnchorPair, rhs: LayoutConstant) -> XYAxesAnchorPairExpression {
    return XYAxesAnchorPairExpression(variable: lhs, coefficients: .constant(rhs))
}

@discardableResult
public func .- (lhs: XYAxesAnchorPair, rhs: LayoutConstant) -> XYAxesAnchorPairExpression {
    return XYAxesAnchorPairExpression(variable: lhs, coefficients: .constant(-rhs))
}

@discardableResult
public func .* (lhs: XYAxesAnchorPair, rhs: LayoutMultiplier) -> XYAxesAnchorPairExpression {
    return XYAxesAnchorPairExpression(variable: lhs, coefficients: .multiplier(rhs))
}

@discardableResult
public func .* (lhs: LayoutMultiplier, rhs: XYAxesAnchorPair) -> XYAxesAnchorPairExpression {
    return rhs.times(lhs)
}

@discardableResult
public func ./ (lhs: XYAxesAnchorPair, rhs: LayoutDivisor) -> XYAxesAnchorPairExpression {
    return lhs .* (1.0 / rhs)
}

// MARK: Expressions

@discardableResult
public func .+ (lhs: XYAxesAnchorPairExpression, rhs: LayoutConstant) -> XYAxesAnchorPairExpression {
    return lhs.with(constant: rhs)
}

@discardableResult
public func .- (lhs: XYAxesAnchorPairExpression, rhs: LayoutConstant) -> XYAxesAnchorPairExpression {
    return lhs.with(constant: -rhs)
}

@discardableResult
public func .* (lhs: XYAxesAnchorPairExpression, rhs: LayoutMultiplier) -> XYAxesAnchorPairExpression {
    return lhs.with(multiplier: rhs)
}

@discardableResult
public func .* (lhs: LayoutMultiplier, rhs: XYAxesAnchorPairExpression ) -> XYAxesAnchorPairExpression {
    return rhs.with(multiplier: lhs)
}

@discardableResult
public func ./ (lhs: XYAxesAnchorPairExpression, rhs: LayoutDivisor) -> XYAxesAnchorPairExpression {
    return lhs.with(multiplier: (1.0 / rhs))
}
