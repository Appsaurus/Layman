// Generated using Sourcery 0.15.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

//
//  YAxisAnchorPair+ConstantArithmeticOperators.swift
//  Layman
//
//  Created by Brian Strobach on 1/4/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

@discardableResult
public func .+ (lhs: YAxisAnchorPair, rhs: LayoutConstant) -> YAxisAnchorPairExpression {
    return YAxisAnchorPairExpression(variable: lhs, coefficients: .constant(rhs))
}

@discardableResult
public func .+ (lhs: YAxisAnchorPair, rhs: LayoutConstantTuple) -> YAxisAnchorPairExpression {
    return lhs.plus(rhs)
}

@discardableResult
public func .+ (lhs: YAxisAnchorPair, rhs: RelativeLayoutConstantTuple) -> YAxisAnchorPairExpression {
    return lhs.plus(rhs)
}

@discardableResult
public func .- (lhs: YAxisAnchorPair, rhs: LayoutConstant) -> YAxisAnchorPairExpression {
    return lhs.minus(rhs)
}

@discardableResult
public func .* (lhs: YAxisAnchorPair, rhs: LayoutConstant) -> YAxisAnchorPairExpression {
    return lhs.times(rhs)
}

@discardableResult
public func .* (lhs: LayoutConstant, rhs: YAxisAnchorPair) -> YAxisAnchorPairExpression {
    return rhs.times(lhs)
}

@discardableResult
public func .* (lhs: YAxisAnchorPair, rhs: LayoutMultiplier) -> YAxisAnchorPairExpression {
    return lhs.times(rhs)
}

@discardableResult
public func .* (lhs: LayoutMultiplier, rhs: YAxisAnchorPair) -> YAxisAnchorPairExpression {
    return rhs.times(lhs)
}

@discardableResult
public func ./ (lhs: YAxisAnchorPair, rhs: LayoutDivisor) -> YAxisAnchorPairExpression {
    return lhs.divided(by: rhs)
}

// MARK: Expressions

@discardableResult
public func .+ (lhs: YAxisAnchorPairExpression, rhs: LayoutConstant) -> YAxisAnchorPairExpression {
    return lhs.with(constant: rhs)
}

@discardableResult
public func .+ (lhs: YAxisAnchorPairExpression, rhs: LayoutConstantTuple) -> YAxisAnchorPairExpression {
    return lhs.plus(rhs)
}

@discardableResult
public func .+ (lhs: YAxisAnchorPairExpression, rhs: RelativeLayoutConstantTuple) -> YAxisAnchorPairExpression {
    return lhs.plus(rhs)
}

@discardableResult
public func .- (lhs: YAxisAnchorPairExpression, rhs: LayoutConstant) -> YAxisAnchorPairExpression {
    return lhs.with(constant: -rhs)
}

@discardableResult
public func .* (lhs: YAxisAnchorPairExpression, rhs: LayoutConstant) -> YAxisAnchorPairExpression {
    return lhs.times(rhs)
}

@discardableResult
public func .* (lhs: LayoutConstant, rhs: YAxisAnchorPairExpression) -> YAxisAnchorPairExpression {
    return rhs.times(lhs)
}

@discardableResult
public func .* (lhs: YAxisAnchorPairExpression, rhs: LayoutMultiplier) -> YAxisAnchorPairExpression {
    return lhs.times(rhs)
}

@discardableResult
public func .* (lhs: LayoutMultiplier, rhs: YAxisAnchorPairExpression) -> YAxisAnchorPairExpression {
    return rhs.times(lhs)
}

@discardableResult
public func ./ (lhs: YAxisAnchorPairExpression, rhs: LayoutDivisor) -> YAxisAnchorPairExpression {
    return lhs.divided(by: rhs)
}
