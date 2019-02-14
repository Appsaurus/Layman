// Generated using Sourcery 0.15.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

//
//  Layman
//
//  Created by Brian Strobach on 1/22/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//
// MARK: XAxisAnchorPair <=> XAxisAnchorPair.LayoutCoefficientTuple

// MARK: - Equal

@discardableResult
public func .= (lhs: XAxisAnchorPair, rhs: XAxisAnchorPair.LayoutCoefficientTuple) -> XAxisAnchorPair.Solution {
    return lhs.equal(to: rhs)
}

@discardableResult
public func .= (lhs: XAxisAnchorPair, rhs: [XAxisAnchorPair.LayoutCoefficientTuple]) -> [XAxisAnchorPair.Solution] {
    return lhs.equal(to: rhs)
}

// MARK: - LessThanOrEqual

@discardableResult
public func ≤ (lhs: XAxisAnchorPair, rhs: XAxisAnchorPair.LayoutCoefficientTuple) -> XAxisAnchorPair.Solution {
    return lhs.lessThanOrEqual(to: rhs)
}

@discardableResult
public func ≤ (lhs: XAxisAnchorPair, rhs: [XAxisAnchorPair.LayoutCoefficientTuple]) -> [XAxisAnchorPair.Solution] {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: - GreaterThanOrEqual

@discardableResult
public func ≥ (lhs: XAxisAnchorPair, rhs: XAxisAnchorPair.LayoutCoefficientTuple) -> XAxisAnchorPair.Solution {
    return lhs.greaterThanOrEqual(to: rhs)
}

@discardableResult
public func ≥ (lhs: XAxisAnchorPair, rhs: [XAxisAnchorPair.LayoutCoefficientTuple]) -> [XAxisAnchorPair.Solution] {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: XAxisAnchorPair Array <=> XAxisAnchorPair.LayoutCoefficientTuple

// MARK: - Equal

// MARK: Collection == Expression
@discardableResult
public func .= (lhs: [XAxisAnchorPair], rhs: XAxisAnchorPair.LayoutCoefficientTuple) -> [XAxisAnchorPair.Solution] {
    return lhs.map { $0.equal(to: rhs) }
}

// MARK: Collection == Expression Array
@discardableResult
public func .= (lhs: [XAxisAnchorPair], rhs: [XAxisAnchorPair.LayoutCoefficientTuple]) -> [[XAxisAnchorPair.Solution]] {
    return lhs.map { $0.equal(to: rhs) }
}

// MARK: - LessThanOrEqual

// MARK: Collection <= Expression
@discardableResult
public func ≤ (lhs: [XAxisAnchorPair], rhs: XAxisAnchorPair.LayoutCoefficientTuple) -> [XAxisAnchorPair.Solution] {
    return lhs.map { $0.lessThanOrEqual(to: rhs) }
}

// MARK: Collection <= Expression Array
@discardableResult
public func ≤ (lhs: [XAxisAnchorPair], rhs: [XAxisAnchorPair.LayoutCoefficientTuple]) -> [[XAxisAnchorPair.Solution]] {
    return lhs.map { $0.lessThanOrEqual(to: rhs) }
}

// MARK: - GreaterThanOrEqual

// MARK: Collection >= Expression
@discardableResult
public func ≥ (lhs: [XAxisAnchorPair], rhs: XAxisAnchorPair.LayoutCoefficientTuple) -> [XAxisAnchorPair.Solution] {
    return lhs.map { $0.greaterThanOrEqual(to: rhs) }
}

// MARK: Collection >= Expression Array
@discardableResult
public func ≥ (lhs: [XAxisAnchorPair], rhs: [XAxisAnchorPair.LayoutCoefficientTuple]) -> [[XAxisAnchorPair.Solution]] {
    return lhs.map { $0.greaterThanOrEqual(to: rhs) }
}
// MARK: XAxisAnchorPair <=> XAxisAnchorPair.LayoutConstantTuple

// MARK: - Equal

@discardableResult
public func .= (lhs: XAxisAnchorPair, rhs: XAxisAnchorPair.LayoutConstantTuple) -> XAxisAnchorPair.Solution {
    return lhs.equal(to: rhs)
}

@discardableResult
public func .= (lhs: XAxisAnchorPair, rhs: [XAxisAnchorPair.LayoutConstantTuple]) -> [XAxisAnchorPair.Solution] {
    return lhs.equal(to: rhs)
}

// MARK: - LessThanOrEqual

@discardableResult
public func ≤ (lhs: XAxisAnchorPair, rhs: XAxisAnchorPair.LayoutConstantTuple) -> XAxisAnchorPair.Solution {
    return lhs.lessThanOrEqual(to: rhs)
}

@discardableResult
public func ≤ (lhs: XAxisAnchorPair, rhs: [XAxisAnchorPair.LayoutConstantTuple]) -> [XAxisAnchorPair.Solution] {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: - GreaterThanOrEqual

@discardableResult
public func ≥ (lhs: XAxisAnchorPair, rhs: XAxisAnchorPair.LayoutConstantTuple) -> XAxisAnchorPair.Solution {
    return lhs.greaterThanOrEqual(to: rhs)
}

@discardableResult
public func ≥ (lhs: XAxisAnchorPair, rhs: [XAxisAnchorPair.LayoutConstantTuple]) -> [XAxisAnchorPair.Solution] {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: XAxisAnchorPair Array <=> XAxisAnchorPair.LayoutConstantTuple

// MARK: - Equal

// MARK: Collection == Expression
@discardableResult
public func .= (lhs: [XAxisAnchorPair], rhs: XAxisAnchorPair.LayoutConstantTuple) -> [XAxisAnchorPair.Solution] {
    return lhs.map { $0.equal(to: rhs) }
}

// MARK: Collection == Expression Array
@discardableResult
public func .= (lhs: [XAxisAnchorPair], rhs: [XAxisAnchorPair.LayoutConstantTuple]) -> [[XAxisAnchorPair.Solution]] {
    return lhs.map { $0.equal(to: rhs) }
}

// MARK: - LessThanOrEqual

// MARK: Collection <= Expression
@discardableResult
public func ≤ (lhs: [XAxisAnchorPair], rhs: XAxisAnchorPair.LayoutConstantTuple) -> [XAxisAnchorPair.Solution] {
    return lhs.map { $0.lessThanOrEqual(to: rhs) }
}

// MARK: Collection <= Expression Array
@discardableResult
public func ≤ (lhs: [XAxisAnchorPair], rhs: [XAxisAnchorPair.LayoutConstantTuple]) -> [[XAxisAnchorPair.Solution]] {
    return lhs.map { $0.lessThanOrEqual(to: rhs) }
}

// MARK: - GreaterThanOrEqual

// MARK: Collection >= Expression
@discardableResult
public func ≥ (lhs: [XAxisAnchorPair], rhs: XAxisAnchorPair.LayoutConstantTuple) -> [XAxisAnchorPair.Solution] {
    return lhs.map { $0.greaterThanOrEqual(to: rhs) }
}

// MARK: Collection >= Expression Array
@discardableResult
public func ≥ (lhs: [XAxisAnchorPair], rhs: [XAxisAnchorPair.LayoutConstantTuple]) -> [[XAxisAnchorPair.Solution]] {
    return lhs.map { $0.greaterThanOrEqual(to: rhs) }
}
// MARK: XAxisAnchorPair <=> XAxisAnchorPair.LayoutCoefficient

// MARK: - Equal

@discardableResult
public func .= (lhs: XAxisAnchorPair, rhs: XAxisAnchorPair.LayoutCoefficient) -> XAxisAnchorPair.Solution {
    return lhs.equal(to: rhs)
}

@discardableResult
public func .= (lhs: XAxisAnchorPair, rhs: [XAxisAnchorPair.LayoutCoefficient]) -> [XAxisAnchorPair.Solution] {
    return lhs.equal(to: rhs)
}

// MARK: - LessThanOrEqual

@discardableResult
public func ≤ (lhs: XAxisAnchorPair, rhs: XAxisAnchorPair.LayoutCoefficient) -> XAxisAnchorPair.Solution {
    return lhs.lessThanOrEqual(to: rhs)
}

@discardableResult
public func ≤ (lhs: XAxisAnchorPair, rhs: [XAxisAnchorPair.LayoutCoefficient]) -> [XAxisAnchorPair.Solution] {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: - GreaterThanOrEqual

@discardableResult
public func ≥ (lhs: XAxisAnchorPair, rhs: XAxisAnchorPair.LayoutCoefficient) -> XAxisAnchorPair.Solution {
    return lhs.greaterThanOrEqual(to: rhs)
}

@discardableResult
public func ≥ (lhs: XAxisAnchorPair, rhs: [XAxisAnchorPair.LayoutCoefficient]) -> [XAxisAnchorPair.Solution] {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: XAxisAnchorPair Array <=> XAxisAnchorPair.LayoutCoefficient

// MARK: - Equal

// MARK: Collection == Expression
@discardableResult
public func .= (lhs: [XAxisAnchorPair], rhs: XAxisAnchorPair.LayoutCoefficient) -> [XAxisAnchorPair.Solution] {
    return lhs.map { $0.equal(to: rhs) }
}

// MARK: Collection == Expression Array
@discardableResult
public func .= (lhs: [XAxisAnchorPair], rhs: [XAxisAnchorPair.LayoutCoefficient]) -> [[XAxisAnchorPair.Solution]] {
    return lhs.map { $0.equal(to: rhs) }
}

// MARK: - LessThanOrEqual

// MARK: Collection <= Expression
@discardableResult
public func ≤ (lhs: [XAxisAnchorPair], rhs: XAxisAnchorPair.LayoutCoefficient) -> [XAxisAnchorPair.Solution] {
    return lhs.map { $0.lessThanOrEqual(to: rhs) }
}

// MARK: Collection <= Expression Array
@discardableResult
public func ≤ (lhs: [XAxisAnchorPair], rhs: [XAxisAnchorPair.LayoutCoefficient]) -> [[XAxisAnchorPair.Solution]] {
    return lhs.map { $0.lessThanOrEqual(to: rhs) }
}

// MARK: - GreaterThanOrEqual

// MARK: Collection >= Expression
@discardableResult
public func ≥ (lhs: [XAxisAnchorPair], rhs: XAxisAnchorPair.LayoutCoefficient) -> [XAxisAnchorPair.Solution] {
    return lhs.map { $0.greaterThanOrEqual(to: rhs) }
}

// MARK: Collection >= Expression Array
@discardableResult
public func ≥ (lhs: [XAxisAnchorPair], rhs: [XAxisAnchorPair.LayoutCoefficient]) -> [[XAxisAnchorPair.Solution]] {
    return lhs.map { $0.greaterThanOrEqual(to: rhs) }
}
// MARK: XAxisAnchorPair <=> XAxisAnchorPair.RelativeLayoutConstantTuple

// MARK: - Equal

@discardableResult
public func .= (lhs: XAxisAnchorPair, rhs: XAxisAnchorPair.RelativeLayoutConstantTuple) -> XAxisAnchorPair.Solution {
    return lhs.equal(to: rhs)
}

@discardableResult
public func .= (lhs: XAxisAnchorPair, rhs: [XAxisAnchorPair.RelativeLayoutConstantTuple]) -> [XAxisAnchorPair.Solution] {
    return lhs.equal(to: rhs)
}

// MARK: - LessThanOrEqual

@discardableResult
public func ≤ (lhs: XAxisAnchorPair, rhs: XAxisAnchorPair.RelativeLayoutConstantTuple) -> XAxisAnchorPair.Solution {
    return lhs.lessThanOrEqual(to: rhs)
}

@discardableResult
public func ≤ (lhs: XAxisAnchorPair, rhs: [XAxisAnchorPair.RelativeLayoutConstantTuple]) -> [XAxisAnchorPair.Solution] {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: - GreaterThanOrEqual

@discardableResult
public func ≥ (lhs: XAxisAnchorPair, rhs: XAxisAnchorPair.RelativeLayoutConstantTuple) -> XAxisAnchorPair.Solution {
    return lhs.greaterThanOrEqual(to: rhs)
}

@discardableResult
public func ≥ (lhs: XAxisAnchorPair, rhs: [XAxisAnchorPair.RelativeLayoutConstantTuple]) -> [XAxisAnchorPair.Solution] {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: XAxisAnchorPair Array <=> XAxisAnchorPair.RelativeLayoutConstantTuple

// MARK: - Equal

// MARK: Collection == Expression
@discardableResult
public func .= (lhs: [XAxisAnchorPair], rhs: XAxisAnchorPair.RelativeLayoutConstantTuple) -> [XAxisAnchorPair.Solution] {
    return lhs.map { $0.equal(to: rhs) }
}

// MARK: Collection == Expression Array
@discardableResult
public func .= (lhs: [XAxisAnchorPair], rhs: [XAxisAnchorPair.RelativeLayoutConstantTuple]) -> [[XAxisAnchorPair.Solution]] {
    return lhs.map { $0.equal(to: rhs) }
}

// MARK: - LessThanOrEqual

// MARK: Collection <= Expression
@discardableResult
public func ≤ (lhs: [XAxisAnchorPair], rhs: XAxisAnchorPair.RelativeLayoutConstantTuple) -> [XAxisAnchorPair.Solution] {
    return lhs.map { $0.lessThanOrEqual(to: rhs) }
}

// MARK: Collection <= Expression Array
@discardableResult
public func ≤ (lhs: [XAxisAnchorPair], rhs: [XAxisAnchorPair.RelativeLayoutConstantTuple]) -> [[XAxisAnchorPair.Solution]] {
    return lhs.map { $0.lessThanOrEqual(to: rhs) }
}

// MARK: - GreaterThanOrEqual

// MARK: Collection >= Expression
@discardableResult
public func ≥ (lhs: [XAxisAnchorPair], rhs: XAxisAnchorPair.RelativeLayoutConstantTuple) -> [XAxisAnchorPair.Solution] {
    return lhs.map { $0.greaterThanOrEqual(to: rhs) }
}

// MARK: Collection >= Expression Array
@discardableResult
public func ≥ (lhs: [XAxisAnchorPair], rhs: [XAxisAnchorPair.RelativeLayoutConstantTuple]) -> [[XAxisAnchorPair.Solution]] {
    return lhs.map { $0.greaterThanOrEqual(to: rhs) }
}
