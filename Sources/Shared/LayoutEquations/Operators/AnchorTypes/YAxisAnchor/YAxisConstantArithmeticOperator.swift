//
//  YAxisConstantArithmeticOperator.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/10/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

import CoreGraphics
import Swiftest

//MARK: Constant Arithmetic
@discardableResult
public func + (lhs: YAxisAnchor, rhs: LayoutConstant) -> YAxisAnchorExpression {
    return LayoutExpression(anchor: lhs, configuration: LayoutConfiguration(constant: rhs))
}

@discardableResult
public func - (lhs: YAxisAnchor, rhs: LayoutConstant) -> YAxisAnchorExpression {
    return LayoutExpression(anchor: lhs, configuration: LayoutConfiguration(constant: -rhs))
}

@discardableResult
public func * (lhs: YAxisAnchor, rhs: LayoutConstant) -> YAxisAnchorExpression {
    return LayoutExpression(anchor: lhs, configuration: LayoutConfiguration(multiplier: rhs))
}

@discardableResult
public func / (lhs: YAxisAnchor, rhs: LayoutConstant) -> YAxisAnchorExpression {
    return lhs * (1.0 / rhs)
}

@discardableResult
public func / (lhs: YAxisAnchorExpression, rhs: LayoutConstant) -> YAxisAnchorExpression {
    return lhs.with(multiplier: (1.0 / rhs))
}

//MARK: AnchorPairs + Constant Arithmetic
@discardableResult
public func + (lhs: YAxisAnchors, rhs: LayoutConstant) -> YAxisAnchorsExpression {
    return YAxisAnchorsExpression(anchors: lhs, configuration: LayoutConfiguration(constant: rhs))
}

@discardableResult
public func - (lhs: YAxisAnchors, rhs: LayoutConstant) -> YAxisAnchorsExpression {
    return YAxisAnchorsExpression(anchors: lhs, configuration: LayoutConfiguration(constant: -rhs))
}

@discardableResult
public func * (lhs: YAxisAnchors, rhs: LayoutConstant) -> YAxisAnchorsExpression {
    return YAxisAnchorsExpression(anchors: lhs, configuration: LayoutConfiguration(multiplier: rhs))
}

@discardableResult
public func / (lhs: YAxisAnchors, rhs: LayoutConstant) -> YAxisAnchorsExpression {
    return lhs * (1.0 / rhs)
}

@discardableResult
public func / (lhs: YAxisAnchorsExpression, rhs: LayoutConstant) -> YAxisAnchorsExpression {
    return lhs.with(multiplier: (1.0 / rhs))
}
