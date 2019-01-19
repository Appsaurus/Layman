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
public func + (lhs: YAxisAnchorPair, rhs: LayoutConstant) -> YAxisAnchorPairExpression {
    return YAxisAnchorPairExpression(anchors: lhs, configuration: LayoutConfiguration(constant: rhs))
}

@discardableResult
public func - (lhs: YAxisAnchorPair, rhs: LayoutConstant) -> YAxisAnchorPairExpression {
    return YAxisAnchorPairExpression(anchors: lhs, configuration: LayoutConfiguration(constant: -rhs))
}

@discardableResult
public func * (lhs: YAxisAnchorPair, rhs: LayoutDivisor) -> YAxisAnchorPairExpression {
    return YAxisAnchorPairExpression(anchors: lhs, configuration: LayoutConfiguration(multiplier: rhs))
}

@discardableResult
public func / (lhs: YAxisAnchorPair, rhs: LayoutDivisor) -> YAxisAnchorPairExpression {
    return lhs * (1.0 / rhs)
}

@discardableResult
public func / (lhs: YAxisAnchorPairExpression, rhs: LayoutDivisor) -> YAxisAnchorPairExpression {
    return lhs.with(multiplier: (1.0 / rhs))
}
