// Generated using Sourcery 0.15.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

//
//  LayoutDimension+RelationOperators.swift
//  Layman
//
//  Created by Brian Strobach on 1/4/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

// MARK: LayoutDimension attribute inferred from Anchor

// MARK: LayoutDimension == Anchor
@discardableResult
public func .= (lhs: LayoutDimension, rhs: LayoutDimension) -> LayoutDimension.Solution {
    return lhs.equal(to: rhs)
}

// MARK: LayoutDimension <= Anchor
@discardableResult
public func ≤ (lhs: LayoutDimension, rhs: LayoutDimension) -> LayoutDimension.Solution {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: LayoutDimension >= Anchor
@discardableResult
public func ≥ (lhs: LayoutDimension, rhs: LayoutDimension) -> LayoutDimension.Solution {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: LayoutDimension >=< Anchor
@discardableResult
public func ≥≤ (lhs: LayoutDimension, rhs: LayoutDimension) -> LayoutDimension.Solution {
    return lhs.insetOrEqual(to: rhs)
}

// MARK: LayoutDimension <=> Anchor
@discardableResult
public func ≤≥ (lhs: LayoutDimension, rhs: LayoutDimension) -> LayoutDimension.Solution {
    return lhs.outsetOrEqual(to: rhs)
}

// MARK: LayoutDimension attribute inferred from Anchor collection

// MARK: LayoutDimension == [Anchor]
@discardableResult
public func .= (lhs: LayoutDimension, rhs: [LayoutDimension]) -> [LayoutDimension.Solution] {
    return lhs.equal(to: rhs)
}

// MARK: LayoutDimension <= [Anchor]
@discardableResult
public func ≤ (lhs: LayoutDimension, rhs: [LayoutDimension]) -> [LayoutDimension.Solution] {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: LayoutDimension >= [Anchor]
@discardableResult
public func ≥ (lhs: LayoutDimension, rhs: [LayoutDimension]) -> [LayoutDimension.Solution] {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: LayoutDimension >=< [Anchor]
@discardableResult
public func ≥≤ (lhs: LayoutDimension, rhs: [LayoutDimension]) -> [LayoutDimension.Solution] {
    return lhs.insetOrEqual(to: rhs)
}

// MARK: LayoutDimension <=> [Anchor]
@discardableResult
public func ≤≥ (lhs: LayoutDimension, rhs: [LayoutDimension]) -> [LayoutDimension.Solution] {
    return lhs.outsetOrEqual(to: rhs)
}

// MARK: LayoutDimension array attributes inferred from Anchor

// MARK: [LayoutDimension] == Anchor
@discardableResult
public func .= (lhs: [LayoutDimension], rhs: LayoutDimension) -> [LayoutDimension.Solution] {
    return lhs.equal(to: rhs)
}

// MARK: [LayoutDimension] <= Anchor
@discardableResult
public func ≤ (lhs: [LayoutDimension], rhs: LayoutDimension) -> [LayoutDimension.Solution] {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: [LayoutDimension] >= Anchor
@discardableResult
public func ≥ (lhs: [LayoutDimension], rhs: LayoutDimension) -> [LayoutDimension.Solution] {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: [LayoutDimension] >=< Anchor
@discardableResult
public func ≥≤ (lhs: [LayoutDimension], rhs: LayoutDimension) -> [LayoutDimension.Solution] {
    return lhs.insetOrEqual(to: rhs)
}

// MARK: [LayoutDimension] <=> Anchor
@discardableResult
public func ≤≥ (lhs: [LayoutDimension], rhs: LayoutDimension) -> [LayoutDimension.Solution] {
    return lhs.outsetOrEqual(to: rhs)
}

// MARK: LayoutDimension array attributes inferred from Anchor collection

// MARK: [LayoutDimension] == [Anchor]
@discardableResult
public func .= (lhs: [LayoutDimension], rhs: [LayoutDimension]) -> [[LayoutDimension.Solution]] {
    return lhs.equal(to: rhs)
}

// MARK: [LayoutDimension] <= [Anchor]
@discardableResult
public func ≤ (lhs: [LayoutDimension], rhs: [LayoutDimension]) -> [[LayoutDimension.Solution]] {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: [LayoutDimension] >= [Anchor]
@discardableResult
public func ≥ (lhs: [LayoutDimension], rhs: [LayoutDimension]) -> [[LayoutDimension.Solution]] {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: [LayoutDimension] >=< [Anchor]
@discardableResult
public func ≥≤ (lhs: [LayoutDimension], rhs: [LayoutDimension]) -> [[LayoutDimension.Solution]] {
    return lhs.insetOrEqual(to: rhs)
}

// MARK: [LayoutDimension] <=> [Anchor]
@discardableResult
public func ≤≥ (lhs: [LayoutDimension], rhs: [LayoutDimension]) -> [[LayoutDimension.Solution]] {
    return lhs.outsetOrEqual(to: rhs)
}

// MARK: LayoutDimension attribute inferred from expression

// MARK: LayoutDimension == Expression
@discardableResult
public func .= (lhs: LayoutDimension, rhs: LayoutDimensionExpression) -> LayoutDimension.Solution {
    return lhs.equal(to: rhs)
}

// MARK: LayoutDimension <= Expression
@discardableResult
public func ≤ (lhs: LayoutDimension, rhs: LayoutDimensionExpression) -> LayoutDimension.Solution {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: LayoutDimension >= Expression
@discardableResult
public func ≥ (lhs: LayoutDimension, rhs: LayoutDimensionExpression) -> LayoutDimension.Solution {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: LayoutDimension >=< Expression
@discardableResult
public func ≥≤ (lhs: LayoutDimension, rhs: LayoutDimensionExpression) -> LayoutDimension.Solution {
    return lhs.insetOrEqual(to: rhs)
}

// MARK: LayoutDimension <=> Expression
@discardableResult
public func ≤≥ (lhs: LayoutDimension, rhs: LayoutDimensionExpression) -> LayoutDimension.Solution {
    return lhs.outsetOrEqual(to: rhs)
}

// MARK: LayoutDimension attribute inferred from expression collection

// MARK: LayoutDimension == Expressions
@discardableResult
public func .= (lhs: LayoutDimension, rhs: [LayoutDimensionExpression]) -> [LayoutDimension.Solution] {
    return lhs.equal(to: rhs)
}

// MARK: LayoutDimension <= Expressions
@discardableResult
public func ≤ (lhs: LayoutDimension, rhs: [LayoutDimensionExpression]) -> [LayoutDimension.Solution] {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: LayoutDimension >= Expressions
@discardableResult
public func ≥ (lhs: LayoutDimension, rhs: [LayoutDimensionExpression]) -> [LayoutDimension.Solution] {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: LayoutDimension >=< Expression
@discardableResult
public func ≥≤ (lhs: LayoutDimension, rhs: [LayoutDimensionExpression]) -> [LayoutDimension.Solution] {
    return lhs.insetOrEqual(to: rhs)
}

// MARK: LayoutDimension <=> Expression
@discardableResult
public func ≤≥ (lhs: LayoutDimension, rhs: [LayoutDimensionExpression]) -> [LayoutDimension.Solution] {
    return lhs.outsetOrEqual(to: rhs)
}

// MARK: LayoutDimension array attributes inferred from Expression

// MARK: [LayoutDimension] == Expression
@discardableResult
public func .= (lhs: [LayoutDimension], rhs: LayoutDimensionExpression) -> [LayoutDimension.Solution] {
    return lhs.equal(to: rhs)
}

// MARK: [LayoutDimension] <= Expression
@discardableResult
public func ≤ (lhs: [LayoutDimension], rhs: LayoutDimensionExpression) -> [LayoutDimension.Solution] {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: [LayoutDimension] >= Expression
@discardableResult
public func ≥ (lhs: [LayoutDimension], rhs: LayoutDimensionExpression) -> [LayoutDimension.Solution] {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: [LayoutDimension] >=< Expression
@discardableResult
public func ≥≤ (lhs: [LayoutDimension], rhs: LayoutDimensionExpression) -> [LayoutDimension.Solution] {
    return lhs.insetOrEqual(to: rhs)
}

// MARK: [LayoutDimension] <=> Expression
@discardableResult
public func ≤≥ (lhs: [LayoutDimension], rhs: LayoutDimensionExpression) -> [LayoutDimension.Solution] {
    return lhs.outsetOrEqual(to: rhs)
}

// MARK: LayoutDimension array attributes inferred from expression collection

// MARK: [LayoutDimension] == [Expression]
@discardableResult
public func .= (lhs: [LayoutDimension], rhs: [LayoutDimensionExpression]) -> [[LayoutDimension.Solution]] {
    return lhs.equal(to: rhs)
}

// MARK: [LayoutDimension] <= [Expression]
@discardableResult
public func ≤ (lhs: [LayoutDimension], rhs: [LayoutDimensionExpression]) -> [[LayoutDimension.Solution]] {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: [LayoutDimension] >= [Expression]
@discardableResult
public func ≥ (lhs: [LayoutDimension], rhs: [LayoutDimensionExpression]) -> [[LayoutDimension.Solution]] {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: [LayoutDimension] >=< [Expression]
@discardableResult
public func ≥≤ (lhs: [LayoutDimension], rhs: [LayoutDimensionExpression]) -> [[LayoutDimension.Solution]] {
    return lhs.insetOrEqual(to: rhs)
}

// MARK: [LayoutDimension] <=> [Expression]
@discardableResult
public func ≤≥ (lhs: [LayoutDimension], rhs: [LayoutDimensionExpression]) -> [[LayoutDimension.Solution]] {
    return lhs.outsetOrEqual(to: rhs)
}
