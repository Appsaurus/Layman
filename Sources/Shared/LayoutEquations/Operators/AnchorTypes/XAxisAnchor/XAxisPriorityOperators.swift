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
public func ~ (lhs: XAxisAnchors, rhs: LayoutPriority) -> XAxisAnchorsExpression {
    return XAxisAnchorsExpression(anchors: lhs).with(priority: rhs)
}

@discardableResult
public func ~ (lhs: XAxisAnchorsExpression, rhs: LayoutPriority) -> XAxisAnchorsExpression {
    return lhs.with(priority: rhs)
}
