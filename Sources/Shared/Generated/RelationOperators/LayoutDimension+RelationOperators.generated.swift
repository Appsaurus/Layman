// Generated using Sourcery 0.15.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

//
//  LayoutDimension_RelationOperators.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/4/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

// MARK: - Equal

// MARK: Anchor == Anchor
@discardableResult
public func == (lhs: LayoutDimension, rhs: LayoutDimension) -> Constraint {
    return lhs.equal(to: rhs)
}

// MARK: Anchor == Expression
@discardableResult
public func == (lhs: LayoutDimension, rhs: LayoutDimensionExpression) -> Constraint {
    return lhs.equal(to: rhs)
}

// MARK: - LessThanOrEqual

// MARK: Anchor <= Anchor
@discardableResult
public func <= (lhs: LayoutDimension, rhs: LayoutDimension) -> Constraint {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: Anchor <= Expression
@discardableResult
public func <= (lhs: LayoutDimension, rhs: LayoutDimensionExpression) -> Constraint {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: - GreaterThanOrEqual

// MARK: Anchor >= Anchor
@discardableResult
public func >= (lhs: LayoutDimension, rhs: LayoutDimension) -> Constraint {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: Anchor >= Expression
@discardableResult
public func >= (lhs: LayoutDimension, rhs: LayoutDimensionExpression) -> Constraint {
    return lhs.greaterThanOrEqual(to: rhs)
}
