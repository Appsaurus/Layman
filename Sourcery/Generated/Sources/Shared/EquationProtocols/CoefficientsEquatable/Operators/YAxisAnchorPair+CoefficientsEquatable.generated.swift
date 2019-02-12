// Generated using Sourcery 0.15.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

//
//  UILayoutKit
//
//  Created by Brian Strobach on 1/22/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//
// MARK: YAxisAnchorPair <=> YAxisAnchorPair.LayoutCoefficientTuple

// MARK: - Equal

@discardableResult
public func .= (lhs: YAxisAnchorPair, rhs: YAxisAnchorPair.LayoutCoefficientTuple) -> YAxisAnchorPair.Solution {
    return lhs.equal(to: rhs)
}

@discardableResult
public func .= (lhs: YAxisAnchorPair, rhs: [YAxisAnchorPair.LayoutCoefficientTuple]) -> [YAxisAnchorPair.Solution] {
    return lhs.equal(to: rhs)
}

// MARK: - LessThanOrEqual

@discardableResult
public func ≤ (lhs: YAxisAnchorPair, rhs: YAxisAnchorPair.LayoutCoefficientTuple) -> YAxisAnchorPair.Solution {
    return lhs.lessThanOrEqual(to: rhs)
}

@discardableResult
public func ≤ (lhs: YAxisAnchorPair, rhs: [YAxisAnchorPair.LayoutCoefficientTuple]) -> [YAxisAnchorPair.Solution] {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: - GreaterThanOrEqual

@discardableResult
public func ≥ (lhs: YAxisAnchorPair, rhs: YAxisAnchorPair.LayoutCoefficientTuple) -> YAxisAnchorPair.Solution {
    return lhs.greaterThanOrEqual(to: rhs)
}

@discardableResult
public func ≥ (lhs: YAxisAnchorPair, rhs: [YAxisAnchorPair.LayoutCoefficientTuple]) -> [YAxisAnchorPair.Solution] {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: YAxisAnchorPair Array <=> YAxisAnchorPair.LayoutCoefficientTuple

// MARK: - Equal

// MARK: Collection == Expression
@discardableResult
public func .= (lhs: [YAxisAnchorPair], rhs: YAxisAnchorPair.LayoutCoefficientTuple) -> [YAxisAnchorPair.Solution] {
    return lhs.map { $0.equal(to: rhs) }
}

// MARK: Collection == Expression Array
@discardableResult
public func .= (lhs: [YAxisAnchorPair], rhs: [YAxisAnchorPair.LayoutCoefficientTuple]) -> [[YAxisAnchorPair.Solution]] {
    return lhs.map { $0.equal(to: rhs) }
}

// MARK: - LessThanOrEqual

// MARK: Collection <= Expression
@discardableResult
public func ≤ (lhs: [YAxisAnchorPair], rhs: YAxisAnchorPair.LayoutCoefficientTuple) -> [YAxisAnchorPair.Solution] {
    return lhs.map { $0.lessThanOrEqual(to: rhs) }
}

// MARK: Collection <= Expression Array
@discardableResult
public func ≤ (lhs: [YAxisAnchorPair], rhs: [YAxisAnchorPair.LayoutCoefficientTuple]) -> [[YAxisAnchorPair.Solution]] {
    return lhs.map { $0.lessThanOrEqual(to: rhs) }
}

// MARK: - GreaterThanOrEqual

// MARK: Collection >= Expression
@discardableResult
public func ≥ (lhs: [YAxisAnchorPair], rhs: YAxisAnchorPair.LayoutCoefficientTuple) -> [YAxisAnchorPair.Solution] {
    return lhs.map { $0.greaterThanOrEqual(to: rhs) }
}

// MARK: Collection >= Expression Array
@discardableResult
public func ≥ (lhs: [YAxisAnchorPair], rhs: [YAxisAnchorPair.LayoutCoefficientTuple]) -> [[YAxisAnchorPair.Solution]] {
    return lhs.map { $0.greaterThanOrEqual(to: rhs) }
}
// MARK: YAxisAnchorPair <=> YAxisAnchorPair.LayoutConstantTuple

// MARK: - Equal

@discardableResult
public func .= (lhs: YAxisAnchorPair, rhs: YAxisAnchorPair.LayoutConstantTuple) -> YAxisAnchorPair.Solution {
    return lhs.equal(to: rhs)
}

@discardableResult
public func .= (lhs: YAxisAnchorPair, rhs: [YAxisAnchorPair.LayoutConstantTuple]) -> [YAxisAnchorPair.Solution] {
    return lhs.equal(to: rhs)
}

// MARK: - LessThanOrEqual

@discardableResult
public func ≤ (lhs: YAxisAnchorPair, rhs: YAxisAnchorPair.LayoutConstantTuple) -> YAxisAnchorPair.Solution {
    return lhs.lessThanOrEqual(to: rhs)
}

@discardableResult
public func ≤ (lhs: YAxisAnchorPair, rhs: [YAxisAnchorPair.LayoutConstantTuple]) -> [YAxisAnchorPair.Solution] {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: - GreaterThanOrEqual

@discardableResult
public func ≥ (lhs: YAxisAnchorPair, rhs: YAxisAnchorPair.LayoutConstantTuple) -> YAxisAnchorPair.Solution {
    return lhs.greaterThanOrEqual(to: rhs)
}

@discardableResult
public func ≥ (lhs: YAxisAnchorPair, rhs: [YAxisAnchorPair.LayoutConstantTuple]) -> [YAxisAnchorPair.Solution] {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: YAxisAnchorPair Array <=> YAxisAnchorPair.LayoutConstantTuple

// MARK: - Equal

// MARK: Collection == Expression
@discardableResult
public func .= (lhs: [YAxisAnchorPair], rhs: YAxisAnchorPair.LayoutConstantTuple) -> [YAxisAnchorPair.Solution] {
    return lhs.map { $0.equal(to: rhs) }
}

// MARK: Collection == Expression Array
@discardableResult
public func .= (lhs: [YAxisAnchorPair], rhs: [YAxisAnchorPair.LayoutConstantTuple]) -> [[YAxisAnchorPair.Solution]] {
    return lhs.map { $0.equal(to: rhs) }
}

// MARK: - LessThanOrEqual

// MARK: Collection <= Expression
@discardableResult
public func ≤ (lhs: [YAxisAnchorPair], rhs: YAxisAnchorPair.LayoutConstantTuple) -> [YAxisAnchorPair.Solution] {
    return lhs.map { $0.lessThanOrEqual(to: rhs) }
}

// MARK: Collection <= Expression Array
@discardableResult
public func ≤ (lhs: [YAxisAnchorPair], rhs: [YAxisAnchorPair.LayoutConstantTuple]) -> [[YAxisAnchorPair.Solution]] {
    return lhs.map { $0.lessThanOrEqual(to: rhs) }
}

// MARK: - GreaterThanOrEqual

// MARK: Collection >= Expression
@discardableResult
public func ≥ (lhs: [YAxisAnchorPair], rhs: YAxisAnchorPair.LayoutConstantTuple) -> [YAxisAnchorPair.Solution] {
    return lhs.map { $0.greaterThanOrEqual(to: rhs) }
}

// MARK: Collection >= Expression Array
@discardableResult
public func ≥ (lhs: [YAxisAnchorPair], rhs: [YAxisAnchorPair.LayoutConstantTuple]) -> [[YAxisAnchorPair.Solution]] {
    return lhs.map { $0.greaterThanOrEqual(to: rhs) }
}
// MARK: YAxisAnchorPair <=> YAxisAnchorPair.LayoutCoefficient

// MARK: - Equal

@discardableResult
public func .= (lhs: YAxisAnchorPair, rhs: YAxisAnchorPair.LayoutCoefficient) -> YAxisAnchorPair.Solution {
    return lhs.equal(to: rhs)
}

@discardableResult
public func .= (lhs: YAxisAnchorPair, rhs: [YAxisAnchorPair.LayoutCoefficient]) -> [YAxisAnchorPair.Solution] {
    return lhs.equal(to: rhs)
}

// MARK: - LessThanOrEqual

@discardableResult
public func ≤ (lhs: YAxisAnchorPair, rhs: YAxisAnchorPair.LayoutCoefficient) -> YAxisAnchorPair.Solution {
    return lhs.lessThanOrEqual(to: rhs)
}

@discardableResult
public func ≤ (lhs: YAxisAnchorPair, rhs: [YAxisAnchorPair.LayoutCoefficient]) -> [YAxisAnchorPair.Solution] {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: - GreaterThanOrEqual

@discardableResult
public func ≥ (lhs: YAxisAnchorPair, rhs: YAxisAnchorPair.LayoutCoefficient) -> YAxisAnchorPair.Solution {
    return lhs.greaterThanOrEqual(to: rhs)
}

@discardableResult
public func ≥ (lhs: YAxisAnchorPair, rhs: [YAxisAnchorPair.LayoutCoefficient]) -> [YAxisAnchorPair.Solution] {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: YAxisAnchorPair Array <=> YAxisAnchorPair.LayoutCoefficient

// MARK: - Equal

// MARK: Collection == Expression
@discardableResult
public func .= (lhs: [YAxisAnchorPair], rhs: YAxisAnchorPair.LayoutCoefficient) -> [YAxisAnchorPair.Solution] {
    return lhs.map { $0.equal(to: rhs) }
}

// MARK: Collection == Expression Array
@discardableResult
public func .= (lhs: [YAxisAnchorPair], rhs: [YAxisAnchorPair.LayoutCoefficient]) -> [[YAxisAnchorPair.Solution]] {
    return lhs.map { $0.equal(to: rhs) }
}

// MARK: - LessThanOrEqual

// MARK: Collection <= Expression
@discardableResult
public func ≤ (lhs: [YAxisAnchorPair], rhs: YAxisAnchorPair.LayoutCoefficient) -> [YAxisAnchorPair.Solution] {
    return lhs.map { $0.lessThanOrEqual(to: rhs) }
}

// MARK: Collection <= Expression Array
@discardableResult
public func ≤ (lhs: [YAxisAnchorPair], rhs: [YAxisAnchorPair.LayoutCoefficient]) -> [[YAxisAnchorPair.Solution]] {
    return lhs.map { $0.lessThanOrEqual(to: rhs) }
}

// MARK: - GreaterThanOrEqual

// MARK: Collection >= Expression
@discardableResult
public func ≥ (lhs: [YAxisAnchorPair], rhs: YAxisAnchorPair.LayoutCoefficient) -> [YAxisAnchorPair.Solution] {
    return lhs.map { $0.greaterThanOrEqual(to: rhs) }
}

// MARK: Collection >= Expression Array
@discardableResult
public func ≥ (lhs: [YAxisAnchorPair], rhs: [YAxisAnchorPair.LayoutCoefficient]) -> [[YAxisAnchorPair.Solution]] {
    return lhs.map { $0.greaterThanOrEqual(to: rhs) }
}
