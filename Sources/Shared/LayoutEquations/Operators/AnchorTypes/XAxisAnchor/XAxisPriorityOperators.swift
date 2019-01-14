//
//  XAxisPriorityOperators.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/10/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

@discardableResult
public func ~ (lhs: XAxisAnchor, rhs: LayoutPriority) -> XAxisAnchorExpression {
    return XAxisAnchorExpression(anchor: lhs).with(priority: rhs)
}

@discardableResult
public func ~ (lhs: XAxisAnchorExpression, rhs: LayoutPriority) -> XAxisAnchorExpression {
    return lhs.with(priority: rhs)
}

@discardableResult
public func ~ (lhs: XAxisAnchorPair, rhs: LayoutPriority) -> XAxisAnchorPairExpression {
    return XAxisAnchorPairExpression(anchors: lhs).with(priority: rhs)
}

@discardableResult
public func ~ (lhs: XAxisAnchorPairExpression, rhs: LayoutPriority) -> XAxisAnchorPairExpression {
    return lhs.with(priority: rhs)
}
