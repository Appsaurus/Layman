// Generated using Sourcery 0.15.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

//
//  Layman
//
//  Created by Brian Strobach on 1/22/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//
// MARK: EdgeAnchorGroup <=> EdgeAnchorGroup.LayoutCoefficientTuple

// MARK: - Equal

@discardableResult
public func .= (lhs: EdgeAnchorGroup, rhs: EdgeAnchorGroup.LayoutCoefficientTuple) -> EdgeAnchorGroup.Solution {
    return lhs.equal(to: rhs)
}

@discardableResult
public func .= (lhs: EdgeAnchorGroup, rhs: [EdgeAnchorGroup.LayoutCoefficientTuple]) -> [EdgeAnchorGroup.Solution] {
    return lhs.equal(to: rhs)
}

// MARK: - LessThanOrEqual

@discardableResult
public func ≤ (lhs: EdgeAnchorGroup, rhs: EdgeAnchorGroup.LayoutCoefficientTuple) -> EdgeAnchorGroup.Solution {
    return lhs.lessThanOrEqual(to: rhs)
}

@discardableResult
public func ≤ (lhs: EdgeAnchorGroup, rhs: [EdgeAnchorGroup.LayoutCoefficientTuple]) -> [EdgeAnchorGroup.Solution] {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: - GreaterThanOrEqual

@discardableResult
public func ≥ (lhs: EdgeAnchorGroup, rhs: EdgeAnchorGroup.LayoutCoefficientTuple) -> EdgeAnchorGroup.Solution {
    return lhs.greaterThanOrEqual(to: rhs)
}

@discardableResult
public func ≥ (lhs: EdgeAnchorGroup, rhs: [EdgeAnchorGroup.LayoutCoefficientTuple]) -> [EdgeAnchorGroup.Solution] {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: EdgeAnchorGroup Array <=> EdgeAnchorGroup.LayoutCoefficientTuple

// MARK: - Equal

// MARK: Collection == Expression
@discardableResult
public func .= (lhs: [EdgeAnchorGroup], rhs: EdgeAnchorGroup.LayoutCoefficientTuple) -> [EdgeAnchorGroup.Solution] {
    return lhs.map { $0.equal(to: rhs) }
}

// MARK: Collection == Expression Array
@discardableResult
public func .= (lhs: [EdgeAnchorGroup], rhs: [EdgeAnchorGroup.LayoutCoefficientTuple]) -> [[EdgeAnchorGroup.Solution]] {
    return lhs.map { $0.equal(to: rhs) }
}

// MARK: - LessThanOrEqual

// MARK: Collection <= Expression
@discardableResult
public func ≤ (lhs: [EdgeAnchorGroup], rhs: EdgeAnchorGroup.LayoutCoefficientTuple) -> [EdgeAnchorGroup.Solution] {
    return lhs.map { $0.lessThanOrEqual(to: rhs) }
}

// MARK: Collection <= Expression Array
@discardableResult
public func ≤ (lhs: [EdgeAnchorGroup], rhs: [EdgeAnchorGroup.LayoutCoefficientTuple]) -> [[EdgeAnchorGroup.Solution]] {
    return lhs.map { $0.lessThanOrEqual(to: rhs) }
}

// MARK: - GreaterThanOrEqual

// MARK: Collection >= Expression
@discardableResult
public func ≥ (lhs: [EdgeAnchorGroup], rhs: EdgeAnchorGroup.LayoutCoefficientTuple) -> [EdgeAnchorGroup.Solution] {
    return lhs.map { $0.greaterThanOrEqual(to: rhs) }
}

// MARK: Collection >= Expression Array
@discardableResult
public func ≥ (lhs: [EdgeAnchorGroup], rhs: [EdgeAnchorGroup.LayoutCoefficientTuple]) -> [[EdgeAnchorGroup.Solution]] {
    return lhs.map { $0.greaterThanOrEqual(to: rhs) }
}
// MARK: EdgeAnchorGroup <=> EdgeAnchorGroup.LayoutConstantTuple

// MARK: - Equal

@discardableResult
public func .= (lhs: EdgeAnchorGroup, rhs: EdgeAnchorGroup.LayoutConstantTuple) -> EdgeAnchorGroup.Solution {
    return lhs.equal(to: rhs)
}

@discardableResult
public func .= (lhs: EdgeAnchorGroup, rhs: [EdgeAnchorGroup.LayoutConstantTuple]) -> [EdgeAnchorGroup.Solution] {
    return lhs.equal(to: rhs)
}

// MARK: - LessThanOrEqual

@discardableResult
public func ≤ (lhs: EdgeAnchorGroup, rhs: EdgeAnchorGroup.LayoutConstantTuple) -> EdgeAnchorGroup.Solution {
    return lhs.lessThanOrEqual(to: rhs)
}

@discardableResult
public func ≤ (lhs: EdgeAnchorGroup, rhs: [EdgeAnchorGroup.LayoutConstantTuple]) -> [EdgeAnchorGroup.Solution] {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: - GreaterThanOrEqual

@discardableResult
public func ≥ (lhs: EdgeAnchorGroup, rhs: EdgeAnchorGroup.LayoutConstantTuple) -> EdgeAnchorGroup.Solution {
    return lhs.greaterThanOrEqual(to: rhs)
}

@discardableResult
public func ≥ (lhs: EdgeAnchorGroup, rhs: [EdgeAnchorGroup.LayoutConstantTuple]) -> [EdgeAnchorGroup.Solution] {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: EdgeAnchorGroup Array <=> EdgeAnchorGroup.LayoutConstantTuple

// MARK: - Equal

// MARK: Collection == Expression
@discardableResult
public func .= (lhs: [EdgeAnchorGroup], rhs: EdgeAnchorGroup.LayoutConstantTuple) -> [EdgeAnchorGroup.Solution] {
    return lhs.map { $0.equal(to: rhs) }
}

// MARK: Collection == Expression Array
@discardableResult
public func .= (lhs: [EdgeAnchorGroup], rhs: [EdgeAnchorGroup.LayoutConstantTuple]) -> [[EdgeAnchorGroup.Solution]] {
    return lhs.map { $0.equal(to: rhs) }
}

// MARK: - LessThanOrEqual

// MARK: Collection <= Expression
@discardableResult
public func ≤ (lhs: [EdgeAnchorGroup], rhs: EdgeAnchorGroup.LayoutConstantTuple) -> [EdgeAnchorGroup.Solution] {
    return lhs.map { $0.lessThanOrEqual(to: rhs) }
}

// MARK: Collection <= Expression Array
@discardableResult
public func ≤ (lhs: [EdgeAnchorGroup], rhs: [EdgeAnchorGroup.LayoutConstantTuple]) -> [[EdgeAnchorGroup.Solution]] {
    return lhs.map { $0.lessThanOrEqual(to: rhs) }
}

// MARK: - GreaterThanOrEqual

// MARK: Collection >= Expression
@discardableResult
public func ≥ (lhs: [EdgeAnchorGroup], rhs: EdgeAnchorGroup.LayoutConstantTuple) -> [EdgeAnchorGroup.Solution] {
    return lhs.map { $0.greaterThanOrEqual(to: rhs) }
}

// MARK: Collection >= Expression Array
@discardableResult
public func ≥ (lhs: [EdgeAnchorGroup], rhs: [EdgeAnchorGroup.LayoutConstantTuple]) -> [[EdgeAnchorGroup.Solution]] {
    return lhs.map { $0.greaterThanOrEqual(to: rhs) }
}
// MARK: EdgeAnchorGroup <=> EdgeAnchorGroup.LayoutCoefficient

// MARK: - Equal

@discardableResult
public func .= (lhs: EdgeAnchorGroup, rhs: EdgeAnchorGroup.LayoutCoefficient) -> EdgeAnchorGroup.Solution {
    return lhs.equal(to: rhs)
}

@discardableResult
public func .= (lhs: EdgeAnchorGroup, rhs: [EdgeAnchorGroup.LayoutCoefficient]) -> [EdgeAnchorGroup.Solution] {
    return lhs.equal(to: rhs)
}

// MARK: - LessThanOrEqual

@discardableResult
public func ≤ (lhs: EdgeAnchorGroup, rhs: EdgeAnchorGroup.LayoutCoefficient) -> EdgeAnchorGroup.Solution {
    return lhs.lessThanOrEqual(to: rhs)
}

@discardableResult
public func ≤ (lhs: EdgeAnchorGroup, rhs: [EdgeAnchorGroup.LayoutCoefficient]) -> [EdgeAnchorGroup.Solution] {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: - GreaterThanOrEqual

@discardableResult
public func ≥ (lhs: EdgeAnchorGroup, rhs: EdgeAnchorGroup.LayoutCoefficient) -> EdgeAnchorGroup.Solution {
    return lhs.greaterThanOrEqual(to: rhs)
}

@discardableResult
public func ≥ (lhs: EdgeAnchorGroup, rhs: [EdgeAnchorGroup.LayoutCoefficient]) -> [EdgeAnchorGroup.Solution] {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: EdgeAnchorGroup Array <=> EdgeAnchorGroup.LayoutCoefficient

// MARK: - Equal

// MARK: Collection == Expression
@discardableResult
public func .= (lhs: [EdgeAnchorGroup], rhs: EdgeAnchorGroup.LayoutCoefficient) -> [EdgeAnchorGroup.Solution] {
    return lhs.map { $0.equal(to: rhs) }
}

// MARK: Collection == Expression Array
@discardableResult
public func .= (lhs: [EdgeAnchorGroup], rhs: [EdgeAnchorGroup.LayoutCoefficient]) -> [[EdgeAnchorGroup.Solution]] {
    return lhs.map { $0.equal(to: rhs) }
}

// MARK: - LessThanOrEqual

// MARK: Collection <= Expression
@discardableResult
public func ≤ (lhs: [EdgeAnchorGroup], rhs: EdgeAnchorGroup.LayoutCoefficient) -> [EdgeAnchorGroup.Solution] {
    return lhs.map { $0.lessThanOrEqual(to: rhs) }
}

// MARK: Collection <= Expression Array
@discardableResult
public func ≤ (lhs: [EdgeAnchorGroup], rhs: [EdgeAnchorGroup.LayoutCoefficient]) -> [[EdgeAnchorGroup.Solution]] {
    return lhs.map { $0.lessThanOrEqual(to: rhs) }
}

// MARK: - GreaterThanOrEqual

// MARK: Collection >= Expression
@discardableResult
public func ≥ (lhs: [EdgeAnchorGroup], rhs: EdgeAnchorGroup.LayoutCoefficient) -> [EdgeAnchorGroup.Solution] {
    return lhs.map { $0.greaterThanOrEqual(to: rhs) }
}

// MARK: Collection >= Expression Array
@discardableResult
public func ≥ (lhs: [EdgeAnchorGroup], rhs: [EdgeAnchorGroup.LayoutCoefficient]) -> [[EdgeAnchorGroup.Solution]] {
    return lhs.map { $0.greaterThanOrEqual(to: rhs) }
}
// MARK: EdgeAnchorGroup <=> EdgeAnchorGroup.RelativeLayoutConstantTuple

// MARK: - Equal

@discardableResult
public func .= (lhs: EdgeAnchorGroup, rhs: EdgeAnchorGroup.RelativeLayoutConstantTuple) -> EdgeAnchorGroup.Solution {
    return lhs.equal(to: rhs)
}

@discardableResult
public func .= (lhs: EdgeAnchorGroup, rhs: [EdgeAnchorGroup.RelativeLayoutConstantTuple]) -> [EdgeAnchorGroup.Solution] {
    return lhs.equal(to: rhs)
}

// MARK: - LessThanOrEqual

@discardableResult
public func ≤ (lhs: EdgeAnchorGroup, rhs: EdgeAnchorGroup.RelativeLayoutConstantTuple) -> EdgeAnchorGroup.Solution {
    return lhs.lessThanOrEqual(to: rhs)
}

@discardableResult
public func ≤ (lhs: EdgeAnchorGroup, rhs: [EdgeAnchorGroup.RelativeLayoutConstantTuple]) -> [EdgeAnchorGroup.Solution] {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: - GreaterThanOrEqual

@discardableResult
public func ≥ (lhs: EdgeAnchorGroup, rhs: EdgeAnchorGroup.RelativeLayoutConstantTuple) -> EdgeAnchorGroup.Solution {
    return lhs.greaterThanOrEqual(to: rhs)
}

@discardableResult
public func ≥ (lhs: EdgeAnchorGroup, rhs: [EdgeAnchorGroup.RelativeLayoutConstantTuple]) -> [EdgeAnchorGroup.Solution] {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: EdgeAnchorGroup Array <=> EdgeAnchorGroup.RelativeLayoutConstantTuple

// MARK: - Equal

// MARK: Collection == Expression
@discardableResult
public func .= (lhs: [EdgeAnchorGroup], rhs: EdgeAnchorGroup.RelativeLayoutConstantTuple) -> [EdgeAnchorGroup.Solution] {
    return lhs.map { $0.equal(to: rhs) }
}

// MARK: Collection == Expression Array
@discardableResult
public func .= (lhs: [EdgeAnchorGroup], rhs: [EdgeAnchorGroup.RelativeLayoutConstantTuple]) -> [[EdgeAnchorGroup.Solution]] {
    return lhs.map { $0.equal(to: rhs) }
}

// MARK: - LessThanOrEqual

// MARK: Collection <= Expression
@discardableResult
public func ≤ (lhs: [EdgeAnchorGroup], rhs: EdgeAnchorGroup.RelativeLayoutConstantTuple) -> [EdgeAnchorGroup.Solution] {
    return lhs.map { $0.lessThanOrEqual(to: rhs) }
}

// MARK: Collection <= Expression Array
@discardableResult
public func ≤ (lhs: [EdgeAnchorGroup], rhs: [EdgeAnchorGroup.RelativeLayoutConstantTuple]) -> [[EdgeAnchorGroup.Solution]] {
    return lhs.map { $0.lessThanOrEqual(to: rhs) }
}

// MARK: - GreaterThanOrEqual

// MARK: Collection >= Expression
@discardableResult
public func ≥ (lhs: [EdgeAnchorGroup], rhs: EdgeAnchorGroup.RelativeLayoutConstantTuple) -> [EdgeAnchorGroup.Solution] {
    return lhs.map { $0.greaterThanOrEqual(to: rhs) }
}

// MARK: Collection >= Expression Array
@discardableResult
public func ≥ (lhs: [EdgeAnchorGroup], rhs: [EdgeAnchorGroup.RelativeLayoutConstantTuple]) -> [[EdgeAnchorGroup.Solution]] {
    return lhs.map { $0.greaterThanOrEqual(to: rhs) }
}
