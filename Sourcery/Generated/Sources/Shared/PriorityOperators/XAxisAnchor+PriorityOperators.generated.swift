// Generated using Sourcery 0.15.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

//
//  XAxisAnchor+PriorityOperators.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/4/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

@discardableResult
public func ~ (lhs: XAxisAnchor, rhs: LayoutPriority) -> XAxisAnchorExpression {
    return XAxisAnchorExpression(variable: lhs).priority(rhs)
}

@discardableResult
public func ~ (lhs: XAxisAnchorExpression, rhs: LayoutPriority) -> XAxisAnchorExpression {
    return lhs.priority(rhs)
}
