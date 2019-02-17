// Generated using Sourcery 0.15.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

//
//  LayoutDimension+RelationOperators.swift
//  Layman
//
//  Created by Brian Strobach on 1/4/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

// MARK: - Equal

// MARK: Anchor == Anchor
@discardableResult
public func .= (lhs: LayoutDimension, rhs: LayoutDimension) -> LayoutDimension.Solution {
    return lhs.equal(to: rhs)
}

// MARK: Anchor == Expression
@discardableResult
public func .= (lhs: LayoutDimension, rhs: LayoutDimensionExpression) -> LayoutDimension.Solution {
    return lhs.equal(to: rhs)
}

// MARK: - LessThanOrEqual

// MARK: Anchor <= Anchor
@discardableResult
public func ≤ (lhs: LayoutDimension, rhs: LayoutDimension) -> LayoutDimension.Solution {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: Anchor <= Expression
@discardableResult
public func ≤ (lhs: LayoutDimension, rhs: LayoutDimensionExpression) -> LayoutDimension.Solution {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: - GreaterThanOrEqual

// MARK: Anchor >= Anchor
@discardableResult
public func ≥ (lhs: LayoutDimension, rhs: LayoutDimension) -> LayoutDimension.Solution {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: Anchor >= Expression
@discardableResult
public func ≥ (lhs: LayoutDimension, rhs: LayoutDimensionExpression) -> LayoutDimension.Solution {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: Anchor >=< Anchor
@discardableResult
public func ≥≤ (lhs: LayoutDimension, rhs: LayoutDimension) -> LayoutDimension.Solution {
    return lhs.insetFrom(to: rhs)
}

// MARK: Anchor >=< Expression
@discardableResult
public func ≥≤ (lhs: LayoutDimension, rhs: LayoutDimensionExpression) -> LayoutDimension.Solution {
    return lhs.insetFrom(to: rhs)
}

// MARK: Anchor <=> Anchor
@discardableResult
public func ≤≥ (lhs: LayoutDimension, rhs: LayoutDimension) -> LayoutDimension.Solution {
    return lhs.outsetFrom(to: rhs)
}

// MARK: Anchor <=> Expression
@discardableResult
public func ≤≥ (lhs: LayoutDimension, rhs: LayoutDimensionExpression) -> LayoutDimension.Solution {
    return lhs.outsetFrom(to: rhs)
}
