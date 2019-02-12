// Generated using Sourcery 0.15.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

//
//  UILayoutKit
//
//  Created by Brian Strobach on 1/22/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//
// MARK: XAxisAnchorPair <=> XAxisAnchorPair.Constant

// MARK: - Equal

@discardableResult
public func .= (lhs: XAxisAnchorPair, rhs: XAxisAnchorPair.Constant) -> XAxisAnchorPair.Solution {
    return lhs.equal(to: rhs)
}

@discardableResult
public func .= (lhs: XAxisAnchorPair, rhs: [XAxisAnchorPair.Constant]) -> [XAxisAnchorPair.Solution] {
    return lhs.equal(to: rhs)
}

// MARK: - LessThanOrEqual

@discardableResult
public func ≤ (lhs: XAxisAnchorPair, rhs: XAxisAnchorPair.Constant) -> XAxisAnchorPair.Solution {
    return lhs.lessThanOrEqual(to: rhs)
}

@discardableResult
public func ≤ (lhs: XAxisAnchorPair, rhs: [XAxisAnchorPair.Constant]) -> [XAxisAnchorPair.Solution] {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: - GreaterThanOrEqual

@discardableResult
public func ≥ (lhs: XAxisAnchorPair, rhs: XAxisAnchorPair.Constant) -> XAxisAnchorPair.Solution {
    return lhs.greaterThanOrEqual(to: rhs)
}

@discardableResult
public func ≥ (lhs: XAxisAnchorPair, rhs: [XAxisAnchorPair.Constant]) -> [XAxisAnchorPair.Solution] {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: XAxisAnchorPair Array <=> XAxisAnchorPair.Constant

// MARK: - Equal

// MARK: Collection == Expression
@discardableResult
public func .= (lhs: [XAxisAnchorPair], rhs: XAxisAnchorPair.Constant) -> [XAxisAnchorPair.Solution] {
    return lhs.map { $0.equal(to: rhs) }
}

// MARK: Collection == Expression Array
@discardableResult
public func .= (lhs: [XAxisAnchorPair], rhs: [XAxisAnchorPair.Constant]) -> [[XAxisAnchorPair.Solution]] {
    return lhs.map { $0.equal(to: rhs) }
}

// MARK: - LessThanOrEqual

// MARK: Collection <= Expression
@discardableResult
public func ≤ (lhs: [XAxisAnchorPair], rhs: XAxisAnchorPair.Constant) -> [XAxisAnchorPair.Solution] {
    return lhs.map { $0.lessThanOrEqual(to: rhs) }
}

// MARK: Collection <= Expression Array
@discardableResult
public func ≤ (lhs: [XAxisAnchorPair], rhs: [XAxisAnchorPair.Constant]) -> [[XAxisAnchorPair.Solution]] {
    return lhs.map { $0.lessThanOrEqual(to: rhs) }
}

// MARK: - GreaterThanOrEqual

// MARK: Collection >= Expression
@discardableResult
public func ≥ (lhs: [XAxisAnchorPair], rhs: XAxisAnchorPair.Constant) -> [XAxisAnchorPair.Solution] {
    return lhs.map { $0.greaterThanOrEqual(to: rhs) }
}

// MARK: Collection >= Expression Array
@discardableResult
public func ≥ (lhs: [XAxisAnchorPair], rhs: [XAxisAnchorPair.Constant]) -> [[XAxisAnchorPair.Solution]] {
    return lhs.map { $0.greaterThanOrEqual(to: rhs) }
}
// MARK: XAxisAnchorPair <=> XAxisAnchorPair.Coefficient

// MARK: - Equal

@discardableResult
public func .= (lhs: XAxisAnchorPair, rhs: XAxisAnchorPair.Coefficient) -> XAxisAnchorPair.Solution {
    return lhs.equal(to: rhs)
}

@discardableResult
public func .= (lhs: XAxisAnchorPair, rhs: [XAxisAnchorPair.Coefficient]) -> [XAxisAnchorPair.Solution] {
    return lhs.equal(to: rhs)
}

// MARK: - LessThanOrEqual

@discardableResult
public func ≤ (lhs: XAxisAnchorPair, rhs: XAxisAnchorPair.Coefficient) -> XAxisAnchorPair.Solution {
    return lhs.lessThanOrEqual(to: rhs)
}

@discardableResult
public func ≤ (lhs: XAxisAnchorPair, rhs: [XAxisAnchorPair.Coefficient]) -> [XAxisAnchorPair.Solution] {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: - GreaterThanOrEqual

@discardableResult
public func ≥ (lhs: XAxisAnchorPair, rhs: XAxisAnchorPair.Coefficient) -> XAxisAnchorPair.Solution {
    return lhs.greaterThanOrEqual(to: rhs)
}

@discardableResult
public func ≥ (lhs: XAxisAnchorPair, rhs: [XAxisAnchorPair.Coefficient]) -> [XAxisAnchorPair.Solution] {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: XAxisAnchorPair Array <=> XAxisAnchorPair.Coefficient

// MARK: - Equal

// MARK: Collection == Expression
@discardableResult
public func .= (lhs: [XAxisAnchorPair], rhs: XAxisAnchorPair.Coefficient) -> [XAxisAnchorPair.Solution] {
    return lhs.map { $0.equal(to: rhs) }
}

// MARK: Collection == Expression Array
@discardableResult
public func .= (lhs: [XAxisAnchorPair], rhs: [XAxisAnchorPair.Coefficient]) -> [[XAxisAnchorPair.Solution]] {
    return lhs.map { $0.equal(to: rhs) }
}

// MARK: - LessThanOrEqual

// MARK: Collection <= Expression
@discardableResult
public func ≤ (lhs: [XAxisAnchorPair], rhs: XAxisAnchorPair.Coefficient) -> [XAxisAnchorPair.Solution] {
    return lhs.map { $0.lessThanOrEqual(to: rhs) }
}

// MARK: Collection <= Expression Array
@discardableResult
public func ≤ (lhs: [XAxisAnchorPair], rhs: [XAxisAnchorPair.Coefficient]) -> [[XAxisAnchorPair.Solution]] {
    return lhs.map { $0.lessThanOrEqual(to: rhs) }
}

// MARK: - GreaterThanOrEqual

// MARK: Collection >= Expression
@discardableResult
public func ≥ (lhs: [XAxisAnchorPair], rhs: XAxisAnchorPair.Coefficient) -> [XAxisAnchorPair.Solution] {
    return lhs.map { $0.greaterThanOrEqual(to: rhs) }
}

// MARK: Collection >= Expression Array
@discardableResult
public func ≥ (lhs: [XAxisAnchorPair], rhs: [XAxisAnchorPair.Coefficient]) -> [[XAxisAnchorPair.Solution]] {
    return lhs.map { $0.greaterThanOrEqual(to: rhs) }
}
// MARK: XAxisAnchorPair <=> XAxisAnchorPair.Multiplier

// MARK: - Equal

@discardableResult
public func .= (lhs: XAxisAnchorPair, rhs: XAxisAnchorPair.Multiplier) -> XAxisAnchorPair.Solution {
    return lhs.equal(to: rhs)
}

@discardableResult
public func .= (lhs: XAxisAnchorPair, rhs: [XAxisAnchorPair.Multiplier]) -> [XAxisAnchorPair.Solution] {
    return lhs.equal(to: rhs)
}

// MARK: - LessThanOrEqual

@discardableResult
public func ≤ (lhs: XAxisAnchorPair, rhs: XAxisAnchorPair.Multiplier) -> XAxisAnchorPair.Solution {
    return lhs.lessThanOrEqual(to: rhs)
}

@discardableResult
public func ≤ (lhs: XAxisAnchorPair, rhs: [XAxisAnchorPair.Multiplier]) -> [XAxisAnchorPair.Solution] {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: - GreaterThanOrEqual

@discardableResult
public func ≥ (lhs: XAxisAnchorPair, rhs: XAxisAnchorPair.Multiplier) -> XAxisAnchorPair.Solution {
    return lhs.greaterThanOrEqual(to: rhs)
}

@discardableResult
public func ≥ (lhs: XAxisAnchorPair, rhs: [XAxisAnchorPair.Multiplier]) -> [XAxisAnchorPair.Solution] {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: XAxisAnchorPair Array <=> XAxisAnchorPair.Multiplier

// MARK: - Equal

// MARK: Collection == Expression
@discardableResult
public func .= (lhs: [XAxisAnchorPair], rhs: XAxisAnchorPair.Multiplier) -> [XAxisAnchorPair.Solution] {
    return lhs.map { $0.equal(to: rhs) }
}

// MARK: Collection == Expression Array
@discardableResult
public func .= (lhs: [XAxisAnchorPair], rhs: [XAxisAnchorPair.Multiplier]) -> [[XAxisAnchorPair.Solution]] {
    return lhs.map { $0.equal(to: rhs) }
}

// MARK: - LessThanOrEqual

// MARK: Collection <= Expression
@discardableResult
public func ≤ (lhs: [XAxisAnchorPair], rhs: XAxisAnchorPair.Multiplier) -> [XAxisAnchorPair.Solution] {
    return lhs.map { $0.lessThanOrEqual(to: rhs) }
}

// MARK: Collection <= Expression Array
@discardableResult
public func ≤ (lhs: [XAxisAnchorPair], rhs: [XAxisAnchorPair.Multiplier]) -> [[XAxisAnchorPair.Solution]] {
    return lhs.map { $0.lessThanOrEqual(to: rhs) }
}

// MARK: - GreaterThanOrEqual

// MARK: Collection >= Expression
@discardableResult
public func ≥ (lhs: [XAxisAnchorPair], rhs: XAxisAnchorPair.Multiplier) -> [XAxisAnchorPair.Solution] {
    return lhs.map { $0.greaterThanOrEqual(to: rhs) }
}

// MARK: Collection >= Expression Array
@discardableResult
public func ≥ (lhs: [XAxisAnchorPair], rhs: [XAxisAnchorPair.Multiplier]) -> [[XAxisAnchorPair.Solution]] {
    return lhs.map { $0.greaterThanOrEqual(to: rhs) }
}
