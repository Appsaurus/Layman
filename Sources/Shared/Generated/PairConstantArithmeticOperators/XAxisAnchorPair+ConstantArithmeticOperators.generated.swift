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
public func + (lhs: XAxisAnchorPair, rhs: LayoutConstant) -> XAxisAnchorPairExpression {
    return XAxisAnchorPairExpression(variable: lhs, coefficients: .constant(rhs))
}

@discardableResult
public func - (lhs: XAxisAnchorPair, rhs: LayoutConstant) -> XAxisAnchorPairExpression {
    return XAxisAnchorPairExpression(variable: lhs, coefficients: .constant(-rhs))
}

@discardableResult
public func * (lhs: XAxisAnchorPair, rhs: LayoutDivisor) -> XAxisAnchorPairExpression {
    return XAxisAnchorPairExpression(variable: lhs, coefficients: .multiplier(rhs))
}

@discardableResult
public func / (lhs: XAxisAnchorPair, rhs: LayoutDivisor) -> XAxisAnchorPairExpression {
    return lhs * (1.0 / rhs)
}

@discardableResult
public func / (lhs: XAxisAnchorPairExpression, rhs: LayoutDivisor) -> XAxisAnchorPairExpression {
    return lhs.with(multiplier: (1.0 / rhs))
}
