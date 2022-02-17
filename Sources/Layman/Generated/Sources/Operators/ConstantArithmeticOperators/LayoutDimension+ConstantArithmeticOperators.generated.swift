// Generated using Sourcery 0.15.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

//
//  LayoutDimensionConstantArithmeticOperators.swift
//  Layman
//
//  Created by Brian Strobach on 1/4/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

@discardableResult
public func .+ (lhs: LayoutDimension, rhs: LayoutConstant) -> LayoutDimensionExpression {
    return lhs.plus(rhs)
}

@discardableResult
public func .- (lhs: LayoutDimension, rhs: LayoutConstant) -> LayoutDimensionExpression {
    return lhs.minus(rhs)
}

@discardableResult
public func .* (lhs: LayoutDimension, rhs: LayoutConstant) -> LayoutDimensionExpression {
    return lhs.times(rhs)
}

@discardableResult
public func .* (lhs: LayoutConstant, rhs: LayoutDimension ) -> LayoutDimensionExpression {
    return rhs.times(lhs)
}

@discardableResult
public func .* (lhs: LayoutDimension, rhs: LayoutMultiplier) -> LayoutDimensionExpression {
    return lhs.times(rhs)
}

@discardableResult
public func .* (lhs: LayoutMultiplier, rhs: LayoutDimension ) -> LayoutDimensionExpression {
    return rhs.times(lhs)
}

@discardableResult
public func ./ (lhs: LayoutDimension, rhs: LayoutDivisor) -> LayoutDimensionExpression {
    return lhs.divided(by: rhs)
}

// MARK: Expressions

@discardableResult
public func .+ (lhs: LayoutDimensionExpression, rhs: LayoutConstant) -> LayoutDimensionExpression {
    return lhs.with(constant: rhs)
}

@discardableResult
public func .- (lhs: LayoutDimensionExpression, rhs: LayoutConstant) -> LayoutDimensionExpression {
    return lhs.with(constant: -rhs)
}

@discardableResult
public func .* (lhs: LayoutDimensionExpression, rhs: LayoutConstant) -> LayoutDimensionExpression {
    return lhs.times(rhs)
}

@discardableResult
public func .* (lhs: LayoutConstant, rhs: LayoutDimensionExpression ) -> LayoutDimensionExpression {
    return rhs.times(lhs)
}

@discardableResult
public func .* (lhs: LayoutDimensionExpression, rhs: LayoutMultiplier) -> LayoutDimensionExpression {
    return lhs.times(rhs)
}

@discardableResult
public func .* (lhs: LayoutMultiplier, rhs: LayoutDimensionExpression ) -> LayoutDimensionExpression {
    return rhs.times(lhs)
}

@discardableResult
public func ./ (lhs: LayoutDimensionExpression, rhs: LayoutDivisor) -> LayoutDimensionExpression {
    return lhs.divided(by: rhs)
}

// MARK: RelativeConstant
@discardableResult
public func .+ (lhs: LayoutDimension, rhs: RelativeLayoutConstant) -> LayoutDimensionExpression {
    return lhs.plus(rhs)
}

@discardableResult
public func .+ (lhs: LayoutDimensionExpression, rhs: RelativeLayoutConstant) -> LayoutDimensionExpression {
    return lhs.plus(rhs)
}
