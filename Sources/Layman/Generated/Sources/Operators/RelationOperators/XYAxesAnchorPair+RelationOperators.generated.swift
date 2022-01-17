// Generated using Sourcery 0.15.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

//
//  XYAxesAnchorPair+RelationOperators.swift
//  Layman
//
//  Created by Brian Strobach on 1/4/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

// MARK: XYAxesAnchorPair attribute inferred from Anchor

// MARK: XYAxesAnchorPair == Anchor
@discardableResult
public func .= (lhs: XYAxesAnchorPair, rhs: XYAxesAnchorPair) -> XYAxesAnchorPair.Solution {
    return lhs.equal(to: rhs)
}

// MARK: XYAxesAnchorPair <= Anchor
@discardableResult
public func ≤ (lhs: XYAxesAnchorPair, rhs: XYAxesAnchorPair) -> XYAxesAnchorPair.Solution {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: XYAxesAnchorPair >= Anchor
@discardableResult
public func ≥ (lhs: XYAxesAnchorPair, rhs: XYAxesAnchorPair) -> XYAxesAnchorPair.Solution {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: XYAxesAnchorPair >=< Anchor
@discardableResult
public func ≥≤ (lhs: XYAxesAnchorPair, rhs: XYAxesAnchorPair) -> XYAxesAnchorPair.Solution {
    return lhs.insetOrEqual(to: rhs)
}

// MARK: XYAxesAnchorPair <=> Anchor
@discardableResult
public func ≤≥ (lhs: XYAxesAnchorPair, rhs: XYAxesAnchorPair) -> XYAxesAnchorPair.Solution {
    return lhs.outsetOrEqual(to: rhs)
}

// MARK: XYAxesAnchorPair attribute inferred from Anchor collection

// MARK: XYAxesAnchorPair == [Anchor]
@discardableResult
public func .= (lhs: XYAxesAnchorPair, rhs: [XYAxesAnchorPair]) -> [XYAxesAnchorPair.Solution] {
    return lhs.equal(to: rhs)
}

// MARK: XYAxesAnchorPair <= [Anchor]
@discardableResult
public func ≤ (lhs: XYAxesAnchorPair, rhs: [XYAxesAnchorPair]) -> [XYAxesAnchorPair.Solution] {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: XYAxesAnchorPair >= [Anchor]
@discardableResult
public func ≥ (lhs: XYAxesAnchorPair, rhs: [XYAxesAnchorPair]) -> [XYAxesAnchorPair.Solution] {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: XYAxesAnchorPair >=< [Anchor]
@discardableResult
public func ≥≤ (lhs: XYAxesAnchorPair, rhs: [XYAxesAnchorPair]) -> [XYAxesAnchorPair.Solution] {
    return lhs.insetOrEqual(to: rhs)
}

// MARK: XYAxesAnchorPair <=> [Anchor]
@discardableResult
public func ≤≥ (lhs: XYAxesAnchorPair, rhs: [XYAxesAnchorPair]) -> [XYAxesAnchorPair.Solution] {
    return lhs.outsetOrEqual(to: rhs)
}

// MARK: XYAxesAnchorPair array attributes inferred from Anchor

// MARK: [XYAxesAnchorPair] == Anchor
@discardableResult
public func .= (lhs: [XYAxesAnchorPair], rhs: XYAxesAnchorPair) -> [XYAxesAnchorPair.Solution] {
    return lhs.equal(to: rhs)
}

// MARK: [XYAxesAnchorPair] <= Anchor
@discardableResult
public func ≤ (lhs: [XYAxesAnchorPair], rhs: XYAxesAnchorPair) -> [XYAxesAnchorPair.Solution] {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: [XYAxesAnchorPair] >= Anchor
@discardableResult
public func ≥ (lhs: [XYAxesAnchorPair], rhs: XYAxesAnchorPair) -> [XYAxesAnchorPair.Solution] {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: [XYAxesAnchorPair] >=< Anchor
@discardableResult
public func ≥≤ (lhs: [XYAxesAnchorPair], rhs: XYAxesAnchorPair) -> [XYAxesAnchorPair.Solution] {
    return lhs.insetOrEqual(to: rhs)
}

// MARK: [XYAxesAnchorPair] <=> Anchor
@discardableResult
public func ≤≥ (lhs: [XYAxesAnchorPair], rhs: XYAxesAnchorPair) -> [XYAxesAnchorPair.Solution] {
    return lhs.outsetOrEqual(to: rhs)
}

// MARK: XYAxesAnchorPair array attributes inferred from Anchor collection

// MARK: [XYAxesAnchorPair] == [Anchor]
@discardableResult
public func .= (lhs: [XYAxesAnchorPair], rhs: [XYAxesAnchorPair]) -> [[XYAxesAnchorPair.Solution]] {
    return lhs.equal(to: rhs)
}

// MARK: [XYAxesAnchorPair] <= [Anchor]
@discardableResult
public func ≤ (lhs: [XYAxesAnchorPair], rhs: [XYAxesAnchorPair]) -> [[XYAxesAnchorPair.Solution]] {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: [XYAxesAnchorPair] >= [Anchor]
@discardableResult
public func ≥ (lhs: [XYAxesAnchorPair], rhs: [XYAxesAnchorPair]) -> [[XYAxesAnchorPair.Solution]] {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: [XYAxesAnchorPair] >=< [Anchor]
@discardableResult
public func ≥≤ (lhs: [XYAxesAnchorPair], rhs: [XYAxesAnchorPair]) -> [[XYAxesAnchorPair.Solution]] {
    return lhs.insetOrEqual(to: rhs)
}

// MARK: [XYAxesAnchorPair] <=> [Anchor]
@discardableResult
public func ≤≥ (lhs: [XYAxesAnchorPair], rhs: [XYAxesAnchorPair]) -> [[XYAxesAnchorPair.Solution]] {
    return lhs.outsetOrEqual(to: rhs)
}

// MARK: XYAxesAnchorPair attribute inferred from expression

// MARK: XYAxesAnchorPair == Expression
@discardableResult
public func .= (lhs: XYAxesAnchorPair, rhs: XYAxesAnchorPairExpression) -> XYAxesAnchorPair.Solution {
    return lhs.equal(to: rhs)
}

// MARK: XYAxesAnchorPair <= Expression
@discardableResult
public func ≤ (lhs: XYAxesAnchorPair, rhs: XYAxesAnchorPairExpression) -> XYAxesAnchorPair.Solution {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: XYAxesAnchorPair >= Expression
@discardableResult
public func ≥ (lhs: XYAxesAnchorPair, rhs: XYAxesAnchorPairExpression) -> XYAxesAnchorPair.Solution {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: XYAxesAnchorPair >=< Expression
@discardableResult
public func ≥≤ (lhs: XYAxesAnchorPair, rhs: XYAxesAnchorPairExpression) -> XYAxesAnchorPair.Solution {
    return lhs.insetOrEqual(to: rhs)
}

// MARK: XYAxesAnchorPair <=> Expression
@discardableResult
public func ≤≥ (lhs: XYAxesAnchorPair, rhs: XYAxesAnchorPairExpression) -> XYAxesAnchorPair.Solution {
    return lhs.outsetOrEqual(to: rhs)
}

// MARK: XYAxesAnchorPair attribute inferred from expression collection

// MARK: XYAxesAnchorPair == Expressions
@discardableResult
public func .= (lhs: XYAxesAnchorPair, rhs: [XYAxesAnchorPairExpression]) -> [XYAxesAnchorPair.Solution] {
    return lhs.equal(to: rhs)
}

// MARK: XYAxesAnchorPair <= Expressions
@discardableResult
public func ≤ (lhs: XYAxesAnchorPair, rhs: [XYAxesAnchorPairExpression]) -> [XYAxesAnchorPair.Solution] {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: XYAxesAnchorPair >= Expressions
@discardableResult
public func ≥ (lhs: XYAxesAnchorPair, rhs: [XYAxesAnchorPairExpression]) -> [XYAxesAnchorPair.Solution] {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: XYAxesAnchorPair >=< Expression
@discardableResult
public func ≥≤ (lhs: XYAxesAnchorPair, rhs: [XYAxesAnchorPairExpression]) -> [XYAxesAnchorPair.Solution] {
    return lhs.insetOrEqual(to: rhs)
}

// MARK: XYAxesAnchorPair <=> Expression
@discardableResult
public func ≤≥ (lhs: XYAxesAnchorPair, rhs: [XYAxesAnchorPairExpression]) -> [XYAxesAnchorPair.Solution] {
    return lhs.outsetOrEqual(to: rhs)
}

// MARK: XYAxesAnchorPair array attributes inferred from Expression

// MARK: [XYAxesAnchorPair] == Expression
@discardableResult
public func .= (lhs: [XYAxesAnchorPair], rhs: XYAxesAnchorPairExpression) -> [XYAxesAnchorPair.Solution] {
    return lhs.equal(to: rhs)
}

// MARK: [XYAxesAnchorPair] <= Expression
@discardableResult
public func ≤ (lhs: [XYAxesAnchorPair], rhs: XYAxesAnchorPairExpression) -> [XYAxesAnchorPair.Solution] {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: [XYAxesAnchorPair] >= Expression
@discardableResult
public func ≥ (lhs: [XYAxesAnchorPair], rhs: XYAxesAnchorPairExpression) -> [XYAxesAnchorPair.Solution] {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: [XYAxesAnchorPair] >=< Expression
@discardableResult
public func ≥≤ (lhs: [XYAxesAnchorPair], rhs: XYAxesAnchorPairExpression) -> [XYAxesAnchorPair.Solution] {
    return lhs.insetOrEqual(to: rhs)
}

// MARK: [XYAxesAnchorPair] <=> Expression
@discardableResult
public func ≤≥ (lhs: [XYAxesAnchorPair], rhs: XYAxesAnchorPairExpression) -> [XYAxesAnchorPair.Solution] {
    return lhs.outsetOrEqual(to: rhs)
}

// MARK: XYAxesAnchorPair array attributes inferred from expression collection

// MARK: [XYAxesAnchorPair] == [Expression]
@discardableResult
public func .= (lhs: [XYAxesAnchorPair], rhs: [XYAxesAnchorPairExpression]) -> [[XYAxesAnchorPair.Solution]] {
    return lhs.equal(to: rhs)
}

// MARK: [XYAxesAnchorPair] <= [Expression]
@discardableResult
public func ≤ (lhs: [XYAxesAnchorPair], rhs: [XYAxesAnchorPairExpression]) -> [[XYAxesAnchorPair.Solution]] {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: [XYAxesAnchorPair] >= [Expression]
@discardableResult
public func ≥ (lhs: [XYAxesAnchorPair], rhs: [XYAxesAnchorPairExpression]) -> [[XYAxesAnchorPair.Solution]] {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: [XYAxesAnchorPair] >=< [Expression]
@discardableResult
public func ≥≤ (lhs: [XYAxesAnchorPair], rhs: [XYAxesAnchorPairExpression]) -> [[XYAxesAnchorPair.Solution]] {
    return lhs.insetOrEqual(to: rhs)
}

// MARK: [XYAxesAnchorPair] <=> [Expression]
@discardableResult
public func ≤≥ (lhs: [XYAxesAnchorPair], rhs: [XYAxesAnchorPairExpression]) -> [[XYAxesAnchorPair.Solution]] {
    return lhs.outsetOrEqual(to: rhs)
}
