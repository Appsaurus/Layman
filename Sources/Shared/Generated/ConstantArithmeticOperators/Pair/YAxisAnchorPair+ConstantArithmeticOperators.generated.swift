// Generated using Sourcery 0.15.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

//
//  YAxisAnchorPair+ConstantArithmeticOperators.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/4/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

@discardableResult
public func .+ (lhs: YAxisAnchorPair, rhs: LayoutConstant) -> YAxisAnchorPairExpression {
    return YAxisAnchorPairExpression(variable: lhs, coefficients: .constant(rhs))
}

@discardableResult
public func .- (lhs: YAxisAnchorPair, rhs: LayoutConstant) -> YAxisAnchorPairExpression {
    return YAxisAnchorPairExpression(variable: lhs, coefficients: .constant(-rhs))
}

@discardableResult
public func .* (lhs: YAxisAnchorPair, rhs: LayoutMultiplier) -> YAxisAnchorPairExpression {
    return YAxisAnchorPairExpression(variable: lhs, coefficients: .multiplier(rhs))
}

@discardableResult
public func .* (lhs: LayoutMultiplier, rhs: YAxisAnchorPair) -> YAxisAnchorPairExpression {
    return rhs.times(lhs)
}

@discardableResult
public func ./ (lhs: YAxisAnchorPair, rhs: LayoutDivisor) -> YAxisAnchorPairExpression {
    return lhs .* (1.0 / rhs)
}

// MARK: Expressions

@discardableResult
public func .+ (lhs: YAxisAnchorPairExpression, rhs: LayoutConstant) -> YAxisAnchorPairExpression {
    return lhs.with(constant: rhs)
}

@discardableResult
public func .- (lhs: YAxisAnchorPairExpression, rhs: LayoutConstant) -> YAxisAnchorPairExpression {
    return lhs.with(constant: -rhs)
}

@discardableResult
public func .* (lhs: YAxisAnchorPairExpression, rhs: LayoutMultiplier) -> YAxisAnchorPairExpression {
    return lhs.with(multiplier: rhs)
}

@discardableResult
public func .* (lhs: LayoutMultiplier, rhs: YAxisAnchorPairExpression ) -> YAxisAnchorPairExpression {
    return rhs.with(multiplier: lhs)
}

@discardableResult
public func ./ (lhs: YAxisAnchorPairExpression, rhs: LayoutDivisor) -> YAxisAnchorPairExpression {
    return lhs.with(multiplier: (1.0 / rhs))
}
