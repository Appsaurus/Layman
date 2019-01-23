//
//  EdgeAnchorGroup+ConstantArithmeticOperators.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/10/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.

// MARK: EdgeAnchors Constant Arithmetic
//@discardableResult
//public func + (lhs: EdgeAnchorGroup, rhs: LayoutConstant) -> EdgeAnchorGroupExpression {
//    return lhs.plus(rhs)
//}
//
//@discardableResult
//public func - (lhs: EdgeAnchorGroup, rhs: LayoutConstant) -> EdgeAnchorGroupExpression {
//    return lhs.minus(rhs)
//}
//
//@discardableResult
//public func * (lhs: EdgeAnchorGroup, rhs: LayoutConstant) -> EdgeAnchorGroupExpression {
//    return lhs.times(rhs)
//}
//
//@discardableResult
//public func / (lhs: EdgeAnchorGroup, rhs: LayoutConstant) -> EdgeAnchorGroupExpression {
//    return lhs.divided(by: rhs)
//}

// MARK: UIEdgeInset Constant
@discardableResult
public func + (lhs: EdgeAnchorGroup, rhs: LayoutInset) -> EdgeAnchorGroupExpression {
    return lhs.plus(inset: rhs)
}

@discardableResult
public func - (lhs: EdgeAnchorGroup, rhs: LayoutInset) -> EdgeAnchorGroupExpression {
    return lhs.minus(inset: rhs)
}

//// MARK: EdgeAnchorGroupExpression
//@discardableResult
//public func / (lhs: EdgeAnchorGroupExpression, rhs: LayoutConstant) -> EdgeAnchorGroupExpression {
//    return lhs.divided(by: rhs)
//}
