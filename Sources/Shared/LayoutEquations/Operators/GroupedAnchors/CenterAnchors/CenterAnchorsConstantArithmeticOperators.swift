//
//  CenterAnchorsConstantArithmeticOperators.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/10/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

// MARK: CenterAnchors Constant Arithmetic
@discardableResult
public func + (lhs: CenterAnchors, rhs: LayoutConstant) -> CenterAnchorsExpression {
    return CenterAnchorsExpression(anchors: lhs, configuration: LayoutConfiguration(constant: rhs))
}

@discardableResult
public func - (lhs: CenterAnchors, rhs: LayoutConstant) -> CenterAnchorsExpression {
    return CenterAnchorsExpression(anchors: lhs, configuration: LayoutConfiguration(constant: -rhs))
}

@discardableResult
public func * (lhs: CenterAnchors, rhs: LayoutConstant) -> CenterAnchorsExpression {
    return CenterAnchorsExpression(anchors: lhs, configuration: LayoutConfiguration(multiplier: rhs))
}

@discardableResult
public func / (lhs: CenterAnchors, rhs: LayoutConstant) -> CenterAnchorsExpression {
    return lhs * (1.0 / rhs)
}

@discardableResult
public func / (lhs: CenterAnchorsExpression, rhs: LayoutConstant) -> CenterAnchorsExpression {
    return lhs.with(multiplier: (1.0 / rhs))
}
