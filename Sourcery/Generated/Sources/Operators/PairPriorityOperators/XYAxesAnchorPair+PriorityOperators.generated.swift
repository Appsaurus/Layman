// Generated using Sourcery 0.15.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

//
//  +PriorityOperators.swift
//  Layman
//
//  Created by Brian Strobach on 1/4/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//
@discardableResult
public func ~ (lhs: XYAxesAnchorPair, rhs: LayoutPriority) -> XYAxesAnchorPairExpression {
    return XYAxesAnchorPairExpression(variable: lhs).priority(rhs)
}

@discardableResult
public func ~ (lhs: XYAxesAnchorPairExpression, rhs: LayoutPriority) -> XYAxesAnchorPairExpression {
    return lhs.priority(rhs)
}
