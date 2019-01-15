//
//  YAxisAnchorPairConstantArithmeticOperators.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/14/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

// MARK: YAxisAnchorPair Constant Arithmetic
@discardableResult
public func + (lhs: YAxisAnchorPair, rhs: LayoutConstant) -> YAxisAnchorPairExpression {
    return YAxisAnchorPairExpression(anchors: lhs, configuration: LayoutConfiguration(constant: rhs))
}

@discardableResult
public func - (lhs: YAxisAnchorPair, rhs: LayoutConstant) -> YAxisAnchorPairExpression {
    return YAxisAnchorPairExpression(anchors: lhs, configuration: LayoutConfiguration(constant: -rhs))
}

@discardableResult
public func * (lhs: YAxisAnchorPair, rhs: LayoutConstant) -> YAxisAnchorPairExpression {
    return YAxisAnchorPairExpression(anchors: lhs, configuration: LayoutConfiguration(multiplier: rhs))
}

@discardableResult
public func / (lhs: YAxisAnchorPair, rhs: LayoutConstant) -> YAxisAnchorPairExpression {
    return lhs * (1.0 / rhs)
}

@discardableResult
public func / (lhs: YAxisAnchorPairExpression, rhs: LayoutConstant) -> YAxisAnchorPairExpression {
    return lhs.with(multiplier: (1.0 / rhs))
}
