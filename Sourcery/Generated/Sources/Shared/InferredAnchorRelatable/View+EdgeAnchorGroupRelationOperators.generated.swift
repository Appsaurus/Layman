// Generated using Sourcery 0.15.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

//
//  View+EdgeAnchorGroupRelationOperators.swift
//  Layman
//
//  Created by Brian Strobach on 1/4/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

// MARK: View attribute inferred from Anchor

// MARK: View == Anchor
@discardableResult
public func .= (lhs: View, rhs: EdgeAnchorGroup) -> EdgeAnchorGroup.Solution {
    return lhs[keyPath: ...rhs].equal(to: rhs)
}

// MARK: View <= Anchor
@discardableResult
public func ≤ (lhs: View, rhs: EdgeAnchorGroup) -> EdgeAnchorGroup.Solution {
    return lhs[keyPath: ...rhs].lessThanOrEqual(to: rhs)
}

// MARK: View >= Anchor
@discardableResult
public func ≥ (lhs: View, rhs: EdgeAnchorGroup) -> EdgeAnchorGroup.Solution {
    return lhs[keyPath: ...rhs].greaterThanOrEqual(to: rhs)
}

// MARK: View >=< Anchor
@discardableResult
public func ≥≤ (lhs: View, rhs: EdgeAnchorGroup) -> EdgeAnchorGroup.Solution {
    return lhs[keyPath: ...rhs].inset(from: rhs)
}

// MARK: View <=> Anchor
@discardableResult
public func ≤≥ (lhs: View, rhs: EdgeAnchorGroup) -> EdgeAnchorGroup.Solution {
    return lhs[keyPath: ...rhs].outset(from: rhs)
}

// MARK: View attribute inferred from Anchor collection

// MARK: View == [Anchor]
@discardableResult
public func .= (lhs: View, rhs: [EdgeAnchorGroup]) -> [EdgeAnchorGroup.Solution] {
    return rhs.map({lhs .= $0})
}

// MARK: View <= [Anchor]
@discardableResult
public func ≤ (lhs: View, rhs: [EdgeAnchorGroup]) -> [EdgeAnchorGroup.Solution] {
    return rhs.map({lhs ≤ $0})
}

// MARK: View >= [Anchor]
@discardableResult
public func ≥ (lhs: View, rhs: [EdgeAnchorGroup]) -> [EdgeAnchorGroup.Solution] {
    return rhs.map({lhs ≥ $0})
}

// MARK: View >=< [Anchor]
@discardableResult
public func ≥≤ (lhs: View, rhs: [EdgeAnchorGroup]) -> [EdgeAnchorGroup.Solution] {
    return rhs.map({lhs ≥≤ $0})
}

// MARK: View <=> [Anchor]
@discardableResult
public func ≤≥ (lhs: View, rhs: [EdgeAnchorGroup]) -> [EdgeAnchorGroup.Solution] {
    return rhs.map({lhs ≤≥ $0})
}

// MARK: View array attributes inferred from Anchor

// MARK: [View] == Anchor
@discardableResult
public func .= (lhs: [View], rhs: EdgeAnchorGroup) -> [EdgeAnchorGroup.Solution] {
    return lhs.map { $0 .= rhs }
}

// MARK: [View] <= Anchor
@discardableResult
public func ≤ (lhs: [View], rhs: EdgeAnchorGroup) -> [EdgeAnchorGroup.Solution] {
    return lhs.map { $0 ≤ rhs }
}

// MARK: [View] >= Anchor
@discardableResult
public func ≥ (lhs: [View], rhs: EdgeAnchorGroup) -> [EdgeAnchorGroup.Solution] {
    return lhs.map { $0 ≥ rhs }
}

// MARK: [View] >=< Anchor
@discardableResult
public func ≥≤ (lhs: [View], rhs: EdgeAnchorGroup) -> [EdgeAnchorGroup.Solution] {
    return lhs.map { $0 ≥≤ rhs }
}

// MARK: [View] <=> Anchor
@discardableResult
public func ≤≥ (lhs: [View], rhs: EdgeAnchorGroup) -> [EdgeAnchorGroup.Solution] {
    return lhs.map { $0 ≤≥ rhs }
}

// MARK: View array attributes inferred from Anchor collection

// MARK: [View] == [Anchor]
@discardableResult
public func .= (lhs: [View], rhs: [EdgeAnchorGroup]) -> [[EdgeAnchorGroup.Solution]] {
    return lhs.map { $0 .= rhs }
}

// MARK: [View] <= [Anchor]
@discardableResult
public func ≤ (lhs: [View], rhs: [EdgeAnchorGroup]) -> [[EdgeAnchorGroup.Solution]] {
    return lhs.map { $0 ≤ rhs }
}

// MARK: [View] >= [Anchor]
@discardableResult
public func ≥ (lhs: [View], rhs: [EdgeAnchorGroup]) -> [[EdgeAnchorGroup.Solution]] {
    return lhs.map { $0 ≥ rhs }
}

// MARK: [View] >=< [Anchor]
@discardableResult
public func ≥≤ (lhs: [View], rhs: [EdgeAnchorGroup]) -> [[EdgeAnchorGroup.Solution]] {
    return lhs.map { $0 ≥≤ rhs }
}

