//
//  CenterAnchorPriorityOperators.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/10/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

@discardableResult
public func ~ (lhs: CenterAnchors, rhs: LayoutPriority) -> CenterAnchorsExpression {
    return CenterAnchorsExpression(anchors: lhs).with(priority: rhs)
}

@discardableResult
public func ~ (lhs: CenterAnchorsExpression, rhs: LayoutPriority) -> CenterAnchorsExpression {
    return lhs.with(priority: rhs)
}
