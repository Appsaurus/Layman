// Generated using Sourcery 0.15.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

//
//  YAxisAnchor+ArrayRelationOperators.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/4/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

// MARK: - Equal

// MARK: Anchor == Anchor Array
@discardableResult
public func .= (lhs: YAxisAnchor, rhs: YAxisAnchors) -> [YAxisAnchor.Solution] {
    return lhs.equal(to: rhs)
}

// MARK: Anchor Array == Anchor
@discardableResult
public func .= (lhs: YAxisAnchors, rhs: YAxisAnchor) -> [YAxisAnchor.Solution] {
    return lhs.equal(to: rhs)
}

// MARK: Anchor Array == Anchor Array
@discardableResult
public func .= (lhs: YAxisAnchors, rhs: YAxisAnchors) -> [[YAxisAnchor.Solution]] {
    return lhs.equal(to: rhs)
}

// MARK: Anchor == Expression Array
@discardableResult
public func .= (lhs: YAxisAnchor, rhs: YAxisAnchorExpressions) -> [YAxisAnchor.Solution] {
    return lhs.equal(to: rhs)
}

// MARK: Anchor Array == Expression
@discardableResult
public func .= (lhs: YAxisAnchors, rhs: YAxisAnchorExpression) -> [YAxisAnchor.Solution] {
    return lhs.equal(to: rhs)
}

// MARK: Anchor Array == Expression Array
@discardableResult
public func .= (lhs: YAxisAnchors, rhs: YAxisAnchorExpressions) -> [[YAxisAnchor.Solution]] {
    return lhs.equal(to: rhs)
}

// MARK: - LessThanOrEqual

// MARK: Anchor <= Anchor Array
@discardableResult
public func ≤ (lhs: YAxisAnchor, rhs: YAxisAnchors) -> [YAxisAnchor.Solution] {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: Anchor Array <= Anchor
@discardableResult
public func ≤ (lhs: YAxisAnchors, rhs: YAxisAnchor) -> [YAxisAnchor.Solution] {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: Anchor Array <= Anchor Array
@discardableResult
public func ≤ (lhs: YAxisAnchors, rhs: YAxisAnchors) -> [[YAxisAnchor.Solution]] {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: Anchor <= Expression Array
@discardableResult
public func ≤ (lhs: YAxisAnchor, rhs: YAxisAnchorExpressions) -> [YAxisAnchor.Solution] {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: Anchor Array <= Expression
@discardableResult
public func ≤ (lhs: YAxisAnchors, rhs: YAxisAnchorExpression) -> [YAxisAnchor.Solution] {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: Anchor Array <= Expression Array
@discardableResult
public func ≤ (lhs: YAxisAnchors, rhs: YAxisAnchorExpressions) -> [[YAxisAnchor.Solution]] {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: - GreaterThanOrEqual

// MARK: Anchor >= Anchor Array
@discardableResult
public func ≥ (lhs: YAxisAnchor, rhs: YAxisAnchors) -> [YAxisAnchor.Solution] {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: Anchor Array >= Anchor
@discardableResult
public func ≥ (lhs: YAxisAnchors, rhs: YAxisAnchor) -> [YAxisAnchor.Solution] {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: Anchor Array >= Anchor Array
@discardableResult
public func ≥ (lhs: YAxisAnchors, rhs: YAxisAnchors) -> [[YAxisAnchor.Solution]] {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: Anchor >= Expression Array
@discardableResult
public func ≥ (lhs: YAxisAnchor, rhs: YAxisAnchorExpressions) -> [YAxisAnchor.Solution] {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: Anchor Array >= Expression
@discardableResult
public func ≥ (lhs: YAxisAnchors, rhs: YAxisAnchorExpression) -> [YAxisAnchor.Solution] {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: Anchor Array >= Expression Array
@discardableResult
public func ≥ (lhs: YAxisAnchors, rhs: YAxisAnchorExpressions) -> [[YAxisAnchor.Solution]] {
    return lhs.greaterThanOrEqual(to: rhs)
}
