//
//  EdgeAnchorGroup+PriorityOperators.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/10/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

//@discardableResult
//public func ~ (lhs: EdgeAnchorGroup, rhs: LayoutPriority) -> EdgeAnchorGroupExpression {
//    return EdgeAnchorGroupExpression(lhs) ~ rhs
//}
//
//@discardableResult
//public func ~ (lhs: EdgeAnchorGroupExpression, rhs: LayoutPriority) -> EdgeAnchorGroupExpression {
//    return lhs.with(priority: rhs)
//}

@discardableResult
public func ~ (lhs: LayoutInset, rhs: LayoutPriority) -> EdgeAnchorsConfiguration {
    return EdgeAnchorsConfiguration(
        LayoutConfiguration(constant: lhs.top, priority: rhs),
        LayoutConfiguration(constant: lhs.left, priority: rhs),
        LayoutConfiguration(constant: lhs.bottom, priority: rhs),
        LayoutConfiguration(constant: lhs.right, priority: rhs)
    )
}
