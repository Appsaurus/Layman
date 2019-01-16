//
//  XYAxesAnchorPriorityOperators.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/10/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

@discardableResult
public func ~ (lhs: XYAxesAnchorPair, rhs: LayoutPriority) -> XYAxesAnchorPairExpression {
    return XYAxesAnchorPairExpression(anchors: lhs).with(priority: rhs)
}

@discardableResult
public func ~ (lhs: XYAxesAnchorPairExpression, rhs: LayoutPriority) -> XYAxesAnchorPairExpression {
    return lhs.with(priority: rhs)
}
