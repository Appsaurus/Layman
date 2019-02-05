// Generated using Sourcery 0.15.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

//
//  EdgeAnchorGroup+ArrayPriorityOperators.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/4/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

@discardableResult
public func ~ (lhs: EdgeAnchorGroups, rhs: LayoutPriority) -> EdgeAnchorGroupExpressions {
    return lhs.map { EdgeAnchorGroupExpression(variable: $0).priority(rhs) }
}

@discardableResult
public func ~ (lhs: EdgeAnchorGroupExpressions, rhs: LayoutPriority) -> EdgeAnchorGroupExpressions {
    lhs.forEach { $0.coefficients.set(priority: rhs) }
    return lhs
}
