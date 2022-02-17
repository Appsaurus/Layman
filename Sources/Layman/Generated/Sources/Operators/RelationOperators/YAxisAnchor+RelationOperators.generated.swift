// Generated using Sourcery 0.15.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

//
//  YAxisAnchor+RelationOperators.swift
//  Layman
//
//  Created by Brian Strobach on 1/4/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

// MARK: YAxisAnchor attribute inferred from Anchor

// MARK: YAxisAnchor == Anchor
@discardableResult
public func .= (lhs: YAxisAnchor, rhs: YAxisAnchor) -> YAxisAnchor.Solution {
    return lhs.equal(to: rhs)
}

// MARK: YAxisAnchor <= Anchor
@discardableResult
public func ≤ (lhs: YAxisAnchor, rhs: YAxisAnchor) -> YAxisAnchor.Solution {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: YAxisAnchor >= Anchor
@discardableResult
public func ≥ (lhs: YAxisAnchor, rhs: YAxisAnchor) -> YAxisAnchor.Solution {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: YAxisAnchor >=< Anchor
@discardableResult
public func ≥≤ (lhs: YAxisAnchor, rhs: YAxisAnchor) -> YAxisAnchor.Solution {
    return lhs.insetOrEqual(to: rhs)
}

// MARK: YAxisAnchor <=> Anchor
@discardableResult
public func ≤≥ (lhs: YAxisAnchor, rhs: YAxisAnchor) -> YAxisAnchor.Solution {
    return lhs.outsetOrEqual(to: rhs)
}

// MARK: YAxisAnchor attribute inferred from Anchor collection

// MARK: YAxisAnchor == [Anchor]
@discardableResult
public func .= (lhs: YAxisAnchor, rhs: [YAxisAnchor]) -> [YAxisAnchor.Solution] {
    return lhs.equal(to: rhs)
}

// MARK: YAxisAnchor <= [Anchor]
@discardableResult
public func ≤ (lhs: YAxisAnchor, rhs: [YAxisAnchor]) -> [YAxisAnchor.Solution] {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: YAxisAnchor >= [Anchor]
@discardableResult
public func ≥ (lhs: YAxisAnchor, rhs: [YAxisAnchor]) -> [YAxisAnchor.Solution] {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: YAxisAnchor >=< [Anchor]
@discardableResult
public func ≥≤ (lhs: YAxisAnchor, rhs: [YAxisAnchor]) -> [YAxisAnchor.Solution] {
    return lhs.insetOrEqual(to: rhs)
}

// MARK: YAxisAnchor <=> [Anchor]
@discardableResult
public func ≤≥ (lhs: YAxisAnchor, rhs: [YAxisAnchor]) -> [YAxisAnchor.Solution] {
    return lhs.outsetOrEqual(to: rhs)
}

// MARK: YAxisAnchor array attributes inferred from Anchor

// MARK: [YAxisAnchor] == Anchor
@discardableResult
public func .= (lhs: [YAxisAnchor], rhs: YAxisAnchor) -> [YAxisAnchor.Solution] {
    return lhs.equal(to: rhs)
}

// MARK: [YAxisAnchor] <= Anchor
@discardableResult
public func ≤ (lhs: [YAxisAnchor], rhs: YAxisAnchor) -> [YAxisAnchor.Solution] {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: [YAxisAnchor] >= Anchor
@discardableResult
public func ≥ (lhs: [YAxisAnchor], rhs: YAxisAnchor) -> [YAxisAnchor.Solution] {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: [YAxisAnchor] >=< Anchor
@discardableResult
public func ≥≤ (lhs: [YAxisAnchor], rhs: YAxisAnchor) -> [YAxisAnchor.Solution] {
    return lhs.insetOrEqual(to: rhs)
}

// MARK: [YAxisAnchor] <=> Anchor
@discardableResult
public func ≤≥ (lhs: [YAxisAnchor], rhs: YAxisAnchor) -> [YAxisAnchor.Solution] {
    return lhs.outsetOrEqual(to: rhs)
}

// MARK: YAxisAnchor array attributes inferred from Anchor collection

// MARK: [YAxisAnchor] == [Anchor]
@discardableResult
public func .= (lhs: [YAxisAnchor], rhs: [YAxisAnchor]) -> [[YAxisAnchor.Solution]] {
    return lhs.equal(to: rhs)
}

// MARK: [YAxisAnchor] <= [Anchor]
@discardableResult
public func ≤ (lhs: [YAxisAnchor], rhs: [YAxisAnchor]) -> [[YAxisAnchor.Solution]] {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: [YAxisAnchor] >= [Anchor]
@discardableResult
public func ≥ (lhs: [YAxisAnchor], rhs: [YAxisAnchor]) -> [[YAxisAnchor.Solution]] {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: [YAxisAnchor] >=< [Anchor]
@discardableResult
public func ≥≤ (lhs: [YAxisAnchor], rhs: [YAxisAnchor]) -> [[YAxisAnchor.Solution]] {
    return lhs.insetOrEqual(to: rhs)
}

// MARK: [YAxisAnchor] <=> [Anchor]
@discardableResult
public func ≤≥ (lhs: [YAxisAnchor], rhs: [YAxisAnchor]) -> [[YAxisAnchor.Solution]] {
    return lhs.outsetOrEqual(to: rhs)
}

// MARK: YAxisAnchor attribute inferred from expression

// MARK: YAxisAnchor == Expression
@discardableResult
public func .= (lhs: YAxisAnchor, rhs: YAxisAnchorExpression) -> YAxisAnchor.Solution {
    return lhs.equal(to: rhs)
}

// MARK: YAxisAnchor <= Expression
@discardableResult
public func ≤ (lhs: YAxisAnchor, rhs: YAxisAnchorExpression) -> YAxisAnchor.Solution {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: YAxisAnchor >= Expression
@discardableResult
public func ≥ (lhs: YAxisAnchor, rhs: YAxisAnchorExpression) -> YAxisAnchor.Solution {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: YAxisAnchor >=< Expression
@discardableResult
public func ≥≤ (lhs: YAxisAnchor, rhs: YAxisAnchorExpression) -> YAxisAnchor.Solution {
    return lhs.insetOrEqual(to: rhs)
}

// MARK: YAxisAnchor <=> Expression
@discardableResult
public func ≤≥ (lhs: YAxisAnchor, rhs: YAxisAnchorExpression) -> YAxisAnchor.Solution {
    return lhs.outsetOrEqual(to: rhs)
}

// MARK: YAxisAnchor attribute inferred from expression collection

// MARK: YAxisAnchor == Expressions
@discardableResult
public func .= (lhs: YAxisAnchor, rhs: [YAxisAnchorExpression]) -> [YAxisAnchor.Solution] {
    return lhs.equal(to: rhs)
}

// MARK: YAxisAnchor <= Expressions
@discardableResult
public func ≤ (lhs: YAxisAnchor, rhs: [YAxisAnchorExpression]) -> [YAxisAnchor.Solution] {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: YAxisAnchor >= Expressions
@discardableResult
public func ≥ (lhs: YAxisAnchor, rhs: [YAxisAnchorExpression]) -> [YAxisAnchor.Solution] {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: YAxisAnchor >=< Expression
@discardableResult
public func ≥≤ (lhs: YAxisAnchor, rhs: [YAxisAnchorExpression]) -> [YAxisAnchor.Solution] {
    return lhs.insetOrEqual(to: rhs)
}

// MARK: YAxisAnchor <=> Expression
@discardableResult
public func ≤≥ (lhs: YAxisAnchor, rhs: [YAxisAnchorExpression]) -> [YAxisAnchor.Solution] {
    return lhs.outsetOrEqual(to: rhs)
}

// MARK: YAxisAnchor array attributes inferred from Expression

// MARK: [YAxisAnchor] == Expression
@discardableResult
public func .= (lhs: [YAxisAnchor], rhs: YAxisAnchorExpression) -> [YAxisAnchor.Solution] {
    return lhs.equal(to: rhs)
}

// MARK: [YAxisAnchor] <= Expression
@discardableResult
public func ≤ (lhs: [YAxisAnchor], rhs: YAxisAnchorExpression) -> [YAxisAnchor.Solution] {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: [YAxisAnchor] >= Expression
@discardableResult
public func ≥ (lhs: [YAxisAnchor], rhs: YAxisAnchorExpression) -> [YAxisAnchor.Solution] {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: [YAxisAnchor] >=< Expression
@discardableResult
public func ≥≤ (lhs: [YAxisAnchor], rhs: YAxisAnchorExpression) -> [YAxisAnchor.Solution] {
    return lhs.insetOrEqual(to: rhs)
}

// MARK: [YAxisAnchor] <=> Expression
@discardableResult
public func ≤≥ (lhs: [YAxisAnchor], rhs: YAxisAnchorExpression) -> [YAxisAnchor.Solution] {
    return lhs.outsetOrEqual(to: rhs)
}

// MARK: YAxisAnchor array attributes inferred from expression collection

// MARK: [YAxisAnchor] == [Expression]
@discardableResult
public func .= (lhs: [YAxisAnchor], rhs: [YAxisAnchorExpression]) -> [[YAxisAnchor.Solution]] {
    return lhs.equal(to: rhs)
}

// MARK: [YAxisAnchor] <= [Expression]
@discardableResult
public func ≤ (lhs: [YAxisAnchor], rhs: [YAxisAnchorExpression]) -> [[YAxisAnchor.Solution]] {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: [YAxisAnchor] >= [Expression]
@discardableResult
public func ≥ (lhs: [YAxisAnchor], rhs: [YAxisAnchorExpression]) -> [[YAxisAnchor.Solution]] {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: [YAxisAnchor] >=< [Expression]
@discardableResult
public func ≥≤ (lhs: [YAxisAnchor], rhs: [YAxisAnchorExpression]) -> [[YAxisAnchor.Solution]] {
    return lhs.insetOrEqual(to: rhs)
}

// MARK: [YAxisAnchor] <=> [Expression]
@discardableResult
public func ≤≥ (lhs: [YAxisAnchor], rhs: [YAxisAnchorExpression]) -> [[YAxisAnchor.Solution]] {
    return lhs.outsetOrEqual(to: rhs)
}
