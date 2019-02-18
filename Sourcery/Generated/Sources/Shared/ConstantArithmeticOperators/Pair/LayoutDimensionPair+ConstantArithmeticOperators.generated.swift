// Generated using Sourcery 0.15.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

//
//  LayoutDimensionPair+ConstantArithmeticOperators.swift
//  Layman
//
//  Created by Brian Strobach on 1/4/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

@discardableResult
public func .+ (lhs: LayoutDimensionPair, rhs: LayoutConstant) -> LayoutDimensionPairExpression {
    return LayoutDimensionPairExpression(variable: lhs, coefficients: .constant(rhs))
}

@discardableResult
public func .+ (lhs: LayoutDimensionPair, rhs: LayoutConstantTuple) -> LayoutDimensionPairExpression {
    return lhs.plus(rhs)
}

@discardableResult
public func .+ (lhs: LayoutDimensionPair, rhs: RelativeLayoutConstantTuple) -> LayoutDimensionPairExpression {
    return lhs.plus(rhs)
}

@discardableResult
public func .- (lhs: LayoutDimensionPair, rhs: LayoutConstant) -> LayoutDimensionPairExpression {
    return LayoutDimensionPairExpression(variable: lhs, coefficients: .constant(-rhs))
}

@discardableResult
public func .* (lhs: LayoutDimensionPair, rhs: LayoutConstant) -> LayoutDimensionPairExpression {
    return LayoutDimensionPairExpression(variable: lhs, coefficients: .multiplier(rhs))
}

@discardableResult
public func .* (lhs: LayoutConstant, rhs: LayoutDimensionPair) -> LayoutDimensionPairExpression {
    return rhs.times(lhs)
}

@discardableResult
public func .* (lhs: LayoutDimensionPair, rhs: LayoutMultiplier) -> LayoutDimensionPairExpression {
    return LayoutDimensionPairExpression(variable: lhs, coefficients: .multiplier(rhs))
}

@discardableResult
public func .* (lhs: LayoutMultiplier, rhs: LayoutDimensionPair) -> LayoutDimensionPairExpression {
    return rhs.times(lhs)
}

@discardableResult
public func ./ (lhs: LayoutDimensionPair, rhs: LayoutDivisor) -> LayoutDimensionPairExpression {
    return lhs.divided(by: rhs)
}

// MARK: Expressions

@discardableResult
public func .+ (lhs: LayoutDimensionPairExpression, rhs: LayoutConstant) -> LayoutDimensionPairExpression {
    return lhs.with(constant: rhs)
}

@discardableResult
public func .+ (lhs: LayoutDimensionPairExpression, rhs: LayoutConstantTuple) -> LayoutDimensionPairExpression {
    return lhs.plus(rhs)
}

@discardableResult
public func .+ (lhs: LayoutDimensionPairExpression, rhs: RelativeLayoutConstantTuple) -> LayoutDimensionPairExpression {
    return lhs.plus(rhs)
}

@discardableResult
public func .- (lhs: LayoutDimensionPairExpression, rhs: LayoutConstant) -> LayoutDimensionPairExpression {
    return lhs.with(constant: -rhs)
}

@discardableResult
public func .* (lhs: LayoutDimensionPairExpression, rhs: LayoutConstant) -> LayoutDimensionPairExpression {
    return lhs.times(rhs)
}

@discardableResult
public func .* (lhs: LayoutConstant, rhs: LayoutDimensionPairExpression) -> LayoutDimensionPairExpression {
    return rhs.times(lhs)
}

@discardableResult
public func .* (lhs: LayoutDimensionPairExpression, rhs: LayoutMultiplier) -> LayoutDimensionPairExpression {
    return lhs.times(rhs)
}

@discardableResult
public func .* (lhs: LayoutMultiplier, rhs: LayoutDimensionPairExpression) -> LayoutDimensionPairExpression {
    return rhs.times(lhs)
}

@discardableResult
public func ./ (lhs: LayoutDimensionPairExpression, rhs: LayoutDivisor) -> LayoutDimensionPairExpression {
    return lhs.divided(by: rhs)
}
