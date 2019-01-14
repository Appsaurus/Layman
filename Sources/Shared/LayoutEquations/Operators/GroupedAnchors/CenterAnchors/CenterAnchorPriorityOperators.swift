//
//  CenterAnchorPriorityOperators.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/10/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

@discardableResult
public func ~ (lhs: CenterAnchorPair, rhs: LayoutPriority) -> CenterAnchorPairExpression {
    return CenterAnchorPairExpression(anchors: lhs).with(priority: rhs)
}

@discardableResult
public func ~ (lhs: CenterAnchorPairExpression, rhs: LayoutPriority) -> CenterAnchorPairExpression {
    return lhs.with(priority: rhs)
}
