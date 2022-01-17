// Generated using Sourcery 0.15.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

//
//  XYAxesAnchorPair+ConstantArithmeticOperators.swift
//  Layman
//
//  Created by Brian Strobach on 1/4/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

@discardableResult
public func .+ (lhs: XYAxesAnchorPair, rhs: LayoutConstant) -> XYAxesAnchorPairExpression {
    return XYAxesAnchorPairExpression(variable: lhs, coefficients: .constant(rhs))
}

@discardableResult
public func .+ (lhs: XYAxesAnchorPair, rhs: LayoutConstantTuple) -> XYAxesAnchorPairExpression {
    return lhs.plus(rhs)
}

@discardableResult
public func .+ (lhs: XYAxesAnchorPair, rhs: RelativeLayoutConstantTuple) -> XYAxesAnchorPairExpression {
    return lhs.plus(rhs)
}

@discardableResult
public func .- (lhs: XYAxesAnchorPair, rhs: LayoutConstant) -> XYAxesAnchorPairExpression {
    return lhs.minus(rhs)
}

@discardableResult
public func .* (lhs: XYAxesAnchorPair, rhs: LayoutConstant) -> XYAxesAnchorPairExpression {
    return lhs.times(rhs)
}

@discardableResult
public func .* (lhs: LayoutConstant, rhs: XYAxesAnchorPair) -> XYAxesAnchorPairExpression {
    return rhs.times(lhs)
}

@discardableResult
public func .* (lhs: XYAxesAnchorPair, rhs: LayoutMultiplier) -> XYAxesAnchorPairExpression {
    return lhs.times(rhs)
}

@discardableResult
public func .* (lhs: LayoutMultiplier, rhs: XYAxesAnchorPair) -> XYAxesAnchorPairExpression {
    return rhs.times(lhs)
}

@discardableResult
public func ./ (lhs: XYAxesAnchorPair, rhs: LayoutDivisor) -> XYAxesAnchorPairExpression {
    return lhs.divided(by: rhs)
}

// MARK: Expressions

@discardableResult
public func .+ (lhs: XYAxesAnchorPairExpression, rhs: LayoutConstant) -> XYAxesAnchorPairExpression {
    return lhs.with(constant: rhs)
}

@discardableResult
public func .+ (lhs: XYAxesAnchorPairExpression, rhs: LayoutConstantTuple) -> XYAxesAnchorPairExpression {
    return lhs.plus(rhs)
}

@discardableResult
public func .+ (lhs: XYAxesAnchorPairExpression, rhs: RelativeLayoutConstantTuple) -> XYAxesAnchorPairExpression {
    return lhs.plus(rhs)
}

@discardableResult
public func .- (lhs: XYAxesAnchorPairExpression, rhs: LayoutConstant) -> XYAxesAnchorPairExpression {
    return lhs.with(constant: -rhs)
}

@discardableResult
public func .* (lhs: XYAxesAnchorPairExpression, rhs: LayoutConstant) -> XYAxesAnchorPairExpression {
    return lhs.times(rhs)
}

@discardableResult
public func .* (lhs: LayoutConstant, rhs: XYAxesAnchorPairExpression) -> XYAxesAnchorPairExpression {
    return rhs.times(lhs)
}

@discardableResult
public func .* (lhs: XYAxesAnchorPairExpression, rhs: LayoutMultiplier) -> XYAxesAnchorPairExpression {
    return lhs.times(rhs)
}

@discardableResult
public func .* (lhs: LayoutMultiplier, rhs: XYAxesAnchorPairExpression) -> XYAxesAnchorPairExpression {
    return rhs.times(lhs)
}

@discardableResult
public func ./ (lhs: XYAxesAnchorPairExpression, rhs: LayoutDivisor) -> XYAxesAnchorPairExpression {
    return lhs.divided(by: rhs)
}
