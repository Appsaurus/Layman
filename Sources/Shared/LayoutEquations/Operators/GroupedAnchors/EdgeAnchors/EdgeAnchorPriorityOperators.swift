//
//  EdgeAnchorPriorityOperators.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/10/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

@discardableResult
public func ~ (lhs: EdgeAnchors, rhs: LayoutPriority) -> EdgeAnchorsExpression {
    return EdgeAnchorsExpression(lhs) ~ rhs
}

@discardableResult
public func ~ (lhs: EdgeAnchorsExpression, rhs: LayoutPriority) -> EdgeAnchorsExpression {
    return lhs.with(priority: rhs)
}


@discardableResult
public func ~ (lhs: LayoutInset, rhs: LayoutPriority) -> EdgeAnchorsConfiguration {
    return EdgeAnchorsConfiguration(
        lhs.top ~ rhs,
        lhs.left ~ rhs,
        lhs.bottom ~ rhs,
        lhs.right ~ rhs
    )
}
