// Generated using Sourcery 0.15.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

//
//  XAxisAnchorPair+ConstantArithmeticOperators.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/4/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

@discardableResult
public func .+ (lhs: XAxisAnchorPair, rhs: LayoutConstant) -> XAxisAnchorPairExpression {
    return XAxisAnchorPairExpression(variable: lhs, coefficients: .constant(rhs))
}

@discardableResult
public func .- (lhs: XAxisAnchorPair, rhs: LayoutConstant) -> XAxisAnchorPairExpression {
    return XAxisAnchorPairExpression(variable: lhs, coefficients: .constant(-rhs))
}

@discardableResult
public func .* (lhs: XAxisAnchorPair, rhs: LayoutConstant) -> XAxisAnchorPairExpression {
    return XAxisAnchorPairExpression(variable: lhs, coefficients: .multiplier(rhs))
}

@discardableResult
public func .* (lhs: LayoutConstant, rhs: XAxisAnchorPair) -> XAxisAnchorPairExpression {
    return rhs.times(lhs)
}

@discardableResult
public func .* (lhs: XAxisAnchorPair, rhs: LayoutMultiplier) -> XAxisAnchorPairExpression {
    return XAxisAnchorPairExpression(variable: lhs, coefficients: .multiplier(rhs))
}

@discardableResult
public func .* (lhs: LayoutMultiplier, rhs: XAxisAnchorPair) -> XAxisAnchorPairExpression {
    return rhs.times(lhs)
}

@discardableResult
public func ./ (lhs: XAxisAnchorPair, rhs: LayoutDivisor) -> XAxisAnchorPairExpression {
    return lhs.divided(by: rhs)
}

// MARK: Expressions

@discardableResult
public func .+ (lhs: XAxisAnchorPairExpression, rhs: LayoutConstant) -> XAxisAnchorPairExpression {
    return lhs.with(constant: rhs)
}

@discardableResult
public func .- (lhs: XAxisAnchorPairExpression, rhs: LayoutConstant) -> XAxisAnchorPairExpression {
    return lhs.with(constant: -rhs)
}

@discardableResult
public func .* (lhs: XAxisAnchorPairExpression, rhs: LayoutConstant) -> XAxisAnchorPairExpression {
    return lhs.times(rhs)
}

@discardableResult
public func .* (lhs: LayoutConstant, rhs: XAxisAnchorPairExpression) -> XAxisAnchorPairExpression {
    return rhs.times(lhs)
}

@discardableResult
public func .* (lhs: XAxisAnchorPairExpression, rhs: LayoutMultiplier) -> XAxisAnchorPairExpression {
    return lhs.times(rhs)
}

@discardableResult
public func .* (lhs: LayoutMultiplier, rhs: XAxisAnchorPairExpression) -> XAxisAnchorPairExpression {
    return rhs.times(lhs)
}

@discardableResult
public func ./ (lhs: XAxisAnchorPairExpression, rhs: LayoutDivisor) -> XAxisAnchorPairExpression {
    return lhs.divided(by: rhs)
}
