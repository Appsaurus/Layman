//
//  LayoutDimensionPriorityOperators.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/10/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

@discardableResult
public func ~ (lhs: LayoutDimension, rhs: LayoutPriority) -> LayoutDimensionExpression {
    return LayoutDimensionExpression(anchor: lhs).with(priority: rhs)
}

@discardableResult
public func ~ (lhs: LayoutDimensionExpression, rhs: LayoutPriority) -> LayoutDimensionExpression {
    return lhs.with(priority: rhs)
}

@discardableResult
public func ~ (lhs: SizeAnchorPair, rhs: LayoutPriority) -> SizeAnchorExpression {
    return SizeAnchorExpression(anchors: lhs).with(priority: rhs)
}

@discardableResult
public func ~ (lhs: SizeAnchorExpression, rhs: LayoutPriority) -> SizeAnchorExpression {
    return lhs.with(priority: rhs)
}
