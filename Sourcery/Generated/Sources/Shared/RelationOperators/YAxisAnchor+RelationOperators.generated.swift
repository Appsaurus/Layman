// Generated using Sourcery 0.15.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

//
//  YAxisAnchor+RelationOperators.swift
//  Layman
//
//  Created by Brian Strobach on 1/4/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

// MARK: - Equal

// MARK: Anchor == Anchor
@discardableResult
public func .= (lhs: YAxisAnchor, rhs: YAxisAnchor) -> YAxisAnchor.Solution {
    return lhs.equal(to: rhs)
}

// MARK: Anchor == Expression
@discardableResult
public func .= (lhs: YAxisAnchor, rhs: YAxisAnchorExpression) -> YAxisAnchor.Solution {
    return lhs.equal(to: rhs)
}

// MARK: - LessThanOrEqual

// MARK: Anchor <= Anchor
@discardableResult
public func ≤ (lhs: YAxisAnchor, rhs: YAxisAnchor) -> YAxisAnchor.Solution {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: Anchor <= Expression
@discardableResult
public func ≤ (lhs: YAxisAnchor, rhs: YAxisAnchorExpression) -> YAxisAnchor.Solution {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: - GreaterThanOrEqual

// MARK: Anchor >= Anchor
@discardableResult
public func ≥ (lhs: YAxisAnchor, rhs: YAxisAnchor) -> YAxisAnchor.Solution {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: Anchor >= Expression
@discardableResult
public func ≥ (lhs: YAxisAnchor, rhs: YAxisAnchorExpression) -> YAxisAnchor.Solution {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: Anchor >=< Anchor
@discardableResult
public func ≥≤ (lhs: YAxisAnchor, rhs: YAxisAnchor) -> YAxisAnchor.Solution {
    return lhs.insetLessThanOrEqual(to: rhs)
}

// MARK: Anchor >=< Expression
@discardableResult
public func ≥≤ (lhs: YAxisAnchor, rhs: YAxisAnchorExpression) -> YAxisAnchor.Solution {
    return lhs.insetLessThanOrEqual(to: rhs)
}

// MARK: Anchor <=> Anchor
@discardableResult
public func ≤≥ (lhs: YAxisAnchor, rhs: YAxisAnchor) -> YAxisAnchor.Solution {
    return lhs.outsetGreaterThanOrEqual(to: rhs)
}

// MARK: Anchor <=> Expression
@discardableResult
public func ≤≥ (lhs: YAxisAnchor, rhs: YAxisAnchorExpression) -> YAxisAnchor.Solution {
    return lhs.outsetGreaterThanOrEqual(to: rhs)
}
