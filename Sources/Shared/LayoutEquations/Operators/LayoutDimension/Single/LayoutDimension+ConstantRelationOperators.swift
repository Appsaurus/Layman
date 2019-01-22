//
//  LayoutDimension+ConstantRelationOperators.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/15/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

// MARK: LayoutDimension == Constant
@discardableResult
public func == (lhs: LayoutDimension, rhs: LayoutConstant) -> Constraint {
    return lhs.equal(to: rhs)
}

@discardableResult
public func == (lhs: LayoutDimension, rhs: LayoutConfiguration) -> Constraint {
    return lhs.equal(to: rhs)
}

// MARK: LayoutDimension <= Constant
@discardableResult
public func <= (lhs: LayoutDimension, rhs: LayoutConstant) -> Constraint {
    return lhs.lessThanOrEqual(to: rhs)
}

@discardableResult
public func <= (lhs: LayoutDimension, rhs: LayoutConfiguration) -> Constraint {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: LayoutDimension >= Constant
@discardableResult
public func >= (lhs: LayoutDimension, rhs: LayoutConstant) -> Constraint {
    return lhs.greaterThanOrEqual(to: rhs)
}

@discardableResult
public func >= (lhs: LayoutDimension, rhs: LayoutConfiguration) -> Constraint {
    return lhs.greaterThanOrEqual(to: rhs)
}
