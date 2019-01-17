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
    return lhs == LayoutConfiguration.constant(rhs)
}

@discardableResult
public func == (lhs: LayoutDimension, rhs: LayoutConfiguration) -> Constraint {
    return LayoutRelationship(lhs, .equal, nil, rhs).constraint
}

// MARK: LayoutDimension <= Constant
@discardableResult
public func <= (lhs: LayoutDimension, rhs: LayoutConstant) -> Constraint {
    return lhs <= LayoutConfiguration.constant(rhs)
}

@discardableResult
public func <= (lhs: LayoutDimension, rhs: LayoutConfiguration) -> Constraint {
    return LayoutRelationship(lhs, .lessThanOrEqual, nil, rhs).constraint
}

// MARK: LayoutDimension >= Constant
@discardableResult
public func >= (lhs: LayoutDimension, rhs: LayoutConstant) -> Constraint {
    return lhs >= LayoutConfiguration.constant(rhs)
}

@discardableResult
public func >= (lhs: LayoutDimension, rhs: LayoutConfiguration) -> Constraint {
    return LayoutRelationship(lhs, .greaterThanOrEqual, nil, rhs).constraint
}
