//
//  XAxisAnchorPairConstantArithmeticOperators.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/14/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//
// MARK: XAxisAnchorPair Constant Arithmetic
@discardableResult
public func + (lhs: XAxisAnchorPair, rhs: LayoutConstant) -> XAxisAnchorPairExpression {
    return XAxisAnchorPairExpression(anchors: lhs, configuration: LayoutConfiguration(constant: rhs))
}

@discardableResult
public func - (lhs: XAxisAnchorPair, rhs: LayoutConstant) -> XAxisAnchorPairExpression {
    return XAxisAnchorPairExpression(anchors: lhs, configuration: LayoutConfiguration(constant: -rhs))
}

@discardableResult
public func * (lhs: XAxisAnchorPair, rhs: LayoutConstant) -> XAxisAnchorPairExpression {
    return XAxisAnchorPairExpression(anchors: lhs, configuration: LayoutConfiguration(multiplier: rhs))
}

@discardableResult
public func / (lhs: XAxisAnchorPair, rhs: LayoutConstant) -> XAxisAnchorPairExpression {
    return lhs * (1.0 / rhs)
}

@discardableResult
public func / (lhs: XAxisAnchorPairExpression, rhs: LayoutConstant) -> XAxisAnchorPairExpression {
    return lhs.with(multiplier: (1.0 / rhs))
}