// MARK: [View] <=> [Anchor]
@discardableResult
public func ≤≥ (lhs: [View], rhs: [EdgeAnchorGroup]) -> [[EdgeAnchorGroup.Solution]] {
    return lhs.map { $0 ≤≥ rhs }
}

// MARK: View attribute inferred from expression

// MARK: View == Expression
@discardableResult
public func .= (lhs: View, rhs: EdgeAnchorGroupExpression) -> EdgeAnchorGroup.Solution {
    return lhs[keyPath: ...rhs].equal(to: rhs)
}

// MARK: View <= Expression
@discardableResult
public func ≤ (lhs: View, rhs: EdgeAnchorGroupExpression) -> EdgeAnchorGroup.Solution {
    return lhs[keyPath: ...rhs].lessThanOrEqual(to: rhs)
}

// MARK: View >= Expression
@discardableResult
public func ≥ (lhs: View, rhs: EdgeAnchorGroupExpression) -> EdgeAnchorGroup.Solution {
    return lhs[keyPath: ...rhs].greaterThanOrEqual(to: rhs)
}

// MARK: View >=< Expression
@discardableResult
public func ≥≤ (lhs: View, rhs: EdgeAnchorGroupExpression) -> EdgeAnchorGroup.Solution {
    return lhs[keyPath: ...rhs].inset(from: rhs)
}

// MARK: View <=> Expression
@discardableResult
public func ≤≥ (lhs: View, rhs: EdgeAnchorGroupExpression) -> EdgeAnchorGroup.Solution {
    return lhs[keyPath: ...rhs].outset(from: rhs)
}

// MARK: View attribute inferred from expression collection

// MARK: View == Expressions
@discardableResult
public func .= (lhs: View, rhs: [EdgeAnchorGroupExpression]) -> [EdgeAnchorGroup.Solution] {
    return rhs.map({lhs .= $0})
}

// MARK: View <= Expressions
@discardableResult
public func ≤ (lhs: View, rhs: [EdgeAnchorGroupExpression]) -> [EdgeAnchorGroup.Solution] {
    return rhs.map({lhs ≤ $0})
}

// MARK: View >= Expressions
@discardableResult
public func ≥ (lhs: View, rhs: [EdgeAnchorGroupExpression]) -> [EdgeAnchorGroup.Solution] {
    return rhs.map({lhs ≥ $0})
}

// MARK: View >=< Expression
@discardableResult
public func ≥≤ (lhs: View, rhs: [EdgeAnchorGroupExpression]) -> [EdgeAnchorGroup.Solution] {
    return rhs.map({lhs ≥≤ $0})
}

// MARK: View <=> Expression
@discardableResult
public func ≤≥ (lhs: View, rhs: [EdgeAnchorGroupExpression]) -> [EdgeAnchorGroup.Solution] {
    return rhs.map({lhs ≤≥ $0})
}

// MARK: View array attributes inferred from Expression

// MARK: [View] == Expression
@discardableResult
public func .= (lhs: [View], rhs: EdgeAnchorGroupExpression) -> [EdgeAnchorGroup.Solution] {
    return lhs.map { $0 .= rhs }
}

// MARK: [View] <= Expression
@discardableResult
public func ≤ (lhs: [View], rhs: EdgeAnchorGroupExpression) -> [EdgeAnchorGroup.Solution] {
    return lhs.map { $0 ≤ rhs }
}

// MARK: [View] >= Expression
@discardableResult
public func ≥ (lhs: [View], rhs: EdgeAnchorGroupExpression) -> [EdgeAnchorGroup.Solution] {
    return lhs.map { $0 ≥ rhs }
}

// MARK: [View] >=< Expression
@discardableResult
public func ≥≤ (lhs: [View], rhs: EdgeAnchorGroupExpression) -> [EdgeAnchorGroup.Solution] {
    return lhs.map { $0 ≥≤ rhs }
}

// MARK: [View] <=> Expression
@discardableResult
public func ≤≥ (lhs: [View], rhs: EdgeAnchorGroupExpression) -> [EdgeAnchorGroup.Solution] {
    return lhs.map { $0 ≤≥ rhs }
}

// MARK: View array attributes inferred from expression collection

// MARK: [View] == [Expression]
@discardableResult
public func .= (lhs: [View], rhs: [EdgeAnchorGroupExpression]) -> [[EdgeAnchorGroup.Solution]] {
    return lhs.map { $0 .= rhs }
}

// MARK: [View] <= [Expression]
@discardableResult
public func ≤ (lhs: [View], rhs: [EdgeAnchorGroupExpression]) -> [[EdgeAnchorGroup.Solution]] {
    return lhs.map { $0 ≤ rhs }
}

// MARK: [View] >= [Expression]
@discardableResult
public func ≥ (lhs: [View], rhs: [EdgeAnchorGroupExpression]) -> [[EdgeAnchorGroup.Solution]] {
    return lhs.map { $0 ≥ rhs }
}

// MARK: [View] >=< [Expression]
@discardableResult
public func ≥≤ (lhs: [View], rhs: [EdgeAnchorGroupExpression]) -> [[EdgeAnchorGroup.Solution]] {
    return lhs.map { $0 ≥≤ rhs }
}

// MARK: [View] <=> [Expression]
@discardableResult
public func ≤≥ (lhs: [View], rhs: [EdgeAnchorGroupExpression]) -> [[EdgeAnchorGroup.Solution]] {
    return lhs.map { $0 ≤≥ rhs }
}
