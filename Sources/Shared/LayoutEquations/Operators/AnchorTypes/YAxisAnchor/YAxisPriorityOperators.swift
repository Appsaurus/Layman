//
//  YAxisPriorityOperators.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/10/19.
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

@discardableResult
public func ~ (lhs: YAxisAnchorPair, rhs: LayoutPriority) -> YAxisAnchorPairExpression {
    return YAxisAnchorPairExpression(anchors: lhs).with(priority: rhs)
}

@discardableResult
public func ~ (lhs: YAxisAnchorPairExpression, rhs: LayoutPriority) -> YAxisAnchorPairExpression {
    return lhs.with(priority: rhs)
}
