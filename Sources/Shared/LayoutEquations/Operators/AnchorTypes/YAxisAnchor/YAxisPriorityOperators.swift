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
public func ~ (lhs: YAxisAnchors, rhs: LayoutPriority) -> YAxisAnchorsExpression {
    return YAxisAnchorsExpression(anchors: lhs).with(priority: rhs)
}

@discardableResult
public func ~ (lhs: YAxisAnchorsExpression, rhs: LayoutPriority) -> YAxisAnchorsExpression {
    return lhs.with(priority: rhs)
}
