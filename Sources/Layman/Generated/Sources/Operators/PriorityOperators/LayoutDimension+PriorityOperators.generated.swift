// Generated using Sourcery 0.15.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

//
//  LayoutDimension+PriorityOperators.swift
//  Layman
//
//  Created by Brian Strobach on 1/4/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

@discardableResult
public func ~ (lhs: LayoutDimension, rhs: LayoutPriority) -> LayoutDimensionExpression {
    return lhs.priority(rhs)
}

@discardableResult
public func ~ (lhs: LayoutDimensionExpression, rhs: LayoutPriority) -> LayoutDimensionExpression {
    return lhs.priority(rhs)
}
