// Generated using Sourcery 0.15.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

//
//  EdgeAnchorGroup+RelationOperators.swift
//  Layman
//
//  Created by Brian Strobach on 1/4/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

// MARK: EdgeAnchorGroup attribute inferred from Anchor

// MARK: EdgeAnchorGroup == Anchor
@discardableResult
public func .= (lhs: EdgeAnchorGroup, rhs: EdgeAnchorGroup) -> EdgeAnchorGroup.Solution {
    return lhs.equal(to: rhs)
}

// MARK: EdgeAnchorGroup <= Anchor
@discardableResult
public func ≤ (lhs: EdgeAnchorGroup, rhs: EdgeAnchorGroup) -> EdgeAnchorGroup.Solution {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: EdgeAnchorGroup >= Anchor
@discardableResult
public func ≥ (lhs: EdgeAnchorGroup, rhs: EdgeAnchorGroup) -> EdgeAnchorGroup.Solution {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: EdgeAnchorGroup >=< Anchor
@discardableResult
public func ≥≤ (lhs: EdgeAnchorGroup, rhs: EdgeAnchorGroup) -> EdgeAnchorGroup.Solution {
    return lhs.insetOrEqual(to: rhs)
}

// MARK: EdgeAnchorGroup <=> Anchor
@discardableResult
public func ≤≥ (lhs: EdgeAnchorGroup, rhs: EdgeAnchorGroup) -> EdgeAnchorGroup.Solution {
    return lhs.outsetOrEqual(to: rhs)
}

// MARK: EdgeAnchorGroup attribute inferred from Anchor collection

// MARK: EdgeAnchorGroup == [Anchor]
@discardableResult
public func .= (lhs: EdgeAnchorGroup, rhs: [EdgeAnchorGroup]) -> [EdgeAnchorGroup.Solution] {
    return rhs.map({lhs .= $0})
}

// MARK: EdgeAnchorGroup <= [Anchor]
@discardableResult
public func ≤ (lhs: EdgeAnchorGroup, rhs: [EdgeAnchorGroup]) -> [EdgeAnchorGroup.Solution] {
    return rhs.map({lhs ≤ $0})
}

// MARK: EdgeAnchorGroup >= [Anchor]
@discardableResult
public func ≥ (lhs: EdgeAnchorGroup, rhs: [EdgeAnchorGroup]) -> [EdgeAnchorGroup.Solution] {
    return rhs.map({lhs ≥ $0})
}

// MARK: EdgeAnchorGroup >=< [Anchor]
@discardableResult
public func ≥≤ (lhs: EdgeAnchorGroup, rhs: [EdgeAnchorGroup]) -> [EdgeAnchorGroup.Solution] {
    return rhs.map({lhs ≥≤ $0})
}

// MARK: EdgeAnchorGroup <=> [Anchor]
@discardableResult
public func ≤≥ (lhs: EdgeAnchorGroup, rhs: [EdgeAnchorGroup]) -> [EdgeAnchorGroup.Solution] {
    return rhs.map({lhs ≤≥ $0})
}

// MARK: EdgeAnchorGroup array attributes inferred from Anchor

// MARK: [EdgeAnchorGroup] == Anchor
@discardableResult
public func .= (lhs: [EdgeAnchorGroup], rhs: EdgeAnchorGroup) -> [EdgeAnchorGroup.Solution] {
    return lhs.map { $0 .= rhs }
}

// MARK: [EdgeAnchorGroup] <= Anchor
@discardableResult
public func ≤ (lhs: [EdgeAnchorGroup], rhs: EdgeAnchorGroup) -> [EdgeAnchorGroup.Solution] {
    return lhs.map { $0 ≤ rhs }
}

// MARK: [EdgeAnchorGroup] >= Anchor
@discardableResult
public func ≥ (lhs: [EdgeAnchorGroup], rhs: EdgeAnchorGroup) -> [EdgeAnchorGroup.Solution] {
    return lhs.map { $0 ≥ rhs }
}

// MARK: [EdgeAnchorGroup] >=< Anchor
@discardableResult
public func ≥≤ (lhs: [EdgeAnchorGroup], rhs: EdgeAnchorGroup) -> [EdgeAnchorGroup.Solution] {
    return lhs.map { $0 ≥≤ rhs }
}

// MARK: [EdgeAnchorGroup] <=> Anchor
@discardableResult
public func ≤≥ (lhs: [EdgeAnchorGroup], rhs: EdgeAnchorGroup) -> [EdgeAnchorGroup.Solution] {
    return lhs.map { $0 ≤≥ rhs }
}

// MARK: EdgeAnchorGroup array attributes inferred from Anchor collection

// MARK: [EdgeAnchorGroup] == [Anchor]
@discardableResult
public func .= (lhs: [EdgeAnchorGroup], rhs: [EdgeAnchorGroup]) -> [[EdgeAnchorGroup.Solution]] {
    return lhs.map { $0 .= rhs }
}

// MARK: [EdgeAnchorGroup] <= [Anchor]
@discardableResult
public func ≤ (lhs: [EdgeAnchorGroup], rhs: [EdgeAnchorGroup]) -> [[EdgeAnchorGroup.Solution]] {
    return lhs.map { $0 ≤ rhs }
}

// MARK: [EdgeAnchorGroup] >= [Anchor]
@discardableResult
public func ≥ (lhs: [EdgeAnchorGroup], rhs: [EdgeAnchorGroup]) -> [[EdgeAnchorGroup.Solution]] {
    return lhs.map { $0 ≥ rhs }
}

// MARK: [EdgeAnchorGroup] >=< [Anchor]
@discardableResult
public func ≥≤ (lhs: [EdgeAnchorGroup], rhs: [EdgeAnchorGroup]) -> [[EdgeAnchorGroup.Solution]] {
    return lhs.map { $0 ≥≤ rhs }
}

// MARK: [EdgeAnchorGroup] <=> [Anchor]
@discardableResult
public func ≤≥ (lhs: [EdgeAnchorGroup], rhs: [EdgeAnchorGroup]) -> [[EdgeAnchorGroup.Solution]] {
    return lhs.map { $0 ≤≥ rhs }
}

// MARK: EdgeAnchorGroup attribute inferred from expression

// MARK: EdgeAnchorGroup == Expression
@discardableResult
public func .= (lhs: EdgeAnchorGroup, rhs: EdgeAnchorGroupExpression) -> EdgeAnchorGroup.Solution {
    return lhs.equal(to: rhs)
}

// MARK: EdgeAnchorGroup <= Expression
@discardableResult
public func ≤ (lhs: EdgeAnchorGroup, rhs: EdgeAnchorGroupExpression) -> EdgeAnchorGroup.Solution {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: EdgeAnchorGroup >= Expression
@discardableResult
public func ≥ (lhs: EdgeAnchorGroup, rhs: EdgeAnchorGroupExpression) -> EdgeAnchorGroup.Solution {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: EdgeAnchorGroup >=< Expression
@discardableResult
public func ≥≤ (lhs: EdgeAnchorGroup, rhs: EdgeAnchorGroupExpression) -> EdgeAnchorGroup.Solution {
    return lhs.insetOrEqual(to: rhs)
}

// MARK: EdgeAnchorGroup <=> Expression
@discardableResult
public func ≤≥ (lhs: EdgeAnchorGroup, rhs: EdgeAnchorGroupExpression) -> EdgeAnchorGroup.Solution {
    return lhs.outsetOrEqual(to: rhs)
}

// MARK: EdgeAnchorGroup attribute inferred from expression collection

// MARK: EdgeAnchorGroup == Expressions
@discardableResult
public func .= (lhs: EdgeAnchorGroup, rhs: [EdgeAnchorGroupExpression]) -> [EdgeAnchorGroup.Solution] {
    return rhs.map({lhs .= $0})
}

// MARK: EdgeAnchorGroup <= Expressions
@discardableResult
public func ≤ (lhs: EdgeAnchorGroup, rhs: [EdgeAnchorGroupExpression]) -> [EdgeAnchorGroup.Solution] {
    return rhs.map({lhs ≤ $0})
}

// MARK: EdgeAnchorGroup >= Expressions
@discardableResult
public func ≥ (lhs: EdgeAnchorGroup, rhs: [EdgeAnchorGroupExpression]) -> [EdgeAnchorGroup.Solution] {
    return rhs.map({lhs ≥ $0})
}

// MARK: EdgeAnchorGroup >=< Expression
@discardableResult
public func ≥≤ (lhs: EdgeAnchorGroup, rhs: [EdgeAnchorGroupExpression]) -> [EdgeAnchorGroup.Solution] {
    return rhs.map({lhs ≥≤ $0})
}

// MARK: EdgeAnchorGroup <=> Expression
@discardableResult
public func ≤≥ (lhs: EdgeAnchorGroup, rhs: [EdgeAnchorGroupExpression]) -> [EdgeAnchorGroup.Solution] {
    return rhs.map({lhs ≤≥ $0})
}

// MARK: EdgeAnchorGroup array attributes inferred from Expression

// MARK: [EdgeAnchorGroup] == Expression
@discardableResult
public func .= (lhs: [EdgeAnchorGroup], rhs: EdgeAnchorGroupExpression) -> [EdgeAnchorGroup.Solution] {
    return lhs.map { $0 .= rhs }
}

// MARK: [EdgeAnchorGroup] <= Expression
@discardableResult
public func ≤ (lhs: [EdgeAnchorGroup], rhs: EdgeAnchorGroupExpression) -> [EdgeAnchorGroup.Solution] {
    return lhs.map { $0 ≤ rhs }
}

// MARK: [EdgeAnchorGroup] >= Expression
@discardableResult
public func ≥ (lhs: [EdgeAnchorGroup], rhs: EdgeAnchorGroupExpression) -> [EdgeAnchorGroup.Solution] {
    return lhs.map { $0 ≥ rhs }
}

// MARK: [EdgeAnchorGroup] >=< Expression
@discardableResult
public func ≥≤ (lhs: [EdgeAnchorGroup], rhs: EdgeAnchorGroupExpression) -> [EdgeAnchorGroup.Solution] {
    return lhs.map { $0 ≥≤ rhs }
}

// MARK: [EdgeAnchorGroup] <=> Expression
@discardableResult
public func ≤≥ (lhs: [EdgeAnchorGroup], rhs: EdgeAnchorGroupExpression) -> [EdgeAnchorGroup.Solution] {
    return lhs.map { $0 ≤≥ rhs }
}

// MARK: EdgeAnchorGroup array attributes inferred from expression collection

// MARK: [EdgeAnchorGroup] == [Expression]
@discardableResult
public func .= (lhs: [EdgeAnchorGroup], rhs: [EdgeAnchorGroupExpression]) -> [[EdgeAnchorGroup.Solution]] {
    return lhs.map { $0 .= rhs }
}

// MARK: [EdgeAnchorGroup] <= [Expression]
@discardableResult
public func ≤ (lhs: [EdgeAnchorGroup], rhs: [EdgeAnchorGroupExpression]) -> [[EdgeAnchorGroup.Solution]] {
    return lhs.map { $0 ≤ rhs }
}

// MARK: [EdgeAnchorGroup] >= [Expression]
@discardableResult
public func ≥ (lhs: [EdgeAnchorGroup], rhs: [EdgeAnchorGroupExpression]) -> [[EdgeAnchorGroup.Solution]] {
    return lhs.map { $0 ≥ rhs }
}

// MARK: [EdgeAnchorGroup] >=< [Expression]
@discardableResult
public func ≥≤ (lhs: [EdgeAnchorGroup], rhs: [EdgeAnchorGroupExpression]) -> [[EdgeAnchorGroup.Solution]] {
    return lhs.map { $0 ≥≤ rhs }
}

// MARK: [EdgeAnchorGroup] <=> [Expression]
@discardableResult
public func ≤≥ (lhs: [EdgeAnchorGroup], rhs: [EdgeAnchorGroupExpression]) -> [[EdgeAnchorGroup.Solution]] {
    return lhs.map { $0 ≤≥ rhs }
}
