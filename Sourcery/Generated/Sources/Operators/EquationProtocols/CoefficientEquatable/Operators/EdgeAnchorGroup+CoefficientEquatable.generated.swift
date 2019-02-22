// Generated using Sourcery 0.15.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

//
//  Layman
//
//  Created by Brian Strobach on 1/22/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//
// MARK: EdgeAnchorGroup <=> LayoutConstant

// MARK: - Equal

@discardableResult
public func .= (lhs: EdgeAnchorGroup, rhs: LayoutConstant) -> EdgeAnchorGroup.Solution {
    return lhs.equal(to: rhs)
}

@discardableResult
public func .= (lhs: EdgeAnchorGroup, rhs: [LayoutConstant]) -> [EdgeAnchorGroup.Solution] {
    return lhs.equal(to: rhs)
}

// MARK: - LessThanOrEqual

@discardableResult
public func ≤ (lhs: EdgeAnchorGroup, rhs: LayoutConstant) -> EdgeAnchorGroup.Solution {
    return lhs.lessThanOrEqual(to: rhs)
}

@discardableResult
public func ≤ (lhs: EdgeAnchorGroup, rhs: [LayoutConstant]) -> [EdgeAnchorGroup.Solution] {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: - GreaterThanOrEqual

@discardableResult
public func ≥ (lhs: EdgeAnchorGroup, rhs: LayoutConstant) -> EdgeAnchorGroup.Solution {
    return lhs.greaterThanOrEqual(to: rhs)
}

@discardableResult
public func ≥ (lhs: EdgeAnchorGroup, rhs: [LayoutConstant]) -> [EdgeAnchorGroup.Solution] {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: EdgeAnchorGroup Array <=> LayoutConstant

// MARK: - Equal

// MARK: Collection == Expression
@discardableResult
public func .= (lhs: [EdgeAnchorGroup], rhs: LayoutConstant) -> [EdgeAnchorGroup.Solution] {
    return lhs.equal(to: rhs)
}

// MARK: Collection == Expression Array
@discardableResult
public func .= (lhs: [EdgeAnchorGroup], rhs: [LayoutConstant]) -> [[EdgeAnchorGroup.Solution]] {
    return lhs.equal(to: rhs)
}

// MARK: - LessThanOrEqual

// MARK: Collection <= Expression
@discardableResult
public func ≤ (lhs: [EdgeAnchorGroup], rhs: LayoutConstant) -> [EdgeAnchorGroup.Solution] {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: Collection <= Expression Array
@discardableResult
public func ≤ (lhs: [EdgeAnchorGroup], rhs: [LayoutConstant]) -> [[EdgeAnchorGroup.Solution]] {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: - GreaterThanOrEqual

// MARK: Collection >= Expression
@discardableResult
public func ≥ (lhs: [EdgeAnchorGroup], rhs: LayoutConstant) -> [EdgeAnchorGroup.Solution] {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: Collection >= Expression Array
@discardableResult
public func ≥ (lhs: [EdgeAnchorGroup], rhs: [LayoutConstant]) -> [[EdgeAnchorGroup.Solution]] {
    return lhs.greaterThanOrEqual(to: rhs)
}
// MARK: EdgeAnchorGroup <=> LayoutCoefficient

// MARK: - Equal

@discardableResult
public func .= (lhs: EdgeAnchorGroup, rhs: LayoutCoefficient) -> EdgeAnchorGroup.Solution {
    return lhs.equal(to: rhs)
}

@discardableResult
public func .= (lhs: EdgeAnchorGroup, rhs: [LayoutCoefficient]) -> [EdgeAnchorGroup.Solution] {
    return lhs.equal(to: rhs)
}

// MARK: - LessThanOrEqual

@discardableResult
public func ≤ (lhs: EdgeAnchorGroup, rhs: LayoutCoefficient) -> EdgeAnchorGroup.Solution {
    return lhs.lessThanOrEqual(to: rhs)
}

@discardableResult
public func ≤ (lhs: EdgeAnchorGroup, rhs: [LayoutCoefficient]) -> [EdgeAnchorGroup.Solution] {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: - GreaterThanOrEqual

@discardableResult
public func ≥ (lhs: EdgeAnchorGroup, rhs: LayoutCoefficient) -> EdgeAnchorGroup.Solution {
    return lhs.greaterThanOrEqual(to: rhs)
}

@discardableResult
public func ≥ (lhs: EdgeAnchorGroup, rhs: [LayoutCoefficient]) -> [EdgeAnchorGroup.Solution] {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: EdgeAnchorGroup Array <=> LayoutCoefficient

// MARK: - Equal

// MARK: Collection == Expression
@discardableResult
public func .= (lhs: [EdgeAnchorGroup], rhs: LayoutCoefficient) -> [EdgeAnchorGroup.Solution] {
    return lhs.equal(to: rhs)
}

// MARK: Collection == Expression Array
@discardableResult
public func .= (lhs: [EdgeAnchorGroup], rhs: [LayoutCoefficient]) -> [[EdgeAnchorGroup.Solution]] {
    return lhs.equal(to: rhs)
}

// MARK: - LessThanOrEqual

// MARK: Collection <= Expression
@discardableResult
public func ≤ (lhs: [EdgeAnchorGroup], rhs: LayoutCoefficient) -> [EdgeAnchorGroup.Solution] {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: Collection <= Expression Array
@discardableResult
public func ≤ (lhs: [EdgeAnchorGroup], rhs: [LayoutCoefficient]) -> [[EdgeAnchorGroup.Solution]] {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: - GreaterThanOrEqual

// MARK: Collection >= Expression
@discardableResult
public func ≥ (lhs: [EdgeAnchorGroup], rhs: LayoutCoefficient) -> [EdgeAnchorGroup.Solution] {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: Collection >= Expression Array
@discardableResult
public func ≥ (lhs: [EdgeAnchorGroup], rhs: [LayoutCoefficient]) -> [[EdgeAnchorGroup.Solution]] {
    return lhs.greaterThanOrEqual(to: rhs)
}
// MARK: EdgeAnchorGroup <=> LayoutMultiplier

// MARK: - Equal

@discardableResult
public func .= (lhs: EdgeAnchorGroup, rhs: LayoutMultiplier) -> EdgeAnchorGroup.Solution {
    return lhs.equal(to: rhs)
}

@discardableResult
public func .= (lhs: EdgeAnchorGroup, rhs: [LayoutMultiplier]) -> [EdgeAnchorGroup.Solution] {
    return lhs.equal(to: rhs)
}

// MARK: - LessThanOrEqual

@discardableResult
public func ≤ (lhs: EdgeAnchorGroup, rhs: LayoutMultiplier) -> EdgeAnchorGroup.Solution {
    return lhs.lessThanOrEqual(to: rhs)
}

@discardableResult
public func ≤ (lhs: EdgeAnchorGroup, rhs: [LayoutMultiplier]) -> [EdgeAnchorGroup.Solution] {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: - GreaterThanOrEqual

@discardableResult
public func ≥ (lhs: EdgeAnchorGroup, rhs: LayoutMultiplier) -> EdgeAnchorGroup.Solution {
    return lhs.greaterThanOrEqual(to: rhs)
}

@discardableResult
public func ≥ (lhs: EdgeAnchorGroup, rhs: [LayoutMultiplier]) -> [EdgeAnchorGroup.Solution] {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: EdgeAnchorGroup Array <=> LayoutMultiplier

// MARK: - Equal

// MARK: Collection == Expression
@discardableResult
public func .= (lhs: [EdgeAnchorGroup], rhs: LayoutMultiplier) -> [EdgeAnchorGroup.Solution] {
    return lhs.equal(to: rhs)
}

// MARK: Collection == Expression Array
@discardableResult
public func .= (lhs: [EdgeAnchorGroup], rhs: [LayoutMultiplier]) -> [[EdgeAnchorGroup.Solution]] {
    return lhs.equal(to: rhs)
}

// MARK: - LessThanOrEqual

// MARK: Collection <= Expression
@discardableResult
public func ≤ (lhs: [EdgeAnchorGroup], rhs: LayoutMultiplier) -> [EdgeAnchorGroup.Solution] {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: Collection <= Expression Array
@discardableResult
public func ≤ (lhs: [EdgeAnchorGroup], rhs: [LayoutMultiplier]) -> [[EdgeAnchorGroup.Solution]] {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: - GreaterThanOrEqual

// MARK: Collection >= Expression
@discardableResult
public func ≥ (lhs: [EdgeAnchorGroup], rhs: LayoutMultiplier) -> [EdgeAnchorGroup.Solution] {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: Collection >= Expression Array
@discardableResult
public func ≥ (lhs: [EdgeAnchorGroup], rhs: [LayoutMultiplier]) -> [[EdgeAnchorGroup.Solution]] {
    return lhs.greaterThanOrEqual(to: rhs)
}
// MARK: EdgeAnchorGroup <=> RelativeLayoutConstant

// MARK: - Equal

@discardableResult
public func .= (lhs: EdgeAnchorGroup, rhs: RelativeLayoutConstant) -> EdgeAnchorGroup.Solution {
    return lhs.equal(to: rhs)
}

@discardableResult
public func .= (lhs: EdgeAnchorGroup, rhs: [RelativeLayoutConstant]) -> [EdgeAnchorGroup.Solution] {
    return lhs.equal(to: rhs)
}

// MARK: - LessThanOrEqual

@discardableResult
public func ≤ (lhs: EdgeAnchorGroup, rhs: RelativeLayoutConstant) -> EdgeAnchorGroup.Solution {
    return lhs.lessThanOrEqual(to: rhs)
}

@discardableResult
public func ≤ (lhs: EdgeAnchorGroup, rhs: [RelativeLayoutConstant]) -> [EdgeAnchorGroup.Solution] {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: - GreaterThanOrEqual

@discardableResult
public func ≥ (lhs: EdgeAnchorGroup, rhs: RelativeLayoutConstant) -> EdgeAnchorGroup.Solution {
    return lhs.greaterThanOrEqual(to: rhs)
}

@discardableResult
public func ≥ (lhs: EdgeAnchorGroup, rhs: [RelativeLayoutConstant]) -> [EdgeAnchorGroup.Solution] {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: EdgeAnchorGroup Array <=> RelativeLayoutConstant

// MARK: - Equal

// MARK: Collection == Expression
@discardableResult
public func .= (lhs: [EdgeAnchorGroup], rhs: RelativeLayoutConstant) -> [EdgeAnchorGroup.Solution] {
    return lhs.equal(to: rhs)
}

// MARK: Collection == Expression Array
@discardableResult
public func .= (lhs: [EdgeAnchorGroup], rhs: [RelativeLayoutConstant]) -> [[EdgeAnchorGroup.Solution]] {
    return lhs.equal(to: rhs)
}

// MARK: - LessThanOrEqual

// MARK: Collection <= Expression
@discardableResult
public func ≤ (lhs: [EdgeAnchorGroup], rhs: RelativeLayoutConstant) -> [EdgeAnchorGroup.Solution] {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: Collection <= Expression Array
@discardableResult
public func ≤ (lhs: [EdgeAnchorGroup], rhs: [RelativeLayoutConstant]) -> [[EdgeAnchorGroup.Solution]] {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: - GreaterThanOrEqual

// MARK: Collection >= Expression
@discardableResult
public func ≥ (lhs: [EdgeAnchorGroup], rhs: RelativeLayoutConstant) -> [EdgeAnchorGroup.Solution] {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: Collection >= Expression Array
@discardableResult
public func ≥ (lhs: [EdgeAnchorGroup], rhs: [RelativeLayoutConstant]) -> [[EdgeAnchorGroup.Solution]] {
    return lhs.greaterThanOrEqual(to: rhs)
}
