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
public func ~ (lhs: YAxisAnchorPair, rhs: LayoutPriority) -> YAxisAnchorPairExpression {
    return YAxisAnchorPairExpression(variable: lhs).priority(rhs)
}

@discardableResult
public func ~ (lhs: YAxisAnchorPairExpression, rhs: LayoutPriority) -> YAxisAnchorPairExpression {
    return lhs.priority(rhs)
}
