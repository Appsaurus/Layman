// Generated using Sourcery 0.15.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

//
//  XAxisAnchor+RelationOperators.swift
//  Layman
//
//  Created by Brian Strobach on 1/4/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

// MARK: XAxisAnchor attribute inferred from Anchor

// MARK: XAxisAnchor == Anchor
@discardableResult
public func .= (lhs: XAxisAnchor, rhs: XAxisAnchor) -> XAxisAnchor.Solution {
    return lhs.equal(to: rhs)
}

// MARK: XAxisAnchor <= Anchor
@discardableResult
public func ≤ (lhs: XAxisAnchor, rhs: XAxisAnchor) -> XAxisAnchor.Solution {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: XAxisAnchor >= Anchor
@discardableResult
public func ≥ (lhs: XAxisAnchor, rhs: XAxisAnchor) -> XAxisAnchor.Solution {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: XAxisAnchor >=< Anchor
@discardableResult
public func ≥≤ (lhs: XAxisAnchor, rhs: XAxisAnchor) -> XAxisAnchor.Solution {
    return lhs.insetOrEqual(to: rhs)
}

// MARK: XAxisAnchor <=> Anchor
@discardableResult
public func ≤≥ (lhs: XAxisAnchor, rhs: XAxisAnchor) -> XAxisAnchor.Solution {
    return lhs.outsetOrEqual(to: rhs)
}

// MARK: XAxisAnchor attribute inferred from Anchor collection

// MARK: XAxisAnchor == [Anchor]
@discardableResult
public func .= (lhs: XAxisAnchor, rhs: [XAxisAnchor]) -> [XAxisAnchor.Solution] {
    return lhs.equal(to: rhs)
}

// MARK: XAxisAnchor <= [Anchor]
@discardableResult
public func ≤ (lhs: XAxisAnchor, rhs: [XAxisAnchor]) -> [XAxisAnchor.Solution] {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: XAxisAnchor >= [Anchor]
@discardableResult
public func ≥ (lhs: XAxisAnchor, rhs: [XAxisAnchor]) -> [XAxisAnchor.Solution] {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: XAxisAnchor >=< [Anchor]
@discardableResult
public func ≥≤ (lhs: XAxisAnchor, rhs: [XAxisAnchor]) -> [XAxisAnchor.Solution] {
    return lhs.insetOrEqual(to: rhs)
}

// MARK: XAxisAnchor <=> [Anchor]
@discardableResult
public func ≤≥ (lhs: XAxisAnchor, rhs: [XAxisAnchor]) -> [XAxisAnchor.Solution] {
    return lhs.outsetOrEqual(to: rhs)
}

// MARK: XAxisAnchor array attributes inferred from Anchor

// MARK: [XAxisAnchor] == Anchor
@discardableResult
public func .= (lhs: [XAxisAnchor], rhs: XAxisAnchor) -> [XAxisAnchor.Solution] {
    return lhs.equal(to: rhs)
}

// MARK: [XAxisAnchor] <= Anchor
@discardableResult
public func ≤ (lhs: [XAxisAnchor], rhs: XAxisAnchor) -> [XAxisAnchor.Solution] {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: [XAxisAnchor] >= Anchor
@discardableResult
public func ≥ (lhs: [XAxisAnchor], rhs: XAxisAnchor) -> [XAxisAnchor.Solution] {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: [XAxisAnchor] >=< Anchor
@discardableResult
public func ≥≤ (lhs: [XAxisAnchor], rhs: XAxisAnchor) -> [XAxisAnchor.Solution] {
    return lhs.insetOrEqual(to: rhs)
}

// MARK: [XAxisAnchor] <=> Anchor
@discardableResult
public func ≤≥ (lhs: [XAxisAnchor], rhs: XAxisAnchor) -> [XAxisAnchor.Solution] {
    return lhs.outsetOrEqual(to: rhs)
}

// MARK: XAxisAnchor array attributes inferred from Anchor collection

// MARK: [XAxisAnchor] == [Anchor]
@discardableResult
public func .= (lhs: [XAxisAnchor], rhs: [XAxisAnchor]) -> [[XAxisAnchor.Solution]] {
    return lhs.equal(to: rhs)
}

// MARK: [XAxisAnchor] <= [Anchor]
@discardableResult
public func ≤ (lhs: [XAxisAnchor], rhs: [XAxisAnchor]) -> [[XAxisAnchor.Solution]] {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: [XAxisAnchor] >= [Anchor]
@discardableResult
public func ≥ (lhs: [XAxisAnchor], rhs: [XAxisAnchor]) -> [[XAxisAnchor.Solution]] {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: [XAxisAnchor] >=< [Anchor]
@discardableResult
public func ≥≤ (lhs: [XAxisAnchor], rhs: [XAxisAnchor]) -> [[XAxisAnchor.Solution]] {
    return lhs.insetOrEqual(to: rhs)
}

// MARK: [XAxisAnchor] <=> [Anchor]
@discardableResult
public func ≤≥ (lhs: [XAxisAnchor], rhs: [XAxisAnchor]) -> [[XAxisAnchor.Solution]] {
    return lhs.outsetOrEqual(to: rhs)
}

// MARK: XAxisAnchor attribute inferred from expression

// MARK: XAxisAnchor == Expression
@discardableResult
public func .= (lhs: XAxisAnchor, rhs: XAxisAnchorExpression) -> XAxisAnchor.Solution {
    return lhs.equal(to: rhs)
}

// MARK: XAxisAnchor <= Expression
@discardableResult
public func ≤ (lhs: XAxisAnchor, rhs: XAxisAnchorExpression) -> XAxisAnchor.Solution {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: XAxisAnchor >= Expression
@discardableResult
public func ≥ (lhs: XAxisAnchor, rhs: XAxisAnchorExpression) -> XAxisAnchor.Solution {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: XAxisAnchor >=< Expression
@discardableResult
public func ≥≤ (lhs: XAxisAnchor, rhs: XAxisAnchorExpression) -> XAxisAnchor.Solution {
    return lhs.insetOrEqual(to: rhs)
}

// MARK: XAxisAnchor <=> Expression
@discardableResult
public func ≤≥ (lhs: XAxisAnchor, rhs: XAxisAnchorExpression) -> XAxisAnchor.Solution {
    return lhs.outsetOrEqual(to: rhs)
}

// MARK: XAxisAnchor attribute inferred from expression collection

// MARK: XAxisAnchor == Expressions
@discardableResult
public func .= (lhs: XAxisAnchor, rhs: [XAxisAnchorExpression]) -> [XAxisAnchor.Solution] {
    return lhs.equal(to: rhs)
}

// MARK: XAxisAnchor <= Expressions
@discardableResult
public func ≤ (lhs: XAxisAnchor, rhs: [XAxisAnchorExpression]) -> [XAxisAnchor.Solution] {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: XAxisAnchor >= Expressions
@discardableResult
public func ≥ (lhs: XAxisAnchor, rhs: [XAxisAnchorExpression]) -> [XAxisAnchor.Solution] {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: XAxisAnchor >=< Expression
@discardableResult
public func ≥≤ (lhs: XAxisAnchor, rhs: [XAxisAnchorExpression]) -> [XAxisAnchor.Solution] {
    return lhs.insetOrEqual(to: rhs)
}

// MARK: XAxisAnchor <=> Expression
@discardableResult
public func ≤≥ (lhs: XAxisAnchor, rhs: [XAxisAnchorExpression]) -> [XAxisAnchor.Solution] {
    return lhs.outsetOrEqual(to: rhs)
}

// MARK: XAxisAnchor array attributes inferred from Expression

// MARK: [XAxisAnchor] == Expression
@discardableResult
public func .= (lhs: [XAxisAnchor], rhs: XAxisAnchorExpression) -> [XAxisAnchor.Solution] {
    return lhs.equal(to: rhs)
}

// MARK: [XAxisAnchor] <= Expression
@discardableResult
public func ≤ (lhs: [XAxisAnchor], rhs: XAxisAnchorExpression) -> [XAxisAnchor.Solution] {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: [XAxisAnchor] >= Expression
@discardableResult
public func ≥ (lhs: [XAxisAnchor], rhs: XAxisAnchorExpression) -> [XAxisAnchor.Solution] {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: [XAxisAnchor] >=< Expression
@discardableResult
public func ≥≤ (lhs: [XAxisAnchor], rhs: XAxisAnchorExpression) -> [XAxisAnchor.Solution] {
    return lhs.insetOrEqual(to: rhs)
}

// MARK: [XAxisAnchor] <=> Expression
@discardableResult
public func ≤≥ (lhs: [XAxisAnchor], rhs: XAxisAnchorExpression) -> [XAxisAnchor.Solution] {
    return lhs.outsetOrEqual(to: rhs)
}

// MARK: XAxisAnchor array attributes inferred from expression collection

// MARK: [XAxisAnchor] == [Expression]
@discardableResult
public func .= (lhs: [XAxisAnchor], rhs: [XAxisAnchorExpression]) -> [[XAxisAnchor.Solution]] {
    return lhs.equal(to: rhs)
}

// MARK: [XAxisAnchor] <= [Expression]
@discardableResult
public func ≤ (lhs: [XAxisAnchor], rhs: [XAxisAnchorExpression]) -> [[XAxisAnchor.Solution]] {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: [XAxisAnchor] >= [Expression]
@discardableResult
public func ≥ (lhs: [XAxisAnchor], rhs: [XAxisAnchorExpression]) -> [[XAxisAnchor.Solution]] {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: [XAxisAnchor] >=< [Expression]
@discardableResult
public func ≥≤ (lhs: [XAxisAnchor], rhs: [XAxisAnchorExpression]) -> [[XAxisAnchor.Solution]] {
    return lhs.insetOrEqual(to: rhs)
}

// MARK: [XAxisAnchor] <=> [Expression]
@discardableResult
public func ≤≥ (lhs: [XAxisAnchor], rhs: [XAxisAnchorExpression]) -> [[XAxisAnchor.Solution]] {
    return lhs.outsetOrEqual(to: rhs)
}
