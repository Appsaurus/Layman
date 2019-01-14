//
//  XAxisConstantArithmeticOperators.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/10/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

// MARK: XAxisAnchor Constant Arithmetic
@discardableResult
public func + (lhs: XAxisAnchor, rhs: LayoutConstant) -> XAxisAnchorExpression {
    return XAxisAnchorExpression(anchor: lhs, configuration: LayoutConfiguration(constant: rhs))
}

@discardableResult
public func - (lhs: XAxisAnchor, rhs: LayoutConstant) -> XAxisAnchorExpression {
    return XAxisAnchorExpression(anchor: lhs, configuration: LayoutConfiguration(constant: -rhs))
}

@discardableResult
public func * (lhs: XAxisAnchor, rhs: LayoutConstant) -> XAxisAnchorExpression {
    return XAxisAnchorExpression(anchor: lhs, configuration: LayoutConfiguration(multiplier: rhs))
}

@discardableResult
public func / (lhs: XAxisAnchor, rhs: LayoutConstant) -> XAxisAnchorExpression {
    return lhs * (1.0 / rhs)
}

@discardableResult
public func / (lhs: XAxisAnchorExpression, rhs: LayoutConstant) -> XAxisAnchorExpression {
    return lhs.with(multiplier: (1.0 / rhs))
}

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
