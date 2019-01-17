// Generated using Sourcery 0.15.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

//
//  YAxisAnchor+PriorityOperators.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/4/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

@discardableResult
public func ~ (lhs: YAxisAnchor, rhs: LayoutPriority) -> YAxisAnchorExpression {
    return YAxisAnchorExpression(anchor: lhs).with(priority: rhs)
}

@discardableResult
public func ~ (lhs: YAxisAnchorExpression, rhs: LayoutPriority) -> YAxisAnchorExpression {
    return lhs.with(priority: rhs)
}
