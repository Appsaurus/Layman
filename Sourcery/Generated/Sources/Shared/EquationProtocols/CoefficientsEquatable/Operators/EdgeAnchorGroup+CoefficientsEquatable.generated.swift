// Generated using Sourcery 0.15.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

//
//  Layman
//
//  Created by Brian Strobach on 1/22/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//
// MARK: EdgeAnchorGroup <=> LayoutCoefficientTuple

// MARK: - Equal

@discardableResult
public func .= (lhs: EdgeAnchorGroup, rhs: LayoutCoefficientTuple) -> EdgeAnchorGroup.Solution {
    return lhs.equal(to: rhs)
}

@discardableResult
public func .= (lhs: EdgeAnchorGroup, rhs: [LayoutCoefficientTuple]) -> [EdgeAnchorGroup.Solution] {
    return lhs.equal(to: rhs)
}

// MARK: - LessThanOrEqual

@discardableResult
public func ≤ (lhs: EdgeAnchorGroup, rhs: LayoutCoefficientTuple) -> EdgeAnchorGroup.Solution {
    return lhs.lessThanOrEqual(to: rhs)
}

@discardableResult
public func ≤ (lhs: EdgeAnchorGroup, rhs: [LayoutCoefficientTuple]) -> [EdgeAnchorGroup.Solution] {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: - GreaterThanOrEqual

@discardableResult
public func ≥ (lhs: EdgeAnchorGroup, rhs: LayoutCoefficientTuple) -> EdgeAnchorGroup.Solution {
    return lhs.greaterThanOrEqual(to: rhs)
}

@discardableResult
public func ≥ (lhs: EdgeAnchorGroup, rhs: [LayoutCoefficientTuple]) -> [EdgeAnchorGroup.Solution] {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: EdgeAnchorGroup Array <=> LayoutCoefficientTuple

// MARK: - Equal

// MARK: Collection == Expression
@discardableResult
public func .= (lhs: [EdgeAnchorGroup], rhs: LayoutCoefficientTuple) -> [EdgeAnchorGroup.Solution] {
    return lhs.map { $0.equal(to: rhs) }
}

// MARK: Collection == Expression Array
@discardableResult
public func .= (lhs: [EdgeAnchorGroup], rhs: [LayoutCoefficientTuple]) -> [[EdgeAnchorGroup.Solution]] {
    return lhs.map { $0.equal(to: rhs) }
}

// MARK: - LessThanOrEqual

// MARK: Collection <= Expression
@discardableResult
public func ≤ (lhs: [EdgeAnchorGroup], rhs: LayoutCoefficientTuple) -> [EdgeAnchorGroup.Solution] {
    return lhs.map { $0.lessThanOrEqual(to: rhs) }
}

// MARK: Collection <= Expression Array
@discardableResult
public func ≤ (lhs: [EdgeAnchorGroup], rhs: [LayoutCoefficientTuple]) -> [[EdgeAnchorGroup.Solution]] {
    return lhs.map { $0.lessThanOrEqual(to: rhs) }
}

// MARK: - GreaterThanOrEqual

// MARK: Collection >= Expression
@discardableResult
public func ≥ (lhs: [EdgeAnchorGroup], rhs: LayoutCoefficientTuple) -> [EdgeAnchorGroup.Solution] {
    return lhs.map { $0.greaterThanOrEqual(to: rhs) }
}

// MARK: Collection >= Expression Array
@discardableResult
public func ≥ (lhs: [EdgeAnchorGroup], rhs: [LayoutCoefficientTuple]) -> [[EdgeAnchorGroup.Solution]] {
    return lhs.map { $0.greaterThanOrEqual(to: rhs) }
}
// MARK: EdgeAnchorGroup <=> LayoutConstantTuple

// MARK: - Equal

@discardableResult
public func .= (lhs: EdgeAnchorGroup, rhs: LayoutConstantTuple) -> EdgeAnchorGroup.Solution {
    return lhs.equal(to: rhs)
}

@discardableResult
public func .= (lhs: EdgeAnchorGroup, rhs: [LayoutConstantTuple]) -> [EdgeAnchorGroup.Solution] {
    return lhs.equal(to: rhs)
}

// MARK: - LessThanOrEqual

@discardableResult
public func ≤ (lhs: EdgeAnchorGroup, rhs: LayoutConstantTuple) -> EdgeAnchorGroup.Solution {
    return lhs.lessThanOrEqual(to: rhs)
}

@discardableResult
public func ≤ (lhs: EdgeAnchorGroup, rhs: [LayoutConstantTuple]) -> [EdgeAnchorGroup.Solution] {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: - GreaterThanOrEqual

@discardableResult
public func ≥ (lhs: EdgeAnchorGroup, rhs: LayoutConstantTuple) -> EdgeAnchorGroup.Solution {
    return lhs.greaterThanOrEqual(to: rhs)
}

@discardableResult
public func ≥ (lhs: EdgeAnchorGroup, rhs: [LayoutConstantTuple]) -> [EdgeAnchorGroup.Solution] {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: EdgeAnchorGroup Array <=> LayoutConstantTuple

// MARK: - Equal

// MARK: Collection == Expression
@discardableResult
public func .= (lhs: [EdgeAnchorGroup], rhs: LayoutConstantTuple) -> [EdgeAnchorGroup.Solution] {
    return lhs.map { $0.equal(to: rhs) }
}

// MARK: Collection == Expression Array
@discardableResult
public func .= (lhs: [EdgeAnchorGroup], rhs: [LayoutConstantTuple]) -> [[EdgeAnchorGroup.Solution]] {
    return lhs.map { $0.equal(to: rhs) }
}

// MARK: - LessThanOrEqual

// MARK: Collection <= Expression
@discardableResult
public func ≤ (lhs: [EdgeAnchorGroup], rhs: LayoutConstantTuple) -> [EdgeAnchorGroup.Solution] {
    return lhs.map { $0.lessThanOrEqual(to: rhs) }
}

// MARK: Collection <= Expression Array
@discardableResult
public func ≤ (lhs: [EdgeAnchorGroup], rhs: [LayoutConstantTuple]) -> [[EdgeAnchorGroup.Solution]] {
    return lhs.map { $0.lessThanOrEqual(to: rhs) }
}

// MARK: - GreaterThanOrEqual

// MARK: Collection >= Expression
@discardableResult
public func ≥ (lhs: [EdgeAnchorGroup], rhs: LayoutConstantTuple) -> [EdgeAnchorGroup.Solution] {
    return lhs.map { $0.greaterThanOrEqual(to: rhs) }
}

// MARK: Collection >= Expression Array
@discardableResult
public func ≥ (lhs: [EdgeAnchorGroup], rhs: [LayoutConstantTuple]) -> [[EdgeAnchorGroup.Solution]] {
    return lhs.map { $0.greaterThanOrEqual(to: rhs) }
}
// MARK: EdgeAnchorGroup <=> RelativeLayoutConstantTuple

// MARK: - Equal

@discardableResult
public func .= (lhs: EdgeAnchorGroup, rhs: RelativeLayoutConstantTuple) -> EdgeAnchorGroup.Solution {
    return lhs.equal(to: rhs)
}

@discardableResult
public func .= (lhs: EdgeAnchorGroup, rhs: [RelativeLayoutConstantTuple]) -> [EdgeAnchorGroup.Solution] {
    return lhs.equal(to: rhs)
}

// MARK: - LessThanOrEqual

@discardableResult
public func ≤ (lhs: EdgeAnchorGroup, rhs: RelativeLayoutConstantTuple) -> EdgeAnchorGroup.Solution {
    return lhs.lessThanOrEqual(to: rhs)
}

@discardableResult
public func ≤ (lhs: EdgeAnchorGroup, rhs: [RelativeLayoutConstantTuple]) -> [EdgeAnchorGroup.Solution] {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: - GreaterThanOrEqual

@discardableResult
public func ≥ (lhs: EdgeAnchorGroup, rhs: RelativeLayoutConstantTuple) -> EdgeAnchorGroup.Solution {
    return lhs.greaterThanOrEqual(to: rhs)
}

@discardableResult
public func ≥ (lhs: EdgeAnchorGroup, rhs: [RelativeLayoutConstantTuple]) -> [EdgeAnchorGroup.Solution] {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: EdgeAnchorGroup Array <=> RelativeLayoutConstantTuple

// MARK: - Equal

// MARK: Collection == Expression
@discardableResult
public func .= (lhs: [EdgeAnchorGroup], rhs: RelativeLayoutConstantTuple) -> [EdgeAnchorGroup.Solution] {
    return lhs.map { $0.equal(to: rhs) }
}

// MARK: Collection == Expression Array
@discardableResult
public func .= (lhs: [EdgeAnchorGroup], rhs: [RelativeLayoutConstantTuple]) -> [[EdgeAnchorGroup.Solution]] {
    return lhs.map { $0.equal(to: rhs) }
}

// MARK: - LessThanOrEqual

// MARK: Collection <= Expression
@discardableResult
public func ≤ (lhs: [EdgeAnchorGroup], rhs: RelativeLayoutConstantTuple) -> [EdgeAnchorGroup.Solution] {
    return lhs.map { $0.lessThanOrEqual(to: rhs) }
}

// MARK: Collection <= Expression Array
@discardableResult
public func ≤ (lhs: [EdgeAnchorGroup], rhs: [RelativeLayoutConstantTuple]) -> [[EdgeAnchorGroup.Solution]] {
    return lhs.map { $0.lessThanOrEqual(to: rhs) }
}

// MARK: - GreaterThanOrEqual

// MARK: Collection >= Expression
@discardableResult
public func ≥ (lhs: [EdgeAnchorGroup], rhs: RelativeLayoutConstantTuple) -> [EdgeAnchorGroup.Solution] {
    return lhs.map { $0.greaterThanOrEqual(to: rhs) }
}

// MARK: Collection >= Expression Array
@discardableResult
public func ≥ (lhs: [EdgeAnchorGroup], rhs: [RelativeLayoutConstantTuple]) -> [[EdgeAnchorGroup.Solution]] {
    return lhs.map { $0.greaterThanOrEqual(to: rhs) }
}
