// Generated using Sourcery 0.15.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

//
//  YAxisAnchor+PriorityOperators.swift
//  Layman
//
//  Created by Brian Strobach on 1/4/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

@discardableResult
public func ~ (lhs: YAxisAnchor, rhs: LayoutPriority) -> YAxisAnchorExpression {
    return YAxisAnchorExpression(variable: lhs).priority(rhs)
}

@discardableResult
public func ~ (lhs: YAxisAnchorExpression, rhs: LayoutPriority) -> YAxisAnchorExpression {
    return lhs.priority(rhs)
}
