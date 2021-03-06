// Generated using Sourcery 0.15.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

//
//  YAxisAnchorConstantArithmeticOperators.swift
//  Layman
//
//  Created by Brian Strobach on 1/4/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

@discardableResult
public func .+ (lhs: YAxisAnchor, rhs: LayoutConstant) -> YAxisAnchorExpression {
    return lhs.plus(rhs)
}

@discardableResult
public func .- (lhs: YAxisAnchor, rhs: LayoutConstant) -> YAxisAnchorExpression {
    return lhs.minus(rhs)
}

@discardableResult
public func .* (lhs: YAxisAnchor, rhs: LayoutConstant) -> YAxisAnchorExpression {
    return lhs.times(rhs)
}

@discardableResult
public func .* (lhs: LayoutConstant, rhs: YAxisAnchor ) -> YAxisAnchorExpression {
    return rhs.times(lhs)
}

@discardableResult
public func .* (lhs: YAxisAnchor, rhs: LayoutMultiplier) -> YAxisAnchorExpression {
    return lhs.times(rhs)
}

@discardableResult
public func .* (lhs: LayoutMultiplier, rhs: YAxisAnchor ) -> YAxisAnchorExpression {
    return rhs.times(lhs)
}

@discardableResult
public func ./ (lhs: YAxisAnchor, rhs: LayoutDivisor) -> YAxisAnchorExpression {
    return lhs.divided(by: rhs)
}

// MARK: Expressions

@discardableResult
public func .+ (lhs: YAxisAnchorExpression, rhs: LayoutConstant) -> YAxisAnchorExpression {
    return lhs.with(constant: rhs)
}

@discardableResult
public func .- (lhs: YAxisAnchorExpression, rhs: LayoutConstant) -> YAxisAnchorExpression {
    return lhs.with(constant: -rhs)
}

@discardableResult
public func .* (lhs: YAxisAnchorExpression, rhs: LayoutConstant) -> YAxisAnchorExpression {
    return lhs.times(rhs)
}

@discardableResult
public func .* (lhs: LayoutConstant, rhs: YAxisAnchorExpression ) -> YAxisAnchorExpression {
    return rhs.times(lhs)
}

@discardableResult
public func .* (lhs: YAxisAnchorExpression, rhs: LayoutMultiplier) -> YAxisAnchorExpression {
    return lhs.times(rhs)
}

@discardableResult
public func .* (lhs: LayoutMultiplier, rhs: YAxisAnchorExpression ) -> YAxisAnchorExpression {
    return rhs.times(lhs)
}

@discardableResult
public func ./ (lhs: YAxisAnchorExpression, rhs: LayoutDivisor) -> YAxisAnchorExpression {
    return lhs.divided(by: rhs)
}

// MARK: RelativeConstant
@discardableResult
public func .+ (lhs: YAxisAnchor, rhs: RelativeLayoutConstant) -> YAxisAnchorExpression {
    return lhs.plus(rhs)
}

@discardableResult
public func .+ (lhs: YAxisAnchorExpression, rhs: RelativeLayoutConstant) -> YAxisAnchorExpression {
    return lhs.plus(rhs)
}
