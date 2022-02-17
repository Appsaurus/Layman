// Generated using Sourcery 0.15.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

//
//  View+XYAxesAnchorPairRelationOperators.swift
//  Layman
//
//  Created by Brian Strobach on 1/4/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

// MARK: View attribute inferred from Anchor

// MARK: View == Anchor
@discardableResult
public func .= (lhs: View, rhs: XYAxesAnchorPair) -> XYAxesAnchorPair.Solution {
    return lhs.equal(to: rhs)
}

// MARK: View <= Anchor
@discardableResult
public func ≤ (lhs: View, rhs: XYAxesAnchorPair) -> XYAxesAnchorPair.Solution {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: View >= Anchor
@discardableResult
public func ≥ (lhs: View, rhs: XYAxesAnchorPair) -> XYAxesAnchorPair.Solution {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: View >=< Anchor
@discardableResult
public func ≥≤ (lhs: View, rhs: XYAxesAnchorPair) -> XYAxesAnchorPair.Solution {
    return lhs.insetOrEqual(to: rhs)
}

// MARK: View <=> Anchor
@discardableResult
public func ≤≥ (lhs: View, rhs: XYAxesAnchorPair) -> XYAxesAnchorPair.Solution {
    return lhs.outsetOrEqual(to: rhs)
}

// MARK: View attribute inferred from Anchor collection

// MARK: View == [Anchor]
@discardableResult
public func .= (lhs: View, rhs: [XYAxesAnchorPair]) -> [XYAxesAnchorPair.Solution] {
    return lhs.equal(to: rhs)
}

// MARK: View <= [Anchor]
@discardableResult
public func ≤ (lhs: View, rhs: [XYAxesAnchorPair]) -> [XYAxesAnchorPair.Solution] {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: View >= [Anchor]
@discardableResult
public func ≥ (lhs: View, rhs: [XYAxesAnchorPair]) -> [XYAxesAnchorPair.Solution] {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: View >=< [Anchor]
@discardableResult
public func ≥≤ (lhs: View, rhs: [XYAxesAnchorPair]) -> [XYAxesAnchorPair.Solution] {
    return lhs.insetOrEqual(to: rhs)
}

// MARK: View <=> [Anchor]
@discardableResult
public func ≤≥ (lhs: View, rhs: [XYAxesAnchorPair]) -> [XYAxesAnchorPair.Solution] {
    return lhs.outsetOrEqual(to: rhs)
}

// MARK: View array attributes inferred from Anchor

// MARK: [View] == Anchor
@discardableResult
public func .= (lhs: [View], rhs: XYAxesAnchorPair) -> [XYAxesAnchorPair.Solution] {
    return lhs.equal(to: rhs)
}

// MARK: [View] <= Anchor
@discardableResult
public func ≤ (lhs: [View], rhs: XYAxesAnchorPair) -> [XYAxesAnchorPair.Solution] {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: [View] >= Anchor
@discardableResult
public func ≥ (lhs: [View], rhs: XYAxesAnchorPair) -> [XYAxesAnchorPair.Solution] {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: [View] >=< Anchor
@discardableResult
public func ≥≤ (lhs: [View], rhs: XYAxesAnchorPair) -> [XYAxesAnchorPair.Solution] {
    return lhs.insetOrEqual(to: rhs)
}

// MARK: [View] <=> Anchor
@discardableResult
public func ≤≥ (lhs: [View], rhs: XYAxesAnchorPair) -> [XYAxesAnchorPair.Solution] {
    return lhs.outsetOrEqual(to: rhs)
}

// MARK: View array attributes inferred from Anchor collection

// MARK: [View] == [Anchor]
@discardableResult
public func .= (lhs: [View], rhs: [XYAxesAnchorPair]) -> [[XYAxesAnchorPair.Solution]] {
    return lhs.equal(to: rhs)
}

// MARK: [View] <= [Anchor]
@discardableResult
public func ≤ (lhs: [View], rhs: [XYAxesAnchorPair]) -> [[XYAxesAnchorPair.Solution]] {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: [View] >= [Anchor]
@discardableResult
public func ≥ (lhs: [View], rhs: [XYAxesAnchorPair]) -> [[XYAxesAnchorPair.Solution]] {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: [View] >=< [Anchor]
@discardableResult
public func ≥≤ (lhs: [View], rhs: [XYAxesAnchorPair]) -> [[XYAxesAnchorPair.Solution]] {
    return lhs.insetOrEqual(to: rhs)
}

// MARK: [View] <=> [Anchor]
@discardableResult
public func ≤≥ (lhs: [View], rhs: [XYAxesAnchorPair]) -> [[XYAxesAnchorPair.Solution]] {
    return lhs.outsetOrEqual(to: rhs)
}

// MARK: Anchor == View
@discardableResult
public func .= (lhs: XYAxesAnchorPair, rhs: View) -> XYAxesAnchorPair.Solution {
    return lhs.equal(to: rhs)
}

// MARK: View <= Anchor
@discardableResult
public func ≤ (lhs: XYAxesAnchorPair, rhs: View) -> XYAxesAnchorPair.Solution {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: View >= Anchor
@discardableResult
public func ≥ (lhs: XYAxesAnchorPair, rhs: View) -> XYAxesAnchorPair.Solution {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: View >=< Anchor
@discardableResult
public func ≥≤ (lhs: XYAxesAnchorPair, rhs: View) -> XYAxesAnchorPair.Solution {
    return lhs.insetOrEqual(to: rhs)
}

// MARK: View <=> Anchor
@discardableResult
public func ≤≥ (lhs: XYAxesAnchorPair, rhs: View) -> XYAxesAnchorPair.Solution {
    return lhs.outsetOrEqual(to: rhs)
}

// MARK: View attribute inferred from Anchor collection

// MARK: View == [Anchor]
@discardableResult
public func .= (lhs: [XYAxesAnchorPair], rhs: View) -> [XYAxesAnchorPair.Solution] {
    return lhs.equal(to: rhs)
}

// MARK: View <= [Anchor]
@discardableResult
public func ≤ (lhs: [XYAxesAnchorPair], rhs: View) -> [XYAxesAnchorPair.Solution] {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: View >= [Anchor]
@discardableResult
public func ≥ (lhs: [XYAxesAnchorPair], rhs: View) -> [XYAxesAnchorPair.Solution] {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: View >=< [Anchor]
@discardableResult
public func ≥≤ (lhs: [XYAxesAnchorPair], rhs: View) -> [XYAxesAnchorPair.Solution] {
    return lhs.insetOrEqual(to: rhs)
}

// MARK: View <=> [Anchor]
@discardableResult
public func ≤≥ (lhs: [XYAxesAnchorPair], rhs: View) -> [XYAxesAnchorPair.Solution] {
    return lhs.outsetOrEqual(to: rhs)
}

// MARK: View array attributes inferred from Anchor

// MARK: [View] == Anchor
@discardableResult
public func .= (lhs: XYAxesAnchorPair, rhs: [View]) -> [XYAxesAnchorPair.Solution] {
    return lhs.equal(to: rhs)
}

// MARK: [View] <= Anchor
@discardableResult
public func ≤ (lhs: XYAxesAnchorPair, rhs: [View]) -> [XYAxesAnchorPair.Solution] {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: [View] >= Anchor
@discardableResult
public func ≥ (lhs: XYAxesAnchorPair, rhs: [View]) -> [XYAxesAnchorPair.Solution] {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: [View] >=< Anchor
@discardableResult
public func ≥≤ (lhs: XYAxesAnchorPair, rhs: [View]) -> [XYAxesAnchorPair.Solution] {
    return lhs.insetOrEqual(to: rhs)
}

// MARK: [View] <=> Anchor
@discardableResult
public func ≤≥ (lhs: XYAxesAnchorPair, rhs: [View]) -> [XYAxesAnchorPair.Solution] {
    return lhs.outsetOrEqual(to: rhs)
}

// MARK: View array attributes inferred from Anchor collection

// MARK: [View] == [Anchor]
@discardableResult
public func .= (lhs: [XYAxesAnchorPair], rhs: [View]) -> [[XYAxesAnchorPair.Solution]] {
    return lhs.equal(to: rhs)
}

// MARK: [View] <= [Anchor]
@discardableResult
public func ≤ (lhs: [XYAxesAnchorPair], rhs: [View]) -> [[XYAxesAnchorPair.Solution]] {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: [View] >= [Anchor]
@discardableResult
public func ≥ (lhs: [XYAxesAnchorPair], rhs: [View]) -> [[XYAxesAnchorPair.Solution]] {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: [View] >=< [Anchor]
@discardableResult
public func ≥≤ (lhs: [XYAxesAnchorPair], rhs: [View]) -> [[XYAxesAnchorPair.Solution]] {
    return lhs.insetOrEqual(to: rhs)
}

// MARK: [View] <=> [Anchor]
@discardableResult
public func ≤≥ (lhs: [XYAxesAnchorPair], rhs: [View]) -> [[XYAxesAnchorPair.Solution]] {
    return lhs.outsetOrEqual(to: rhs)
}

// MARK: View attribute inferred from expression

// MARK: View == Expression
@discardableResult
public func .= (lhs: View, rhs: XYAxesAnchorPairExpression) -> XYAxesAnchorPair.Solution {
    return lhs.equal(to: rhs)
}

// MARK: View <= Expression
@discardableResult
public func ≤ (lhs: View, rhs: XYAxesAnchorPairExpression) -> XYAxesAnchorPair.Solution {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: View >= Expression
@discardableResult
public func ≥ (lhs: View, rhs: XYAxesAnchorPairExpression) -> XYAxesAnchorPair.Solution {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: View >=< Expression
@discardableResult
public func ≥≤ (lhs: View, rhs: XYAxesAnchorPairExpression) -> XYAxesAnchorPair.Solution {
    return lhs.insetOrEqual(to: rhs)
}

// MARK: View <=> Expression
@discardableResult
public func ≤≥ (lhs: View, rhs: XYAxesAnchorPairExpression) -> XYAxesAnchorPair.Solution {
    return lhs.outsetOrEqual(to: rhs)
}

// MARK: View attribute inferred from expression collection

// MARK: View == Expressions
@discardableResult
public func .= (lhs: View, rhs: [XYAxesAnchorPairExpression]) -> [XYAxesAnchorPair.Solution] {
    return lhs.equal(to: rhs)
}

// MARK: View <= Expressions
@discardableResult
public func ≤ (lhs: View, rhs: [XYAxesAnchorPairExpression]) -> [XYAxesAnchorPair.Solution] {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: View >= Expressions
@discardableResult
public func ≥ (lhs: View, rhs: [XYAxesAnchorPairExpression]) -> [XYAxesAnchorPair.Solution] {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: View >=< Expression
@discardableResult
public func ≥≤ (lhs: View, rhs: [XYAxesAnchorPairExpression]) -> [XYAxesAnchorPair.Solution] {
    return lhs.insetOrEqual(to: rhs)
}

// MARK: View <=> Expression
@discardableResult
public func ≤≥ (lhs: View, rhs: [XYAxesAnchorPairExpression]) -> [XYAxesAnchorPair.Solution] {
    return lhs.outsetOrEqual(to: rhs)
}

// MARK: View array attributes inferred from Expression

// MARK: [View] == Expression
@discardableResult
public func .= (lhs: [View], rhs: XYAxesAnchorPairExpression) -> [XYAxesAnchorPair.Solution] {
    return lhs.equal(to: rhs)
}

// MARK: [View] <= Expression
@discardableResult
public func ≤ (lhs: [View], rhs: XYAxesAnchorPairExpression) -> [XYAxesAnchorPair.Solution] {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: [View] >= Expression
@discardableResult
public func ≥ (lhs: [View], rhs: XYAxesAnchorPairExpression) -> [XYAxesAnchorPair.Solution] {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: [View] >=< Expression
@discardableResult
public func ≥≤ (lhs: [View], rhs: XYAxesAnchorPairExpression) -> [XYAxesAnchorPair.Solution] {
    return lhs.insetOrEqual(to: rhs)
}

// MARK: [View] <=> Expression
@discardableResult
public func ≤≥ (lhs: [View], rhs: XYAxesAnchorPairExpression) -> [XYAxesAnchorPair.Solution] {
    return lhs.outsetOrEqual(to: rhs)
}

// MARK: View array attributes inferred from expression collection

// MARK: [View] == [Expression]
@discardableResult
public func .= (lhs: [View], rhs: [XYAxesAnchorPairExpression]) -> [[XYAxesAnchorPair.Solution]] {
    return lhs.equal(to: rhs)
}

// MARK: [View] <= [Expression]
@discardableResult
public func ≤ (lhs: [View], rhs: [XYAxesAnchorPairExpression]) -> [[XYAxesAnchorPair.Solution]] {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: [View] >= [Expression]
@discardableResult
public func ≥ (lhs: [View], rhs: [XYAxesAnchorPairExpression]) -> [[XYAxesAnchorPair.Solution]] {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: [View] >=< [Expression]
@discardableResult
public func ≥≤ (lhs: [View], rhs: [XYAxesAnchorPairExpression]) -> [[XYAxesAnchorPair.Solution]] {
    return lhs.insetOrEqual(to: rhs)
}

// MARK: [View] <=> [Expression]
@discardableResult
public func ≤≥ (lhs: [View], rhs: [XYAxesAnchorPairExpression]) -> [[XYAxesAnchorPair.Solution]] {
    return lhs.outsetOrEqual(to: rhs)
}
