// Generated using Sourcery 0.15.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

//
//  Layman
//
//  Created by Brian Strobach on 1/22/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//
// MARK: YAxisAnchorPair <=> LayoutCoefficientTuple

// MARK: - Equal

@discardableResult
public func .= (lhs: YAxisAnchorPair, rhs: LayoutCoefficientTuple) -> YAxisAnchorPair.Solution {
    return lhs.equal(to: rhs)
}

@discardableResult
public func .= (lhs: YAxisAnchorPair, rhs: [LayoutCoefficientTuple]) -> [YAxisAnchorPair.Solution] {
    return lhs.equal(to: rhs)
}

// MARK: - LessThanOrEqual

@discardableResult
public func ≤ (lhs: YAxisAnchorPair, rhs: LayoutCoefficientTuple) -> YAxisAnchorPair.Solution {
    return lhs.lessThanOrEqual(to: rhs)
}

@discardableResult
public func ≤ (lhs: YAxisAnchorPair, rhs: [LayoutCoefficientTuple]) -> [YAxisAnchorPair.Solution] {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: - GreaterThanOrEqual

@discardableResult
public func ≥ (lhs: YAxisAnchorPair, rhs: LayoutCoefficientTuple) -> YAxisAnchorPair.Solution {
    return lhs.greaterThanOrEqual(to: rhs)
}

@discardableResult
public func ≥ (lhs: YAxisAnchorPair, rhs: [LayoutCoefficientTuple]) -> [YAxisAnchorPair.Solution] {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: YAxisAnchorPair Array <=> LayoutCoefficientTuple

// MARK: - Equal

// MARK: Collection == Expression
@discardableResult
public func .= (lhs: [YAxisAnchorPair], rhs: LayoutCoefficientTuple) -> [YAxisAnchorPair.Solution] {
    return lhs.map { $0.equal(to: rhs) }
}

// MARK: Collection == Expression Array
@discardableResult
public func .= (lhs: [YAxisAnchorPair], rhs: [LayoutCoefficientTuple]) -> [[YAxisAnchorPair.Solution]] {
    return lhs.map { $0.equal(to: rhs) }
}

// MARK: - LessThanOrEqual

// MARK: Collection <= Expression
@discardableResult
public func ≤ (lhs: [YAxisAnchorPair], rhs: LayoutCoefficientTuple) -> [YAxisAnchorPair.Solution] {
    return lhs.map { $0.lessThanOrEqual(to: rhs) }
}

// MARK: Collection <= Expression Array
@discardableResult
public func ≤ (lhs: [YAxisAnchorPair], rhs: [LayoutCoefficientTuple]) -> [[YAxisAnchorPair.Solution]] {
    return lhs.map { $0.lessThanOrEqual(to: rhs) }
}

// MARK: - GreaterThanOrEqual

// MARK: Collection >= Expression
@discardableResult
public func ≥ (lhs: [YAxisAnchorPair], rhs: LayoutCoefficientTuple) -> [YAxisAnchorPair.Solution] {
    return lhs.map { $0.greaterThanOrEqual(to: rhs) }
}

// MARK: Collection >= Expression Array
@discardableResult
public func ≥ (lhs: [YAxisAnchorPair], rhs: [LayoutCoefficientTuple]) -> [[YAxisAnchorPair.Solution]] {
    return lhs.map { $0.greaterThanOrEqual(to: rhs) }
}
// MARK: YAxisAnchorPair <=> LayoutConstantTuple

// MARK: - Equal

@discardableResult
public func .= (lhs: YAxisAnchorPair, rhs: LayoutConstantTuple) -> YAxisAnchorPair.Solution {
    return lhs.equal(to: rhs)
}

@discardableResult
public func .= (lhs: YAxisAnchorPair, rhs: [LayoutConstantTuple]) -> [YAxisAnchorPair.Solution] {
    return lhs.equal(to: rhs)
}

// MARK: - LessThanOrEqual

@discardableResult
public func ≤ (lhs: YAxisAnchorPair, rhs: LayoutConstantTuple) -> YAxisAnchorPair.Solution {
    return lhs.lessThanOrEqual(to: rhs)
}

@discardableResult
public func ≤ (lhs: YAxisAnchorPair, rhs: [LayoutConstantTuple]) -> [YAxisAnchorPair.Solution] {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: - GreaterThanOrEqual

@discardableResult
public func ≥ (lhs: YAxisAnchorPair, rhs: LayoutConstantTuple) -> YAxisAnchorPair.Solution {
    return lhs.greaterThanOrEqual(to: rhs)
}

@discardableResult
public func ≥ (lhs: YAxisAnchorPair, rhs: [LayoutConstantTuple]) -> [YAxisAnchorPair.Solution] {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: YAxisAnchorPair Array <=> LayoutConstantTuple

// MARK: - Equal

// MARK: Collection == Expression
@discardableResult
public func .= (lhs: [YAxisAnchorPair], rhs: LayoutConstantTuple) -> [YAxisAnchorPair.Solution] {
    return lhs.map { $0.equal(to: rhs) }
}

// MARK: Collection == Expression Array
@discardableResult
public func .= (lhs: [YAxisAnchorPair], rhs: [LayoutConstantTuple]) -> [[YAxisAnchorPair.Solution]] {
    return lhs.map { $0.equal(to: rhs) }
}

// MARK: - LessThanOrEqual

// MARK: Collection <= Expression
@discardableResult
public func ≤ (lhs: [YAxisAnchorPair], rhs: LayoutConstantTuple) -> [YAxisAnchorPair.Solution] {
    return lhs.map { $0.lessThanOrEqual(to: rhs) }
}

// MARK: Collection <= Expression Array
@discardableResult
public func ≤ (lhs: [YAxisAnchorPair], rhs: [LayoutConstantTuple]) -> [[YAxisAnchorPair.Solution]] {
    return lhs.map { $0.lessThanOrEqual(to: rhs) }
}

// MARK: - GreaterThanOrEqual

// MARK: Collection >= Expression
@discardableResult
public func ≥ (lhs: [YAxisAnchorPair], rhs: LayoutConstantTuple) -> [YAxisAnchorPair.Solution] {
    return lhs.map { $0.greaterThanOrEqual(to: rhs) }
}

// MARK: Collection >= Expression Array
@discardableResult
public func ≥ (lhs: [YAxisAnchorPair], rhs: [LayoutConstantTuple]) -> [[YAxisAnchorPair.Solution]] {
    return lhs.map { $0.greaterThanOrEqual(to: rhs) }
}
// MARK: YAxisAnchorPair <=> RelativeLayoutConstantTuple

// MARK: - Equal

@discardableResult
public func .= (lhs: YAxisAnchorPair, rhs: RelativeLayoutConstantTuple) -> YAxisAnchorPair.Solution {
    return lhs.equal(to: rhs)
}

@discardableResult
public func .= (lhs: YAxisAnchorPair, rhs: [RelativeLayoutConstantTuple]) -> [YAxisAnchorPair.Solution] {
    return lhs.equal(to: rhs)
}

// MARK: - LessThanOrEqual

@discardableResult
public func ≤ (lhs: YAxisAnchorPair, rhs: RelativeLayoutConstantTuple) -> YAxisAnchorPair.Solution {
    return lhs.lessThanOrEqual(to: rhs)
}

@discardableResult
public func ≤ (lhs: YAxisAnchorPair, rhs: [RelativeLayoutConstantTuple]) -> [YAxisAnchorPair.Solution] {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: - GreaterThanOrEqual

@discardableResult
public func ≥ (lhs: YAxisAnchorPair, rhs: RelativeLayoutConstantTuple) -> YAxisAnchorPair.Solution {
    return lhs.greaterThanOrEqual(to: rhs)
}

@discardableResult
public func ≥ (lhs: YAxisAnchorPair, rhs: [RelativeLayoutConstantTuple]) -> [YAxisAnchorPair.Solution] {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: YAxisAnchorPair Array <=> RelativeLayoutConstantTuple

// MARK: - Equal

// MARK: Collection == Expression
@discardableResult
public func .= (lhs: [YAxisAnchorPair], rhs: RelativeLayoutConstantTuple) -> [YAxisAnchorPair.Solution] {
    return lhs.map { $0.equal(to: rhs) }
}

// MARK: Collection == Expression Array
@discardableResult
public func .= (lhs: [YAxisAnchorPair], rhs: [RelativeLayoutConstantTuple]) -> [[YAxisAnchorPair.Solution]] {
    return lhs.map { $0.equal(to: rhs) }
}

// MARK: - LessThanOrEqual

// MARK: Collection <= Expression
@discardableResult
public func ≤ (lhs: [YAxisAnchorPair], rhs: RelativeLayoutConstantTuple) -> [YAxisAnchorPair.Solution] {
    return lhs.map { $0.lessThanOrEqual(to: rhs) }
}

// MARK: Collection <= Expression Array
@discardableResult
public func ≤ (lhs: [YAxisAnchorPair], rhs: [RelativeLayoutConstantTuple]) -> [[YAxisAnchorPair.Solution]] {
    return lhs.map { $0.lessThanOrEqual(to: rhs) }
}

// MARK: - GreaterThanOrEqual

// MARK: Collection >= Expression
@discardableResult
public func ≥ (lhs: [YAxisAnchorPair], rhs: RelativeLayoutConstantTuple) -> [YAxisAnchorPair.Solution] {
    return lhs.map { $0.greaterThanOrEqual(to: rhs) }
}

// MARK: Collection >= Expression Array
@discardableResult
public func ≥ (lhs: [YAxisAnchorPair], rhs: [RelativeLayoutConstantTuple]) -> [[YAxisAnchorPair.Solution]] {
    return lhs.map { $0.greaterThanOrEqual(to: rhs) }
}
