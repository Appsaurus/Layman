//
//  XAxisConstantArithmeticOperators.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/10/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

import CoreGraphics
import Swiftest

//MARK: Constant Arithmetic
@discardableResult
public func + (lhs: XAxisAnchor, rhs: LayoutConstant) -> XAxisAnchorExpression {
    return LayoutExpression(anchor: lhs, configuration: LayoutConfiguration(constant: rhs))
}

@discardableResult
public func - (lhs: XAxisAnchor, rhs: LayoutConstant) -> XAxisAnchorExpression {
    return LayoutExpression(anchor: lhs, configuration: LayoutConfiguration(constant: -rhs))
}

@discardableResult
public func * (lhs: XAxisAnchor, rhs: LayoutConstant) -> XAxisAnchorExpression {
    return LayoutExpression(anchor: lhs, configuration: LayoutConfiguration(multiplier: rhs))
}

@discardableResult
public func / (lhs: XAxisAnchor, rhs: LayoutConstant) -> XAxisAnchorExpression {
    return lhs * (1.0 / rhs)
}

@discardableResult
public func / (lhs: XAxisAnchorExpression, rhs: LayoutConstant) -> XAxisAnchorExpression {
    return lhs.with(multiplier: (1.0 / rhs))
}

//MARK: AnchorPairs + Constant Arithmetic
@discardableResult
public func + (lhs: XAxisAnchors, rhs: LayoutConstant) -> XAxisAnchorsExpression {
    return XAxisAnchorsExpression(anchors: lhs, configuration: LayoutConfiguration(constant: rhs))
}

@discardableResult
public func - (lhs: XAxisAnchors, rhs: LayoutConstant) -> XAxisAnchorsExpression {
    return XAxisAnchorsExpression(anchors: lhs, configuration: LayoutConfiguration(constant: -rhs))
}

@discardableResult
public func * (lhs: XAxisAnchors, rhs: LayoutConstant) -> XAxisAnchorsExpression {
    return XAxisAnchorsExpression(anchors: lhs, configuration: LayoutConfiguration(multiplier: rhs))
}

@discardableResult
public func / (lhs: XAxisAnchors, rhs: LayoutConstant) -> XAxisAnchorsExpression {
    return lhs * (1.0 / rhs)
}

@discardableResult
public func / (lhs: XAxisAnchorsExpression, rhs: LayoutConstant) -> XAxisAnchorsExpression {
    return lhs.with(multiplier: (1.0 / rhs))
}
