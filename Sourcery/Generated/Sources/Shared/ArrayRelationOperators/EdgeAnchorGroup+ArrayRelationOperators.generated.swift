// Generated using Sourcery 0.15.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

//
//  EdgeAnchorGroup+ArrayRelationOperators.swift
//  Layman
//
//  Created by Brian Strobach on 1/4/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

// MARK: - Equal

// MARK: Anchor == Anchor Array
@discardableResult
public func .= (lhs: EdgeAnchorGroup, rhs: EdgeAnchorGroups) -> [EdgeAnchorGroup.Solution] {
    return lhs.equal(to: rhs)
}

// MARK: Anchor Array == Anchor
@discardableResult
public func .= (lhs: EdgeAnchorGroups, rhs: EdgeAnchorGroup) -> [EdgeAnchorGroup.Solution] {
    return lhs.equal(to: rhs)
}

// MARK: Anchor Array == Anchor Array
@discardableResult
public func .= (lhs: EdgeAnchorGroups, rhs: EdgeAnchorGroups) -> [[EdgeAnchorGroup.Solution]] {
    return lhs.equal(to: rhs)
}

// MARK: Anchor == Expression Array
@discardableResult
public func .= (lhs: EdgeAnchorGroup, rhs: EdgeAnchorGroupExpressions) -> [EdgeAnchorGroup.Solution] {
    return lhs.equal(to: rhs)
}

// MARK: Anchor Array == Expression
@discardableResult
public func .= (lhs: EdgeAnchorGroups, rhs: EdgeAnchorGroupExpression) -> [EdgeAnchorGroup.Solution] {
    return lhs.equal(to: rhs)
}

// MARK: Anchor Array == Expression Array
@discardableResult
public func .= (lhs: EdgeAnchorGroups, rhs: EdgeAnchorGroupExpressions) -> [[EdgeAnchorGroup.Solution]] {
    return lhs.equal(to: rhs)
}

// MARK: - LessThanOrEqual

// MARK: Anchor <= Anchor Array
@discardableResult
public func ≤ (lhs: EdgeAnchorGroup, rhs: EdgeAnchorGroups) -> [EdgeAnchorGroup.Solution] {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: Anchor Array <= Anchor
@discardableResult
public func ≤ (lhs: EdgeAnchorGroups, rhs: EdgeAnchorGroup) -> [EdgeAnchorGroup.Solution] {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: Anchor Array <= Anchor Array
@discardableResult
public func ≤ (lhs: EdgeAnchorGroups, rhs: EdgeAnchorGroups) -> [[EdgeAnchorGroup.Solution]] {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: Anchor <= Expression Array
@discardableResult
public func ≤ (lhs: EdgeAnchorGroup, rhs: EdgeAnchorGroupExpressions) -> [EdgeAnchorGroup.Solution] {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: Anchor Array <= Expression
@discardableResult
public func ≤ (lhs: EdgeAnchorGroups, rhs: EdgeAnchorGroupExpression) -> [EdgeAnchorGroup.Solution] {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: Anchor Array <= Expression Array
@discardableResult
public func ≤ (lhs: EdgeAnchorGroups, rhs: EdgeAnchorGroupExpressions) -> [[EdgeAnchorGroup.Solution]] {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: - GreaterThanOrEqual

// MARK: Anchor >= Anchor Array
@discardableResult
public func ≥ (lhs: EdgeAnchorGroup, rhs: EdgeAnchorGroups) -> [EdgeAnchorGroup.Solution] {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: Anchor Array >= Anchor
@discardableResult
public func ≥ (lhs: EdgeAnchorGroups, rhs: EdgeAnchorGroup) -> [EdgeAnchorGroup.Solution] {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: Anchor Array >= Anchor Array
@discardableResult
public func ≥ (lhs: EdgeAnchorGroups, rhs: EdgeAnchorGroups) -> [[EdgeAnchorGroup.Solution]] {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: Anchor >= Expression Array
@discardableResult
public func ≥ (lhs: EdgeAnchorGroup, rhs: EdgeAnchorGroupExpressions) -> [EdgeAnchorGroup.Solution] {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: Anchor Array >= Expression
@discardableResult
public func ≥ (lhs: EdgeAnchorGroups, rhs: EdgeAnchorGroupExpression) -> [EdgeAnchorGroup.Solution] {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: Anchor Array >= Expression Array
@discardableResult
public func ≥ (lhs: EdgeAnchorGroups, rhs: EdgeAnchorGroupExpressions) -> [[EdgeAnchorGroup.Solution]] {
    return lhs.greaterThanOrEqual(to: rhs)
}
