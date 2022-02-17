// Generated using Sourcery 0.15.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

//
//  EdgeAnchorGroup+InsetArithmeticOperators.swift
//  Layman
//
//  Created by Brian Strobach on 1/10/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.

// MARK: UIEdgeInset Constant
@discardableResult
public func .+ (lhs: EdgeAnchorGroup, rhs: RelativeLayoutPadding) -> EdgeAnchorGroupExpression {
    return lhs.plus(rhs)
}

@discardableResult
public func .+ (lhs: EdgeAnchorGroupExpression, rhs: RelativeLayoutPadding) -> EdgeAnchorGroupExpression {
    return lhs.plus(rhs)
}
