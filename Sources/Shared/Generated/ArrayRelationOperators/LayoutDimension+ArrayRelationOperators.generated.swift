// Generated using Sourcery 0.15.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

//
//  LayoutDimension+ArrayRelationOperators.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/4/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

// MARK: - Equal

// MARK: Anchor == Anchor Array
@discardableResult
public func == (lhs: LayoutDimension, rhs: LayoutDimensions) -> Constraints {
    return lhs.equal(to: rhs)
}

// MARK: Anchor Array == Anchor
@discardableResult
public func == (lhs: LayoutDimensions, rhs: LayoutDimension) -> Constraints {
    return lhs.equal(to: rhs)
}

// MARK: Anchor Array == Anchor Array
@discardableResult
public func == (lhs: LayoutDimensions, rhs: LayoutDimensions) -> [Constraints] {
    return lhs.equal(to: rhs)
}

// MARK: Anchor == Expression Array
@discardableResult
public func == (lhs: LayoutDimension, rhs: LayoutDimensionExpressions) -> Constraints {
    return lhs.equal(to: rhs)
}

// MARK: Anchor Array == Expression
@discardableResult
public func == (lhs: LayoutDimensions, rhs: LayoutDimensionExpression) -> Constraints {
    return lhs.equal(to: rhs)
}

// MARK: Anchor Array == Expression Array
@discardableResult
public func == (lhs: LayoutDimensions, rhs: LayoutDimensionExpressions) -> [Constraints] {
    return lhs.equal(to: rhs)
}

// MARK: - LessThanOrEqual

// MARK: Anchor <= Anchor Array
@discardableResult
public func <= (lhs: LayoutDimension, rhs: LayoutDimensions) -> Constraints {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: Anchor Array <= Anchor
@discardableResult
public func <= (lhs: LayoutDimensions, rhs: LayoutDimension) -> Constraints {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: Anchor Array <= Anchor Array
@discardableResult
public func <= (lhs: LayoutDimensions, rhs: LayoutDimensions) -> [Constraints] {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: Anchor <= Expression Array
@discardableResult
public func <= (lhs: LayoutDimension, rhs: LayoutDimensionExpressions) -> Constraints {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: Anchor Array <= Expression
@discardableResult
public func <= (lhs: LayoutDimensions, rhs: LayoutDimensionExpression) -> Constraints {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: Anchor Array <= Expression Array
@discardableResult
public func <= (lhs: LayoutDimensions, rhs: LayoutDimensionExpressions) -> [Constraints] {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: - GreaterThanOrEqual

// MARK: Anchor >= Anchor Array
@discardableResult
public func >= (lhs: LayoutDimension, rhs: LayoutDimensions) -> Constraints {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: Anchor Array >= Anchor
@discardableResult
public func >= (lhs: LayoutDimensions, rhs: LayoutDimension) -> Constraints {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: Anchor Array >= Anchor Array
@discardableResult
public func >= (lhs: LayoutDimensions, rhs: LayoutDimensions) -> [Constraints] {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: Anchor >= Expression Array
@discardableResult
public func >= (lhs: LayoutDimension, rhs: LayoutDimensionExpressions) -> Constraints {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: Anchor Array >= Expression
@discardableResult
public func >= (lhs: LayoutDimensions, rhs: LayoutDimensionExpression) -> Constraints {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: Anchor Array >= Expression Array
@discardableResult
public func >= (lhs: LayoutDimensions, rhs: LayoutDimensionExpressions) -> [Constraints] {
    return lhs.greaterThanOrEqual(to: rhs)
}
