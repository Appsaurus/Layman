//
//  EdgeAnchorGroup+InsetArithmeticOperators.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/10/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.


// MARK: UIEdgeInset Constant
@discardableResult
public func + (lhs: EdgeAnchorGroup, rhs: LayoutInset) -> EdgeAnchorGroupExpression {
    return lhs.plus(inset: rhs)
}

@discardableResult
public func - (lhs: EdgeAnchorGroup, rhs: LayoutInset) -> EdgeAnchorGroupExpression {
    return lhs.minus(inset: rhs)
}
