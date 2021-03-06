// Generated using Sourcery 0.15.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

//
//  YAxisAnchorPair+RelationOperators.swift
//  Layman
//
//  Created by Brian Strobach on 1/4/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

// MARK: YAxisAnchorPair attribute inferred from Anchor

// MARK: YAxisAnchorPair == Anchor
@discardableResult
public func .= (lhs: YAxisAnchorPair, rhs: YAxisAnchorPair) -> YAxisAnchorPair.Solution {
    return lhs.equal(to: rhs)
}

// MARK: YAxisAnchorPair <= Anchor
@discardableResult
public func ≤ (lhs: YAxisAnchorPair, rhs: YAxisAnchorPair) -> YAxisAnchorPair.Solution {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: YAxisAnchorPair >= Anchor
@discardableResult
public func ≥ (lhs: YAxisAnchorPair, rhs: YAxisAnchorPair) -> YAxisAnchorPair.Solution {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: YAxisAnchorPair >=< Anchor
@discardableResult
public func ≥≤ (lhs: YAxisAnchorPair, rhs: YAxisAnchorPair) -> YAxisAnchorPair.Solution {
    return lhs.insetOrEqual(to: rhs)
}

// MARK: YAxisAnchorPair <=> Anchor
@discardableResult
public func ≤≥ (lhs: YAxisAnchorPair, rhs: YAxisAnchorPair) -> YAxisAnchorPair.Solution {
    return lhs.outsetOrEqual(to: rhs)
}

// MARK: YAxisAnchorPair attribute inferred from Anchor collection

// MARK: YAxisAnchorPair == [Anchor]
@discardableResult
public func .= (lhs: YAxisAnchorPair, rhs: [YAxisAnchorPair]) -> [YAxisAnchorPair.Solution] {
    return lhs.equal(to: rhs)
}

// MARK: YAxisAnchorPair <= [Anchor]
@discardableResult
public func ≤ (lhs: YAxisAnchorPair, rhs: [YAxisAnchorPair]) -> [YAxisAnchorPair.Solution] {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: YAxisAnchorPair >= [Anchor]
@discardableResult
public func ≥ (lhs: YAxisAnchorPair, rhs: [YAxisAnchorPair]) -> [YAxisAnchorPair.Solution] {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: YAxisAnchorPair >=< [Anchor]
@discardableResult
public func ≥≤ (lhs: YAxisAnchorPair, rhs: [YAxisAnchorPair]) -> [YAxisAnchorPair.Solution] {
    return lhs.insetOrEqual(to: rhs)
}

// MARK: YAxisAnchorPair <=> [Anchor]
@discardableResult
public func ≤≥ (lhs: YAxisAnchorPair, rhs: [YAxisAnchorPair]) -> [YAxisAnchorPair.Solution] {
    return lhs.outsetOrEqual(to: rhs)
}

// MARK: YAxisAnchorPair array attributes inferred from Anchor

// MARK: [YAxisAnchorPair] == Anchor
@discardableResult
public func .= (lhs: [YAxisAnchorPair], rhs: YAxisAnchorPair) -> [YAxisAnchorPair.Solution] {
    return lhs.equal(to: rhs)
}

// MARK: [YAxisAnchorPair] <= Anchor
@discardableResult
public func ≤ (lhs: [YAxisAnchorPair], rhs: YAxisAnchorPair) -> [YAxisAnchorPair.Solution] {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: [YAxisAnchorPair] >= Anchor
@discardableResult
public func ≥ (lhs: [YAxisAnchorPair], rhs: YAxisAnchorPair) -> [YAxisAnchorPair.Solution] {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: [YAxisAnchorPair] >=< Anchor
@discardableResult
public func ≥≤ (lhs: [YAxisAnchorPair], rhs: YAxisAnchorPair) -> [YAxisAnchorPair.Solution] {
    return lhs.insetOrEqual(to: rhs)
}

// MARK: [YAxisAnchorPair] <=> Anchor
@discardableResult
public func ≤≥ (lhs: [YAxisAnchorPair], rhs: YAxisAnchorPair) -> [YAxisAnchorPair.Solution] {
    return lhs.outsetOrEqual(to: rhs)
}

// MARK: YAxisAnchorPair array attributes inferred from Anchor collection

// MARK: [YAxisAnchorPair] == [Anchor]
@discardableResult
public func .= (lhs: [YAxisAnchorPair], rhs: [YAxisAnchorPair]) -> [[YAxisAnchorPair.Solution]] {
    return lhs.equal(to: rhs)
}

// MARK: [YAxisAnchorPair] <= [Anchor]
@discardableResult
public func ≤ (lhs: [YAxisAnchorPair], rhs: [YAxisAnchorPair]) -> [[YAxisAnchorPair.Solution]] {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: [YAxisAnchorPair] >= [Anchor]
@discardableResult
public func ≥ (lhs: [YAxisAnchorPair], rhs: [YAxisAnchorPair]) -> [[YAxisAnchorPair.Solution]] {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: [YAxisAnchorPair] >=< [Anchor]
@discardableResult
public func ≥≤ (lhs: [YAxisAnchorPair], rhs: [YAxisAnchorPair]) -> [[YAxisAnchorPair.Solution]] {
    return lhs.insetOrEqual(to: rhs)
}

// MARK: [YAxisAnchorPair] <=> [Anchor]
@discardableResult
public func ≤≥ (lhs: [YAxisAnchorPair], rhs: [YAxisAnchorPair]) -> [[YAxisAnchorPair.Solution]] {
    return lhs.outsetOrEqual(to: rhs)
}

// MARK: YAxisAnchorPair attribute inferred from expression

// MARK: YAxisAnchorPair == Expression
@discardableResult
public func .= (lhs: YAxisAnchorPair, rhs: YAxisAnchorPairExpression) -> YAxisAnchorPair.Solution {
    return lhs.equal(to: rhs)
}

// MARK: YAxisAnchorPair <= Expression
@discardableResult
public func ≤ (lhs: YAxisAnchorPair, rhs: YAxisAnchorPairExpression) -> YAxisAnchorPair.Solution {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: YAxisAnchorPair >= Expression
@discardableResult
public func ≥ (lhs: YAxisAnchorPair, rhs: YAxisAnchorPairExpression) -> YAxisAnchorPair.Solution {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: YAxisAnchorPair >=< Expression
@discardableResult
public func ≥≤ (lhs: YAxisAnchorPair, rhs: YAxisAnchorPairExpression) -> YAxisAnchorPair.Solution {
    return lhs.insetOrEqual(to: rhs)
}

// MARK: YAxisAnchorPair <=> Expression
@discardableResult
public func ≤≥ (lhs: YAxisAnchorPair, rhs: YAxisAnchorPairExpression) -> YAxisAnchorPair.Solution {
    return lhs.outsetOrEqual(to: rhs)
}

// MARK: YAxisAnchorPair attribute inferred from expression collection

// MARK: YAxisAnchorPair == Expressions
@discardableResult
public func .= (lhs: YAxisAnchorPair, rhs: [YAxisAnchorPairExpression]) -> [YAxisAnchorPair.Solution] {
    return lhs.equal(to: rhs)
}

// MARK: YAxisAnchorPair <= Expressions
@discardableResult
public func ≤ (lhs: YAxisAnchorPair, rhs: [YAxisAnchorPairExpression]) -> [YAxisAnchorPair.Solution] {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: YAxisAnchorPair >= Expressions
@discardableResult
public func ≥ (lhs: YAxisAnchorPair, rhs: [YAxisAnchorPairExpression]) -> [YAxisAnchorPair.Solution] {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: YAxisAnchorPair >=< Expression
@discardableResult
public func ≥≤ (lhs: YAxisAnchorPair, rhs: [YAxisAnchorPairExpression]) -> [YAxisAnchorPair.Solution] {
    return lhs.insetOrEqual(to: rhs)
}

// MARK: YAxisAnchorPair <=> Expression
@discardableResult
public func ≤≥ (lhs: YAxisAnchorPair, rhs: [YAxisAnchorPairExpression]) -> [YAxisAnchorPair.Solution] {
    return lhs.outsetOrEqual(to: rhs)
}

// MARK: YAxisAnchorPair array attributes inferred from Expression

// MARK: [YAxisAnchorPair] == Expression
@discardableResult
public func .= (lhs: [YAxisAnchorPair], rhs: YAxisAnchorPairExpression) -> [YAxisAnchorPair.Solution] {
    return lhs.equal(to: rhs)
}

// MARK: [YAxisAnchorPair] <= Expression
@discardableResult
public func ≤ (lhs: [YAxisAnchorPair], rhs: YAxisAnchorPairExpression) -> [YAxisAnchorPair.Solution] {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: [YAxisAnchorPair] >= Expression
@discardableResult
public func ≥ (lhs: [YAxisAnchorPair], rhs: YAxisAnchorPairExpression) -> [YAxisAnchorPair.Solution] {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: [YAxisAnchorPair] >=< Expression
@discardableResult
public func ≥≤ (lhs: [YAxisAnchorPair], rhs: YAxisAnchorPairExpression) -> [YAxisAnchorPair.Solution] {
    return lhs.insetOrEqual(to: rhs)
}

// MARK: [YAxisAnchorPair] <=> Expression
@discardableResult
public func ≤≥ (lhs: [YAxisAnchorPair], rhs: YAxisAnchorPairExpression) -> [YAxisAnchorPair.Solution] {
    return lhs.outsetOrEqual(to: rhs)
}

// MARK: YAxisAnchorPair array attributes inferred from expression collection

// MARK: [YAxisAnchorPair] == [Expression]
@discardableResult
public func .= (lhs: [YAxisAnchorPair], rhs: [YAxisAnchorPairExpression]) -> [[YAxisAnchorPair.Solution]] {
    return lhs.equal(to: rhs)
}

// MARK: [YAxisAnchorPair] <= [Expression]
@discardableResult
public func ≤ (lhs: [YAxisAnchorPair], rhs: [YAxisAnchorPairExpression]) -> [[YAxisAnchorPair.Solution]] {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: [YAxisAnchorPair] >= [Expression]
@discardableResult
public func ≥ (lhs: [YAxisAnchorPair], rhs: [YAxisAnchorPairExpression]) -> [[YAxisAnchorPair.Solution]] {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: [YAxisAnchorPair] >=< [Expression]
@discardableResult
public func ≥≤ (lhs: [YAxisAnchorPair], rhs: [YAxisAnchorPairExpression]) -> [[YAxisAnchorPair.Solution]] {
    return lhs.insetOrEqual(to: rhs)
}

// MARK: [YAxisAnchorPair] <=> [Expression]
@discardableResult
public func ≤≥ (lhs: [YAxisAnchorPair], rhs: [YAxisAnchorPairExpression]) -> [[YAxisAnchorPair.Solution]] {
    return lhs.outsetOrEqual(to: rhs)
}
