// Generated using Sourcery 0.15.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

//
//  XAxisAnchorPair+RelationOperators.swift
//  Layman
//
//  Created by Brian Strobach on 1/4/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

// MARK: XAxisAnchorPair attribute inferred from Anchor

// MARK: XAxisAnchorPair == Anchor
@discardableResult
public func .= (lhs: XAxisAnchorPair, rhs: XAxisAnchorPair) -> XAxisAnchorPair.Solution {
    return lhs.equal(to: rhs)
}

// MARK: XAxisAnchorPair <= Anchor
@discardableResult
public func ≤ (lhs: XAxisAnchorPair, rhs: XAxisAnchorPair) -> XAxisAnchorPair.Solution {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: XAxisAnchorPair >= Anchor
@discardableResult
public func ≥ (lhs: XAxisAnchorPair, rhs: XAxisAnchorPair) -> XAxisAnchorPair.Solution {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: XAxisAnchorPair >=< Anchor
@discardableResult
public func ≥≤ (lhs: XAxisAnchorPair, rhs: XAxisAnchorPair) -> XAxisAnchorPair.Solution {
    return lhs.insetOrEqual(to: rhs)
}

// MARK: XAxisAnchorPair <=> Anchor
@discardableResult
public func ≤≥ (lhs: XAxisAnchorPair, rhs: XAxisAnchorPair) -> XAxisAnchorPair.Solution {
    return lhs.outsetOrEqual(to: rhs)
}

// MARK: XAxisAnchorPair attribute inferred from Anchor collection

// MARK: XAxisAnchorPair == [Anchor]
@discardableResult
public func .= (lhs: XAxisAnchorPair, rhs: [XAxisAnchorPair]) -> [XAxisAnchorPair.Solution] {
    return lhs.equal(to: rhs)
}

// MARK: XAxisAnchorPair <= [Anchor]
@discardableResult
public func ≤ (lhs: XAxisAnchorPair, rhs: [XAxisAnchorPair]) -> [XAxisAnchorPair.Solution] {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: XAxisAnchorPair >= [Anchor]
@discardableResult
public func ≥ (lhs: XAxisAnchorPair, rhs: [XAxisAnchorPair]) -> [XAxisAnchorPair.Solution] {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: XAxisAnchorPair >=< [Anchor]
@discardableResult
public func ≥≤ (lhs: XAxisAnchorPair, rhs: [XAxisAnchorPair]) -> [XAxisAnchorPair.Solution] {
    return lhs.insetOrEqual(to: rhs)
}

// MARK: XAxisAnchorPair <=> [Anchor]
@discardableResult
public func ≤≥ (lhs: XAxisAnchorPair, rhs: [XAxisAnchorPair]) -> [XAxisAnchorPair.Solution] {
    return lhs.outsetOrEqual(to: rhs)
}

// MARK: XAxisAnchorPair array attributes inferred from Anchor

// MARK: [XAxisAnchorPair] == Anchor
@discardableResult
public func .= (lhs: [XAxisAnchorPair], rhs: XAxisAnchorPair) -> [XAxisAnchorPair.Solution] {
    return lhs.equal(to: rhs)
}

// MARK: [XAxisAnchorPair] <= Anchor
@discardableResult
public func ≤ (lhs: [XAxisAnchorPair], rhs: XAxisAnchorPair) -> [XAxisAnchorPair.Solution] {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: [XAxisAnchorPair] >= Anchor
@discardableResult
public func ≥ (lhs: [XAxisAnchorPair], rhs: XAxisAnchorPair) -> [XAxisAnchorPair.Solution] {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: [XAxisAnchorPair] >=< Anchor
@discardableResult
public func ≥≤ (lhs: [XAxisAnchorPair], rhs: XAxisAnchorPair) -> [XAxisAnchorPair.Solution] {
    return lhs.insetOrEqual(to: rhs)
}

// MARK: [XAxisAnchorPair] <=> Anchor
@discardableResult
public func ≤≥ (lhs: [XAxisAnchorPair], rhs: XAxisAnchorPair) -> [XAxisAnchorPair.Solution] {
    return lhs.outsetOrEqual(to: rhs)
}

// MARK: XAxisAnchorPair array attributes inferred from Anchor collection

// MARK: [XAxisAnchorPair] == [Anchor]
@discardableResult
public func .= (lhs: [XAxisAnchorPair], rhs: [XAxisAnchorPair]) -> [[XAxisAnchorPair.Solution]] {
    return lhs.equal(to: rhs)
}

// MARK: [XAxisAnchorPair] <= [Anchor]
@discardableResult
public func ≤ (lhs: [XAxisAnchorPair], rhs: [XAxisAnchorPair]) -> [[XAxisAnchorPair.Solution]] {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: [XAxisAnchorPair] >= [Anchor]
@discardableResult
public func ≥ (lhs: [XAxisAnchorPair], rhs: [XAxisAnchorPair]) -> [[XAxisAnchorPair.Solution]] {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: [XAxisAnchorPair] >=< [Anchor]
@discardableResult
public func ≥≤ (lhs: [XAxisAnchorPair], rhs: [XAxisAnchorPair]) -> [[XAxisAnchorPair.Solution]] {
    return lhs.insetOrEqual(to: rhs)
}

// MARK: [XAxisAnchorPair] <=> [Anchor]
@discardableResult
public func ≤≥ (lhs: [XAxisAnchorPair], rhs: [XAxisAnchorPair]) -> [[XAxisAnchorPair.Solution]] {
    return lhs.outsetOrEqual(to: rhs)
}

// MARK: XAxisAnchorPair attribute inferred from expression

// MARK: XAxisAnchorPair == Expression
@discardableResult
public func .= (lhs: XAxisAnchorPair, rhs: XAxisAnchorPairExpression) -> XAxisAnchorPair.Solution {
    return lhs.equal(to: rhs)
}

// MARK: XAxisAnchorPair <= Expression
@discardableResult
public func ≤ (lhs: XAxisAnchorPair, rhs: XAxisAnchorPairExpression) -> XAxisAnchorPair.Solution {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: XAxisAnchorPair >= Expression
@discardableResult
public func ≥ (lhs: XAxisAnchorPair, rhs: XAxisAnchorPairExpression) -> XAxisAnchorPair.Solution {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: XAxisAnchorPair >=< Expression
@discardableResult
public func ≥≤ (lhs: XAxisAnchorPair, rhs: XAxisAnchorPairExpression) -> XAxisAnchorPair.Solution {
    return lhs.insetOrEqual(to: rhs)
}

// MARK: XAxisAnchorPair <=> Expression
@discardableResult
public func ≤≥ (lhs: XAxisAnchorPair, rhs: XAxisAnchorPairExpression) -> XAxisAnchorPair.Solution {
    return lhs.outsetOrEqual(to: rhs)
}

// MARK: XAxisAnchorPair attribute inferred from expression collection

// MARK: XAxisAnchorPair == Expressions
@discardableResult
public func .= (lhs: XAxisAnchorPair, rhs: [XAxisAnchorPairExpression]) -> [XAxisAnchorPair.Solution] {
    return lhs.equal(to: rhs)
}

// MARK: XAxisAnchorPair <= Expressions
@discardableResult
public func ≤ (lhs: XAxisAnchorPair, rhs: [XAxisAnchorPairExpression]) -> [XAxisAnchorPair.Solution] {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: XAxisAnchorPair >= Expressions
@discardableResult
public func ≥ (lhs: XAxisAnchorPair, rhs: [XAxisAnchorPairExpression]) -> [XAxisAnchorPair.Solution] {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: XAxisAnchorPair >=< Expression
@discardableResult
public func ≥≤ (lhs: XAxisAnchorPair, rhs: [XAxisAnchorPairExpression]) -> [XAxisAnchorPair.Solution] {
    return lhs.insetOrEqual(to: rhs)
}

// MARK: XAxisAnchorPair <=> Expression
@discardableResult
public func ≤≥ (lhs: XAxisAnchorPair, rhs: [XAxisAnchorPairExpression]) -> [XAxisAnchorPair.Solution] {
    return lhs.outsetOrEqual(to: rhs)
}

// MARK: XAxisAnchorPair array attributes inferred from Expression

// MARK: [XAxisAnchorPair] == Expression
@discardableResult
public func .= (lhs: [XAxisAnchorPair], rhs: XAxisAnchorPairExpression) -> [XAxisAnchorPair.Solution] {
    return lhs.equal(to: rhs)
}

// MARK: [XAxisAnchorPair] <= Expression
@discardableResult
public func ≤ (lhs: [XAxisAnchorPair], rhs: XAxisAnchorPairExpression) -> [XAxisAnchorPair.Solution] {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: [XAxisAnchorPair] >= Expression
@discardableResult
public func ≥ (lhs: [XAxisAnchorPair], rhs: XAxisAnchorPairExpression) -> [XAxisAnchorPair.Solution] {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: [XAxisAnchorPair] >=< Expression
@discardableResult
public func ≥≤ (lhs: [XAxisAnchorPair], rhs: XAxisAnchorPairExpression) -> [XAxisAnchorPair.Solution] {
    return lhs.insetOrEqual(to: rhs)
}

// MARK: [XAxisAnchorPair] <=> Expression
@discardableResult
public func ≤≥ (lhs: [XAxisAnchorPair], rhs: XAxisAnchorPairExpression) -> [XAxisAnchorPair.Solution] {
    return lhs.outsetOrEqual(to: rhs)
}

// MARK: XAxisAnchorPair array attributes inferred from expression collection

// MARK: [XAxisAnchorPair] == [Expression]
@discardableResult
public func .= (lhs: [XAxisAnchorPair], rhs: [XAxisAnchorPairExpression]) -> [[XAxisAnchorPair.Solution]] {
    return lhs.equal(to: rhs)
}

// MARK: [XAxisAnchorPair] <= [Expression]
@discardableResult
public func ≤ (lhs: [XAxisAnchorPair], rhs: [XAxisAnchorPairExpression]) -> [[XAxisAnchorPair.Solution]] {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: [XAxisAnchorPair] >= [Expression]
@discardableResult
public func ≥ (lhs: [XAxisAnchorPair], rhs: [XAxisAnchorPairExpression]) -> [[XAxisAnchorPair.Solution]] {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: [XAxisAnchorPair] >=< [Expression]
@discardableResult
public func ≥≤ (lhs: [XAxisAnchorPair], rhs: [XAxisAnchorPairExpression]) -> [[XAxisAnchorPair.Solution]] {
    return lhs.insetOrEqual(to: rhs)
}

// MARK: [XAxisAnchorPair] <=> [Expression]
@discardableResult
public func ≤≥ (lhs: [XAxisAnchorPair], rhs: [XAxisAnchorPairExpression]) -> [[XAxisAnchorPair.Solution]] {
    return lhs.outsetOrEqual(to: rhs)
}
