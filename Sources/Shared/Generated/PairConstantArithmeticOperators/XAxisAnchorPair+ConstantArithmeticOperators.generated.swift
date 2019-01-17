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
