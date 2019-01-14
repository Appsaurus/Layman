//
//  CenterAnchorsConstantArithmeticOperators.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/10/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

// MARK: CenterAnchorPair Constant Arithmetic
@discardableResult
public func + (lhs: CenterAnchorPair, rhs: LayoutConstant) -> CenterAnchorPairExpression {
    return CenterAnchorPairExpression(anchors: lhs, configuration: LayoutConfiguration(constant: rhs))
}

@discardableResult
public func - (lhs: CenterAnchorPair, rhs: LayoutConstant) -> CenterAnchorPairExpression {
    return CenterAnchorPairExpression(anchors: lhs, configuration: LayoutConfiguration(constant: -rhs))
}

@discardableResult
public func * (lhs: CenterAnchorPair, rhs: LayoutConstant) -> CenterAnchorPairExpression {
    return CenterAnchorPairExpression(anchors: lhs, configuration: LayoutConfiguration(multiplier: rhs))
}

@discardableResult
public func / (lhs: CenterAnchorPair, rhs: LayoutConstant) -> CenterAnchorPairExpression {
    return lhs * (1.0 / rhs)
}

@discardableResult
public func / (lhs: CenterAnchorPairExpression, rhs: LayoutConstant) -> CenterAnchorPairExpression {
    return lhs.with(multiplier: (1.0 / rhs))
}
