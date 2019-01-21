// Generated using Sourcery 0.15.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

//
//  +PriorityOperators.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/4/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//
@discardableResult
public func ~ (lhs: LayoutDimensionPair, rhs: LayoutPriority) -> LayoutDimensionPairExpression {
    return LayoutDimensionPairExpression(anchor: lhs).with(priority: rhs)
}

@discardableResult
public func ~ (lhs: LayoutDimensionPairExpression, rhs: LayoutPriority) -> LayoutDimensionPairExpression {
    return lhs.with(priority: rhs)
}
