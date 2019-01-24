// Generated using Sourcery 0.15.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

//
//  EdgeAnchorGroup+PriorityOperators.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/4/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

@discardableResult
public func ~ (lhs: EdgeAnchorGroup, rhs: LayoutPriority) -> EdgeAnchorGroupExpression {
    return EdgeAnchorGroupExpression(variable: lhs).with(priority: rhs)
}

@discardableResult
public func ~ (lhs: EdgeAnchorGroupExpression, rhs: LayoutPriority) -> EdgeAnchorGroupExpression {
    return lhs.with(priority: rhs)
}
