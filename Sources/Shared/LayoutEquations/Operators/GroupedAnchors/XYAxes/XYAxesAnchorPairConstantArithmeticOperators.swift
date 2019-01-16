//
//  XYAxesAnchorPairConstantArithmeticOperators.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/10/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

// MARK: XYAxesAnchorPair Constant Arithmetic
@discardableResult
public func + (lhs: XYAxesAnchorPair, rhs: LayoutConstant) -> XYAxesAnchorPairExpression {
    return XYAxesAnchorPairExpression(anchors: lhs, configuration: LayoutConfiguration(constant: rhs))
}

@discardableResult
public func - (lhs: XYAxesAnchorPair, rhs: LayoutConstant) -> XYAxesAnchorPairExpression {
    return XYAxesAnchorPairExpression(anchors: lhs, configuration: LayoutConfiguration(constant: -rhs))
}

@discardableResult
public func * (lhs: XYAxesAnchorPair, rhs: LayoutConstant) -> XYAxesAnchorPairExpression {
    return XYAxesAnchorPairExpression(anchors: lhs, configuration: LayoutConfiguration(multiplier: rhs))
}

@discardableResult
public func / (lhs: XYAxesAnchorPair, rhs: LayoutConstant) -> XYAxesAnchorPairExpression {
    return lhs * (1.0 / rhs)
}

@discardableResult
public func / (lhs: XYAxesAnchorPairExpression, rhs: LayoutConstant) -> XYAxesAnchorPairExpression {
    return lhs.with(multiplier: (1.0 / rhs))
}
