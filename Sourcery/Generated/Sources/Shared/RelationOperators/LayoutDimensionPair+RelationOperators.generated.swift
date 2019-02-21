// Generated using Sourcery 0.15.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

//
//  LayoutDimensionPair+RelationOperators.swift
//  Layman
//
//  Created by Brian Strobach on 1/4/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

// MARK: LayoutDimensionPair attribute inferred from Anchor

// MARK: LayoutDimensionPair == Anchor
@discardableResult
public func .= (lhs: LayoutDimensionPair, rhs: LayoutDimensionPair) -> LayoutDimensionPair.Solution {
    return lhs.equal(to: rhs)
}

// MARK: LayoutDimensionPair <= Anchor
@discardableResult
public func ≤ (lhs: LayoutDimensionPair, rhs: LayoutDimensionPair) -> LayoutDimensionPair.Solution {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: LayoutDimensionPair >= Anchor
@discardableResult
public func ≥ (lhs: LayoutDimensionPair, rhs: LayoutDimensionPair) -> LayoutDimensionPair.Solution {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: LayoutDimensionPair >=< Anchor
@discardableResult
public func ≥≤ (lhs: LayoutDimensionPair, rhs: LayoutDimensionPair) -> LayoutDimensionPair.Solution {
    return lhs.inset(from: rhs)
}

// MARK: LayoutDimensionPair <=> Anchor
@discardableResult
public func ≤≥ (lhs: LayoutDimensionPair, rhs: LayoutDimensionPair) -> LayoutDimensionPair.Solution {
    return lhs.outset(from: rhs)
}

// MARK: LayoutDimensionPair attribute inferred from Anchor collection

// MARK: LayoutDimensionPair == [Anchor]
@discardableResult
public func .= (lhs: LayoutDimensionPair, rhs: [LayoutDimensionPair]) -> [LayoutDimensionPair.Solution] {
    return rhs.map({lhs .= $0})
}

// MARK: LayoutDimensionPair <= [Anchor]
@discardableResult
public func ≤ (lhs: LayoutDimensionPair, rhs: [LayoutDimensionPair]) -> [LayoutDimensionPair.Solution] {
    return rhs.map({lhs ≤ $0})
}

// MARK: LayoutDimensionPair >= [Anchor]
@discardableResult
public func ≥ (lhs: LayoutDimensionPair, rhs: [LayoutDimensionPair]) -> [LayoutDimensionPair.Solution] {
    return rhs.map({lhs ≥ $0})
}

// MARK: LayoutDimensionPair >=< [Anchor]
@discardableResult
public func ≥≤ (lhs: LayoutDimensionPair, rhs: [LayoutDimensionPair]) -> [LayoutDimensionPair.Solution] {
    return rhs.map({lhs ≥≤ $0})
}

// MARK: LayoutDimensionPair <=> [Anchor]
@discardableResult
public func ≤≥ (lhs: LayoutDimensionPair, rhs: [LayoutDimensionPair]) -> [LayoutDimensionPair.Solution] {
    return rhs.map({lhs ≤≥ $0})
}

// MARK: LayoutDimensionPair array attributes inferred from Anchor

// MARK: [LayoutDimensionPair] == Anchor
@discardableResult
public func .= (lhs: [LayoutDimensionPair], rhs: LayoutDimensionPair) -> [LayoutDimensionPair.Solution] {
    return lhs.map { $0 .= rhs }
}

// MARK: [LayoutDimensionPair] <= Anchor
@discardableResult
public func ≤ (lhs: [LayoutDimensionPair], rhs: LayoutDimensionPair) -> [LayoutDimensionPair.Solution] {
    return lhs.map { $0 ≤ rhs }
}

// MARK: [LayoutDimensionPair] >= Anchor
@discardableResult
public func ≥ (lhs: [LayoutDimensionPair], rhs: LayoutDimensionPair) -> [LayoutDimensionPair.Solution] {
    return lhs.map { $0 ≥ rhs }
}

// MARK: [LayoutDimensionPair] >=< Anchor
@discardableResult
public func ≥≤ (lhs: [LayoutDimensionPair], rhs: LayoutDimensionPair) -> [LayoutDimensionPair.Solution] {
    return lhs.map { $0 ≥≤ rhs }
}

// MARK: [LayoutDimensionPair] <=> Anchor
@discardableResult
public func ≤≥ (lhs: [LayoutDimensionPair], rhs: LayoutDimensionPair) -> [LayoutDimensionPair.Solution] {
    return lhs.map { $0 ≤≥ rhs }
}

// MARK: LayoutDimensionPair array attributes inferred from Anchor collection

// MARK: [LayoutDimensionPair] == [Anchor]
@discardableResult
public func .= (lhs: [LayoutDimensionPair], rhs: [LayoutDimensionPair]) -> [[LayoutDimensionPair.Solution]] {
    return lhs.map { $0 .= rhs }
}

// MARK: [LayoutDimensionPair] <= [Anchor]
@discardableResult
public func ≤ (lhs: [LayoutDimensionPair], rhs: [LayoutDimensionPair]) -> [[LayoutDimensionPair.Solution]] {
    return lhs.map { $0 ≤ rhs }
}

// MARK: [LayoutDimensionPair] >= [Anchor]
@discardableResult
public func ≥ (lhs: [LayoutDimensionPair], rhs: [LayoutDimensionPair]) -> [[LayoutDimensionPair.Solution]] {
    return lhs.map { $0 ≥ rhs }
}

// MARK: [LayoutDimensionPair] >=< [Anchor]
@discardableResult
public func ≥≤ (lhs: [LayoutDimensionPair], rhs: [LayoutDimensionPair]) -> [[LayoutDimensionPair.Solution]] {
    return lhs.map { $0 ≥≤ rhs }
}

// MARK: [LayoutDimensionPair] <=> [Anchor]
@discardableResult
public func ≤≥ (lhs: [LayoutDimensionPair], rhs: [LayoutDimensionPair]) -> [[LayoutDimensionPair.Solution]] {
    return lhs.map { $0 ≤≥ rhs }
}

// MARK: LayoutDimensionPair attribute inferred from expression

// MARK: LayoutDimensionPair == Expression
@discardableResult
public func .= (lhs: LayoutDimensionPair, rhs: LayoutDimensionPairExpression) -> LayoutDimensionPair.Solution {
    return lhs.equal(to: rhs)
}

// MARK: LayoutDimensionPair <= Expression
@discardableResult
public func ≤ (lhs: LayoutDimensionPair, rhs: LayoutDimensionPairExpression) -> LayoutDimensionPair.Solution {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: LayoutDimensionPair >= Expression
@discardableResult
public func ≥ (lhs: LayoutDimensionPair, rhs: LayoutDimensionPairExpression) -> LayoutDimensionPair.Solution {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: LayoutDimensionPair >=< Expression
@discardableResult
public func ≥≤ (lhs: LayoutDimensionPair, rhs: LayoutDimensionPairExpression) -> LayoutDimensionPair.Solution {
    return lhs.inset(from: rhs)
}

// MARK: LayoutDimensionPair <=> Expression
@discardableResult
public func ≤≥ (lhs: LayoutDimensionPair, rhs: LayoutDimensionPairExpression) -> LayoutDimensionPair.Solution {
    return lhs.outset(from: rhs)
}

// MARK: LayoutDimensionPair attribute inferred from expression collection

// MARK: LayoutDimensionPair == Expressions
@discardableResult
public func .= (lhs: LayoutDimensionPair, rhs: [LayoutDimensionPairExpression]) -> [LayoutDimensionPair.Solution] {
    return rhs.map({lhs .= $0})
}

// MARK: LayoutDimensionPair <= Expressions
@discardableResult
public func ≤ (lhs: LayoutDimensionPair, rhs: [LayoutDimensionPairExpression]) -> [LayoutDimensionPair.Solution] {
    return rhs.map({lhs ≤ $0})
}

// MARK: LayoutDimensionPair >= Expressions
@discardableResult
public func ≥ (lhs: LayoutDimensionPair, rhs: [LayoutDimensionPairExpression]) -> [LayoutDimensionPair.Solution] {
    return rhs.map({lhs ≥ $0})
}

// MARK: LayoutDimensionPair >=< Expression
@discardableResult
public func ≥≤ (lhs: LayoutDimensionPair, rhs: [LayoutDimensionPairExpression]) -> [LayoutDimensionPair.Solution] {
    return rhs.map({lhs ≥≤ $0})
}

// MARK: LayoutDimensionPair <=> Expression
@discardableResult
public func ≤≥ (lhs: LayoutDimensionPair, rhs: [LayoutDimensionPairExpression]) -> [LayoutDimensionPair.Solution] {
    return rhs.map({lhs ≤≥ $0})
}

// MARK: LayoutDimensionPair array attributes inferred from Expression

// MARK: [LayoutDimensionPair] == Expression
@discardableResult
public func .= (lhs: [LayoutDimensionPair], rhs: LayoutDimensionPairExpression) -> [LayoutDimensionPair.Solution] {
    return lhs.map { $0 .= rhs }
}

// MARK: [LayoutDimensionPair] <= Expression
@discardableResult
public func ≤ (lhs: [LayoutDimensionPair], rhs: LayoutDimensionPairExpression) -> [LayoutDimensionPair.Solution] {
    return lhs.map { $0 ≤ rhs }
}

// MARK: [LayoutDimensionPair] >= Expression
@discardableResult
public func ≥ (lhs: [LayoutDimensionPair], rhs: LayoutDimensionPairExpression) -> [LayoutDimensionPair.Solution] {
    return lhs.map { $0 ≥ rhs }
}

// MARK: [LayoutDimensionPair] >=< Expression
@discardableResult
public func ≥≤ (lhs: [LayoutDimensionPair], rhs: LayoutDimensionPairExpression) -> [LayoutDimensionPair.Solution] {
    return lhs.map { $0 ≥≤ rhs }
}

// MARK: [LayoutDimensionPair] <=> Expression
@discardableResult
public func ≤≥ (lhs: [LayoutDimensionPair], rhs: LayoutDimensionPairExpression) -> [LayoutDimensionPair.Solution] {
    return lhs.map { $0 ≤≥ rhs }
}

// MARK: LayoutDimensionPair array attributes inferred from expression collection

// MARK: [LayoutDimensionPair] == [Expression]
@discardableResult
public func .= (lhs: [LayoutDimensionPair], rhs: [LayoutDimensionPairExpression]) -> [[LayoutDimensionPair.Solution]] {
    return lhs.map { $0 .= rhs }
}

// MARK: [LayoutDimensionPair] <= [Expression]
@discardableResult
public func ≤ (lhs: [LayoutDimensionPair], rhs: [LayoutDimensionPairExpression]) -> [[LayoutDimensionPair.Solution]] {
    return lhs.map { $0 ≤ rhs }
}

// MARK: [LayoutDimensionPair] >= [Expression]
@discardableResult
public func ≥ (lhs: [LayoutDimensionPair], rhs: [LayoutDimensionPairExpression]) -> [[LayoutDimensionPair.Solution]] {
    return lhs.map { $0 ≥ rhs }
}

// MARK: [LayoutDimensionPair] >=< [Expression]
@discardableResult
public func ≥≤ (lhs: [LayoutDimensionPair], rhs: [LayoutDimensionPairExpression]) -> [[LayoutDimensionPair.Solution]] {
    return lhs.map { $0 ≥≤ rhs }
}

// MARK: [LayoutDimensionPair] <=> [Expression]
@discardableResult
public func ≤≥ (lhs: [LayoutDimensionPair], rhs: [LayoutDimensionPairExpression]) -> [[LayoutDimensionPair.Solution]] {
    return lhs.map { $0 ≤≥ rhs }
}
