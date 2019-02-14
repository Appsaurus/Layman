// Generated using Sourcery 0.15.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

//
//  Layman
//
//  Created by Brian Strobach on 1/22/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//
// MARK: XYAxesAnchorPair <=> XYAxesAnchorPair.LayoutCoefficientTuple

// MARK: - Equal

@discardableResult
public func .= (lhs: XYAxesAnchorPair, rhs: XYAxesAnchorPair.LayoutCoefficientTuple) -> XYAxesAnchorPair.Solution {
    return lhs.equal(to: rhs)
}

@discardableResult
public func .= (lhs: XYAxesAnchorPair, rhs: [XYAxesAnchorPair.LayoutCoefficientTuple]) -> [XYAxesAnchorPair.Solution] {
    return lhs.equal(to: rhs)
}

// MARK: - LessThanOrEqual

@discardableResult
public func ≤ (lhs: XYAxesAnchorPair, rhs: XYAxesAnchorPair.LayoutCoefficientTuple) -> XYAxesAnchorPair.Solution {
    return lhs.lessThanOrEqual(to: rhs)
}

@discardableResult
public func ≤ (lhs: XYAxesAnchorPair, rhs: [XYAxesAnchorPair.LayoutCoefficientTuple]) -> [XYAxesAnchorPair.Solution] {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: - GreaterThanOrEqual

@discardableResult
public func ≥ (lhs: XYAxesAnchorPair, rhs: XYAxesAnchorPair.LayoutCoefficientTuple) -> XYAxesAnchorPair.Solution {
    return lhs.greaterThanOrEqual(to: rhs)
}

@discardableResult
public func ≥ (lhs: XYAxesAnchorPair, rhs: [XYAxesAnchorPair.LayoutCoefficientTuple]) -> [XYAxesAnchorPair.Solution] {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: XYAxesAnchorPair Array <=> XYAxesAnchorPair.LayoutCoefficientTuple

// MARK: - Equal

// MARK: Collection == Expression
@discardableResult
public func .= (lhs: [XYAxesAnchorPair], rhs: XYAxesAnchorPair.LayoutCoefficientTuple) -> [XYAxesAnchorPair.Solution] {
    return lhs.map { $0.equal(to: rhs) }
}

// MARK: Collection == Expression Array
@discardableResult
public func .= (lhs: [XYAxesAnchorPair], rhs: [XYAxesAnchorPair.LayoutCoefficientTuple]) -> [[XYAxesAnchorPair.Solution]] {
    return lhs.map { $0.equal(to: rhs) }
}

// MARK: - LessThanOrEqual

// MARK: Collection <= Expression
@discardableResult
public func ≤ (lhs: [XYAxesAnchorPair], rhs: XYAxesAnchorPair.LayoutCoefficientTuple) -> [XYAxesAnchorPair.Solution] {
    return lhs.map { $0.lessThanOrEqual(to: rhs) }
}

// MARK: Collection <= Expression Array
@discardableResult
public func ≤ (lhs: [XYAxesAnchorPair], rhs: [XYAxesAnchorPair.LayoutCoefficientTuple]) -> [[XYAxesAnchorPair.Solution]] {
    return lhs.map { $0.lessThanOrEqual(to: rhs) }
}

// MARK: - GreaterThanOrEqual

// MARK: Collection >= Expression
@discardableResult
public func ≥ (lhs: [XYAxesAnchorPair], rhs: XYAxesAnchorPair.LayoutCoefficientTuple) -> [XYAxesAnchorPair.Solution] {
    return lhs.map { $0.greaterThanOrEqual(to: rhs) }
}

// MARK: Collection >= Expression Array
@discardableResult
public func ≥ (lhs: [XYAxesAnchorPair], rhs: [XYAxesAnchorPair.LayoutCoefficientTuple]) -> [[XYAxesAnchorPair.Solution]] {
    return lhs.map { $0.greaterThanOrEqual(to: rhs) }
}
// MARK: XYAxesAnchorPair <=> XYAxesAnchorPair.LayoutConstantTuple

// MARK: - Equal

@discardableResult
public func .= (lhs: XYAxesAnchorPair, rhs: XYAxesAnchorPair.LayoutConstantTuple) -> XYAxesAnchorPair.Solution {
    return lhs.equal(to: rhs)
}

@discardableResult
public func .= (lhs: XYAxesAnchorPair, rhs: [XYAxesAnchorPair.LayoutConstantTuple]) -> [XYAxesAnchorPair.Solution] {
    return lhs.equal(to: rhs)
}

// MARK: - LessThanOrEqual

@discardableResult
public func ≤ (lhs: XYAxesAnchorPair, rhs: XYAxesAnchorPair.LayoutConstantTuple) -> XYAxesAnchorPair.Solution {
    return lhs.lessThanOrEqual(to: rhs)
}

@discardableResult
public func ≤ (lhs: XYAxesAnchorPair, rhs: [XYAxesAnchorPair.LayoutConstantTuple]) -> [XYAxesAnchorPair.Solution] {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: - GreaterThanOrEqual

@discardableResult
public func ≥ (lhs: XYAxesAnchorPair, rhs: XYAxesAnchorPair.LayoutConstantTuple) -> XYAxesAnchorPair.Solution {
    return lhs.greaterThanOrEqual(to: rhs)
}

@discardableResult
public func ≥ (lhs: XYAxesAnchorPair, rhs: [XYAxesAnchorPair.LayoutConstantTuple]) -> [XYAxesAnchorPair.Solution] {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: XYAxesAnchorPair Array <=> XYAxesAnchorPair.LayoutConstantTuple

// MARK: - Equal

// MARK: Collection == Expression
@discardableResult
public func .= (lhs: [XYAxesAnchorPair], rhs: XYAxesAnchorPair.LayoutConstantTuple) -> [XYAxesAnchorPair.Solution] {
    return lhs.map { $0.equal(to: rhs) }
}

// MARK: Collection == Expression Array
@discardableResult
public func .= (lhs: [XYAxesAnchorPair], rhs: [XYAxesAnchorPair.LayoutConstantTuple]) -> [[XYAxesAnchorPair.Solution]] {
    return lhs.map { $0.equal(to: rhs) }
}

// MARK: - LessThanOrEqual

// MARK: Collection <= Expression
@discardableResult
public func ≤ (lhs: [XYAxesAnchorPair], rhs: XYAxesAnchorPair.LayoutConstantTuple) -> [XYAxesAnchorPair.Solution] {
    return lhs.map { $0.lessThanOrEqual(to: rhs) }
}

// MARK: Collection <= Expression Array
@discardableResult
public func ≤ (lhs: [XYAxesAnchorPair], rhs: [XYAxesAnchorPair.LayoutConstantTuple]) -> [[XYAxesAnchorPair.Solution]] {
    return lhs.map { $0.lessThanOrEqual(to: rhs) }
}

// MARK: - GreaterThanOrEqual

// MARK: Collection >= Expression
@discardableResult
public func ≥ (lhs: [XYAxesAnchorPair], rhs: XYAxesAnchorPair.LayoutConstantTuple) -> [XYAxesAnchorPair.Solution] {
    return lhs.map { $0.greaterThanOrEqual(to: rhs) }
}

// MARK: Collection >= Expression Array
@discardableResult
public func ≥ (lhs: [XYAxesAnchorPair], rhs: [XYAxesAnchorPair.LayoutConstantTuple]) -> [[XYAxesAnchorPair.Solution]] {
    return lhs.map { $0.greaterThanOrEqual(to: rhs) }
}
// MARK: XYAxesAnchorPair <=> XYAxesAnchorPair.LayoutCoefficient

// MARK: - Equal

@discardableResult
public func .= (lhs: XYAxesAnchorPair, rhs: XYAxesAnchorPair.LayoutCoefficient) -> XYAxesAnchorPair.Solution {
    return lhs.equal(to: rhs)
}

@discardableResult
public func .= (lhs: XYAxesAnchorPair, rhs: [XYAxesAnchorPair.LayoutCoefficient]) -> [XYAxesAnchorPair.Solution] {
    return lhs.equal(to: rhs)
}

// MARK: - LessThanOrEqual

@discardableResult
public func ≤ (lhs: XYAxesAnchorPair, rhs: XYAxesAnchorPair.LayoutCoefficient) -> XYAxesAnchorPair.Solution {
    return lhs.lessThanOrEqual(to: rhs)
}

@discardableResult
public func ≤ (lhs: XYAxesAnchorPair, rhs: [XYAxesAnchorPair.LayoutCoefficient]) -> [XYAxesAnchorPair.Solution] {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: - GreaterThanOrEqual

@discardableResult
public func ≥ (lhs: XYAxesAnchorPair, rhs: XYAxesAnchorPair.LayoutCoefficient) -> XYAxesAnchorPair.Solution {
    return lhs.greaterThanOrEqual(to: rhs)
}

@discardableResult
public func ≥ (lhs: XYAxesAnchorPair, rhs: [XYAxesAnchorPair.LayoutCoefficient]) -> [XYAxesAnchorPair.Solution] {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: XYAxesAnchorPair Array <=> XYAxesAnchorPair.LayoutCoefficient

// MARK: - Equal

// MARK: Collection == Expression
@discardableResult
public func .= (lhs: [XYAxesAnchorPair], rhs: XYAxesAnchorPair.LayoutCoefficient) -> [XYAxesAnchorPair.Solution] {
    return lhs.map { $0.equal(to: rhs) }
}

// MARK: Collection == Expression Array
@discardableResult
public func .= (lhs: [XYAxesAnchorPair], rhs: [XYAxesAnchorPair.LayoutCoefficient]) -> [[XYAxesAnchorPair.Solution]] {
    return lhs.map { $0.equal(to: rhs) }
}

// MARK: - LessThanOrEqual

// MARK: Collection <= Expression
@discardableResult
public func ≤ (lhs: [XYAxesAnchorPair], rhs: XYAxesAnchorPair.LayoutCoefficient) -> [XYAxesAnchorPair.Solution] {
    return lhs.map { $0.lessThanOrEqual(to: rhs) }
}

// MARK: Collection <= Expression Array
@discardableResult
public func ≤ (lhs: [XYAxesAnchorPair], rhs: [XYAxesAnchorPair.LayoutCoefficient]) -> [[XYAxesAnchorPair.Solution]] {
    return lhs.map { $0.lessThanOrEqual(to: rhs) }
}

// MARK: - GreaterThanOrEqual

// MARK: Collection >= Expression
@discardableResult
public func ≥ (lhs: [XYAxesAnchorPair], rhs: XYAxesAnchorPair.LayoutCoefficient) -> [XYAxesAnchorPair.Solution] {
    return lhs.map { $0.greaterThanOrEqual(to: rhs) }
}

// MARK: Collection >= Expression Array
@discardableResult
public func ≥ (lhs: [XYAxesAnchorPair], rhs: [XYAxesAnchorPair.LayoutCoefficient]) -> [[XYAxesAnchorPair.Solution]] {
    return lhs.map { $0.greaterThanOrEqual(to: rhs) }
}
// MARK: XYAxesAnchorPair <=> XYAxesAnchorPair.RelativeLayoutConstantTuple

// MARK: - Equal

@discardableResult
public func .= (lhs: XYAxesAnchorPair, rhs: XYAxesAnchorPair.RelativeLayoutConstantTuple) -> XYAxesAnchorPair.Solution {
    return lhs.equal(to: rhs)
}

@discardableResult
public func .= (lhs: XYAxesAnchorPair, rhs: [XYAxesAnchorPair.RelativeLayoutConstantTuple]) -> [XYAxesAnchorPair.Solution] {
    return lhs.equal(to: rhs)
}

// MARK: - LessThanOrEqual

@discardableResult
public func ≤ (lhs: XYAxesAnchorPair, rhs: XYAxesAnchorPair.RelativeLayoutConstantTuple) -> XYAxesAnchorPair.Solution {
    return lhs.lessThanOrEqual(to: rhs)
}

@discardableResult
public func ≤ (lhs: XYAxesAnchorPair, rhs: [XYAxesAnchorPair.RelativeLayoutConstantTuple]) -> [XYAxesAnchorPair.Solution] {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: - GreaterThanOrEqual

@discardableResult
public func ≥ (lhs: XYAxesAnchorPair, rhs: XYAxesAnchorPair.RelativeLayoutConstantTuple) -> XYAxesAnchorPair.Solution {
    return lhs.greaterThanOrEqual(to: rhs)
}

@discardableResult
public func ≥ (lhs: XYAxesAnchorPair, rhs: [XYAxesAnchorPair.RelativeLayoutConstantTuple]) -> [XYAxesAnchorPair.Solution] {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: XYAxesAnchorPair Array <=> XYAxesAnchorPair.RelativeLayoutConstantTuple

// MARK: - Equal

// MARK: Collection == Expression
@discardableResult
public func .= (lhs: [XYAxesAnchorPair], rhs: XYAxesAnchorPair.RelativeLayoutConstantTuple) -> [XYAxesAnchorPair.Solution] {
    return lhs.map { $0.equal(to: rhs) }
}

// MARK: Collection == Expression Array
@discardableResult
public func .= (lhs: [XYAxesAnchorPair], rhs: [XYAxesAnchorPair.RelativeLayoutConstantTuple]) -> [[XYAxesAnchorPair.Solution]] {
    return lhs.map { $0.equal(to: rhs) }
}

// MARK: - LessThanOrEqual

// MARK: Collection <= Expression
@discardableResult
public func ≤ (lhs: [XYAxesAnchorPair], rhs: XYAxesAnchorPair.RelativeLayoutConstantTuple) -> [XYAxesAnchorPair.Solution] {
    return lhs.map { $0.lessThanOrEqual(to: rhs) }
}

// MARK: Collection <= Expression Array
@discardableResult
public func ≤ (lhs: [XYAxesAnchorPair], rhs: [XYAxesAnchorPair.RelativeLayoutConstantTuple]) -> [[XYAxesAnchorPair.Solution]] {
    return lhs.map { $0.lessThanOrEqual(to: rhs) }
}

// MARK: - GreaterThanOrEqual

// MARK: Collection >= Expression
@discardableResult
public func ≥ (lhs: [XYAxesAnchorPair], rhs: XYAxesAnchorPair.RelativeLayoutConstantTuple) -> [XYAxesAnchorPair.Solution] {
    return lhs.map { $0.greaterThanOrEqual(to: rhs) }
}

// MARK: Collection >= Expression Array
@discardableResult
public func ≥ (lhs: [XYAxesAnchorPair], rhs: [XYAxesAnchorPair.RelativeLayoutConstantTuple]) -> [[XYAxesAnchorPair.Solution]] {
    return lhs.map { $0.greaterThanOrEqual(to: rhs) }
}
