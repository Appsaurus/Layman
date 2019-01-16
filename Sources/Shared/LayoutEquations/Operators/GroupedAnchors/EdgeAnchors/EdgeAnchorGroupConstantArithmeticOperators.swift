//
//  EdgeAnchorGroupConstantArithmeticOperators.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/10/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.

// MARK: EdgeAnchors Constant Arithmetic
@discardableResult
public func + (lhs: EdgeAnchorGroup, rhs: LayoutConstant) -> EdgeAnchorGroupExpression {
    return lhs + LayoutInset(padding: rhs)
}

@discardableResult
public func - (lhs: EdgeAnchorGroup, rhs: LayoutConstant) -> EdgeAnchorGroupExpression {
    return lhs + -rhs
}

@discardableResult
public func * (lhs: EdgeAnchorGroup, rhs: LayoutConstant) -> EdgeAnchorGroupExpression {
    return EdgeAnchorGroupExpression(anchors: lhs, configurations: EdgeAnchorsConfiguration(.multiplier(rhs)))
}

@discardableResult
public func / (lhs: EdgeAnchorGroup, rhs: LayoutConstant) -> EdgeAnchorGroupExpression {
    return lhs * (1.0 / rhs)
}

@discardableResult
public func / (lhs: EdgeAnchorGroupExpression, rhs: LayoutConstant) -> EdgeAnchorGroupExpression {
    return lhs.with(multiplier: (1.0 / rhs))
}

// MARK: UIEdgeInset Constant
@discardableResult
public func + (lhs: EdgeAnchorGroup, rhs: LayoutInset) -> EdgeAnchorGroupExpression {

    let configuration = EdgeAnchorsConfiguration(
        .constant(rhs.top),
        .constant(rhs.left),
        .constant(rhs.bottom),
        .constant(rhs.right)
    )
    return EdgeAnchorGroupExpression(lhs).configured(with: configuration)
}

@discardableResult
public func - (lhs: EdgeAnchorGroup, rhs: LayoutInset) -> EdgeAnchorGroupExpression {
    return lhs + LayoutInset(top: -rhs.top, left: -rhs.left, bottom: -rhs.bottom, right: -rhs.right)
}
