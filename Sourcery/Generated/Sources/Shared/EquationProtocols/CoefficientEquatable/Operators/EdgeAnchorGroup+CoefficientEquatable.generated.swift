// Generated using Sourcery 0.15.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

//
//  Layman
//
//  Created by Brian Strobach on 1/22/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//
// MARK: EdgeAnchorGroup <=> EdgeAnchorGroup.Constant

// MARK: - Equal

@discardableResult
public func .= (lhs: EdgeAnchorGroup, rhs: EdgeAnchorGroup.Constant) -> EdgeAnchorGroup.Solution {
    return lhs.equal(to: rhs)
}

@discardableResult
public func .= (lhs: EdgeAnchorGroup, rhs: [EdgeAnchorGroup.Constant]) -> [EdgeAnchorGroup.Solution] {
    return lhs.equal(to: rhs)
}

// MARK: - LessThanOrEqual

@discardableResult
public func ≤ (lhs: EdgeAnchorGroup, rhs: EdgeAnchorGroup.Constant) -> EdgeAnchorGroup.Solution {
    return lhs.lessThanOrEqual(to: rhs)
}

@discardableResult
public func ≤ (lhs: EdgeAnchorGroup, rhs: [EdgeAnchorGroup.Constant]) -> [EdgeAnchorGroup.Solution] {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: - GreaterThanOrEqual

@discardableResult
public func ≥ (lhs: EdgeAnchorGroup, rhs: EdgeAnchorGroup.Constant) -> EdgeAnchorGroup.Solution {
    return lhs.greaterThanOrEqual(to: rhs)
}

@discardableResult
public func ≥ (lhs: EdgeAnchorGroup, rhs: [EdgeAnchorGroup.Constant]) -> [EdgeAnchorGroup.Solution] {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: EdgeAnchorGroup Array <=> EdgeAnchorGroup.Constant

// MARK: - Equal

// MARK: Collection == Expression
@discardableResult
public func .= (lhs: [EdgeAnchorGroup], rhs: EdgeAnchorGroup.Constant) -> [EdgeAnchorGroup.Solution] {
    return lhs.map { $0.equal(to: rhs) }
}

// MARK: Collection == Expression Array
@discardableResult
public func .= (lhs: [EdgeAnchorGroup], rhs: [EdgeAnchorGroup.Constant]) -> [[EdgeAnchorGroup.Solution]] {
    return lhs.map { $0.equal(to: rhs) }
}

// MARK: - LessThanOrEqual

// MARK: Collection <= Expression
@discardableResult
public func ≤ (lhs: [EdgeAnchorGroup], rhs: EdgeAnchorGroup.Constant) -> [EdgeAnchorGroup.Solution] {
    return lhs.map { $0.lessThanOrEqual(to: rhs) }
}

// MARK: Collection <= Expression Array
@discardableResult
public func ≤ (lhs: [EdgeAnchorGroup], rhs: [EdgeAnchorGroup.Constant]) -> [[EdgeAnchorGroup.Solution]] {
    return lhs.map { $0.lessThanOrEqual(to: rhs) }
}

// MARK: - GreaterThanOrEqual

// MARK: Collection >= Expression
@discardableResult
public func ≥ (lhs: [EdgeAnchorGroup], rhs: EdgeAnchorGroup.Constant) -> [EdgeAnchorGroup.Solution] {
    return lhs.map { $0.greaterThanOrEqual(to: rhs) }
}

// MARK: Collection >= Expression Array
@discardableResult
public func ≥ (lhs: [EdgeAnchorGroup], rhs: [EdgeAnchorGroup.Constant]) -> [[EdgeAnchorGroup.Solution]] {
    return lhs.map { $0.greaterThanOrEqual(to: rhs) }
}
// MARK: EdgeAnchorGroup <=> EdgeAnchorGroup.Coefficient

// MARK: - Equal

@discardableResult
public func .= (lhs: EdgeAnchorGroup, rhs: EdgeAnchorGroup.Coefficient) -> EdgeAnchorGroup.Solution {
    return lhs.equal(to: rhs)
}

@discardableResult
public func .= (lhs: EdgeAnchorGroup, rhs: [EdgeAnchorGroup.Coefficient]) -> [EdgeAnchorGroup.Solution] {
    return lhs.equal(to: rhs)
}

// MARK: - LessThanOrEqual

@discardableResult
public func ≤ (lhs: EdgeAnchorGroup, rhs: EdgeAnchorGroup.Coefficient) -> EdgeAnchorGroup.Solution {
    return lhs.lessThanOrEqual(to: rhs)
}

@discardableResult
public func ≤ (lhs: EdgeAnchorGroup, rhs: [EdgeAnchorGroup.Coefficient]) -> [EdgeAnchorGroup.Solution] {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: - GreaterThanOrEqual

@discardableResult
public func ≥ (lhs: EdgeAnchorGroup, rhs: EdgeAnchorGroup.Coefficient) -> EdgeAnchorGroup.Solution {
    return lhs.greaterThanOrEqual(to: rhs)
}

@discardableResult
public func ≥ (lhs: EdgeAnchorGroup, rhs: [EdgeAnchorGroup.Coefficient]) -> [EdgeAnchorGroup.Solution] {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: EdgeAnchorGroup Array <=> EdgeAnchorGroup.Coefficient

// MARK: - Equal

// MARK: Collection == Expression
@discardableResult
public func .= (lhs: [EdgeAnchorGroup], rhs: EdgeAnchorGroup.Coefficient) -> [EdgeAnchorGroup.Solution] {
    return lhs.map { $0.equal(to: rhs) }
}

// MARK: Collection == Expression Array
@discardableResult
public func .= (lhs: [EdgeAnchorGroup], rhs: [EdgeAnchorGroup.Coefficient]) -> [[EdgeAnchorGroup.Solution]] {
    return lhs.map { $0.equal(to: rhs) }
}

// MARK: - LessThanOrEqual

// MARK: Collection <= Expression
@discardableResult
public func ≤ (lhs: [EdgeAnchorGroup], rhs: EdgeAnchorGroup.Coefficient) -> [EdgeAnchorGroup.Solution] {
    return lhs.map { $0.lessThanOrEqual(to: rhs) }
}

// MARK: Collection <= Expression Array
@discardableResult
public func ≤ (lhs: [EdgeAnchorGroup], rhs: [EdgeAnchorGroup.Coefficient]) -> [[EdgeAnchorGroup.Solution]] {
    return lhs.map { $0.lessThanOrEqual(to: rhs) }
}

// MARK: - GreaterThanOrEqual

// MARK: Collection >= Expression
@discardableResult
public func ≥ (lhs: [EdgeAnchorGroup], rhs: EdgeAnchorGroup.Coefficient) -> [EdgeAnchorGroup.Solution] {
    return lhs.map { $0.greaterThanOrEqual(to: rhs) }
}

// MARK: Collection >= Expression Array
@discardableResult
public func ≥ (lhs: [EdgeAnchorGroup], rhs: [EdgeAnchorGroup.Coefficient]) -> [[EdgeAnchorGroup.Solution]] {
    return lhs.map { $0.greaterThanOrEqual(to: rhs) }
}
// MARK: EdgeAnchorGroup <=> EdgeAnchorGroup.Multiplier

// MARK: - Equal

@discardableResult
public func .= (lhs: EdgeAnchorGroup, rhs: EdgeAnchorGroup.Multiplier) -> EdgeAnchorGroup.Solution {
    return lhs.equal(to: rhs)
}

@discardableResult
public func .= (lhs: EdgeAnchorGroup, rhs: [EdgeAnchorGroup.Multiplier]) -> [EdgeAnchorGroup.Solution] {
    return lhs.equal(to: rhs)
}

// MARK: - LessThanOrEqual

@discardableResult
public func ≤ (lhs: EdgeAnchorGroup, rhs: EdgeAnchorGroup.Multiplier) -> EdgeAnchorGroup.Solution {
    return lhs.lessThanOrEqual(to: rhs)
}

@discardableResult
public func ≤ (lhs: EdgeAnchorGroup, rhs: [EdgeAnchorGroup.Multiplier]) -> [EdgeAnchorGroup.Solution] {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: - GreaterThanOrEqual

@discardableResult
public func ≥ (lhs: EdgeAnchorGroup, rhs: EdgeAnchorGroup.Multiplier) -> EdgeAnchorGroup.Solution {
    return lhs.greaterThanOrEqual(to: rhs)
}

@discardableResult
public func ≥ (lhs: EdgeAnchorGroup, rhs: [EdgeAnchorGroup.Multiplier]) -> [EdgeAnchorGroup.Solution] {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: EdgeAnchorGroup Array <=> EdgeAnchorGroup.Multiplier

// MARK: - Equal

// MARK: Collection == Expression
@discardableResult
public func .= (lhs: [EdgeAnchorGroup], rhs: EdgeAnchorGroup.Multiplier) -> [EdgeAnchorGroup.Solution] {
    return lhs.map { $0.equal(to: rhs) }
}

// MARK: Collection == Expression Array
@discardableResult
public func .= (lhs: [EdgeAnchorGroup], rhs: [EdgeAnchorGroup.Multiplier]) -> [[EdgeAnchorGroup.Solution]] {
    return lhs.map { $0.equal(to: rhs) }
}

// MARK: - LessThanOrEqual

// MARK: Collection <= Expression
@discardableResult
public func ≤ (lhs: [EdgeAnchorGroup], rhs: EdgeAnchorGroup.Multiplier) -> [EdgeAnchorGroup.Solution] {
    return lhs.map { $0.lessThanOrEqual(to: rhs) }
}

// MARK: Collection <= Expression Array
@discardableResult
public func ≤ (lhs: [EdgeAnchorGroup], rhs: [EdgeAnchorGroup.Multiplier]) -> [[EdgeAnchorGroup.Solution]] {
    return lhs.map { $0.lessThanOrEqual(to: rhs) }
}

// MARK: - GreaterThanOrEqual

// MARK: Collection >= Expression
@discardableResult
public func ≥ (lhs: [EdgeAnchorGroup], rhs: EdgeAnchorGroup.Multiplier) -> [EdgeAnchorGroup.Solution] {
    return lhs.map { $0.greaterThanOrEqual(to: rhs) }
}

// MARK: Collection >= Expression Array
@discardableResult
public func ≥ (lhs: [EdgeAnchorGroup], rhs: [EdgeAnchorGroup.Multiplier]) -> [[EdgeAnchorGroup.Solution]] {
    return lhs.map { $0.greaterThanOrEqual(to: rhs) }
}
// MARK: EdgeAnchorGroup <=> EdgeAnchorGroup.RelativeLayoutConstant

// MARK: - Equal

@discardableResult
public func .= (lhs: EdgeAnchorGroup, rhs: EdgeAnchorGroup.RelativeLayoutConstant) -> EdgeAnchorGroup.Solution {
    return lhs.equal(to: rhs)
}

@discardableResult
public func .= (lhs: EdgeAnchorGroup, rhs: [EdgeAnchorGroup.RelativeLayoutConstant]) -> [EdgeAnchorGroup.Solution] {
    return lhs.equal(to: rhs)
}

// MARK: - LessThanOrEqual

@discardableResult
public func ≤ (lhs: EdgeAnchorGroup, rhs: EdgeAnchorGroup.RelativeLayoutConstant) -> EdgeAnchorGroup.Solution {
    return lhs.lessThanOrEqual(to: rhs)
}

@discardableResult
public func ≤ (lhs: EdgeAnchorGroup, rhs: [EdgeAnchorGroup.RelativeLayoutConstant]) -> [EdgeAnchorGroup.Solution] {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: - GreaterThanOrEqual

@discardableResult
public func ≥ (lhs: EdgeAnchorGroup, rhs: EdgeAnchorGroup.RelativeLayoutConstant) -> EdgeAnchorGroup.Solution {
    return lhs.greaterThanOrEqual(to: rhs)
}

@discardableResult
public func ≥ (lhs: EdgeAnchorGroup, rhs: [EdgeAnchorGroup.RelativeLayoutConstant]) -> [EdgeAnchorGroup.Solution] {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: EdgeAnchorGroup Array <=> EdgeAnchorGroup.RelativeLayoutConstant

// MARK: - Equal

// MARK: Collection == Expression
@discardableResult
public func .= (lhs: [EdgeAnchorGroup], rhs: EdgeAnchorGroup.RelativeLayoutConstant) -> [EdgeAnchorGroup.Solution] {
    return lhs.map { $0.equal(to: rhs) }
}

// MARK: Collection == Expression Array
@discardableResult
public func .= (lhs: [EdgeAnchorGroup], rhs: [EdgeAnchorGroup.RelativeLayoutConstant]) -> [[EdgeAnchorGroup.Solution]] {
    return lhs.map { $0.equal(to: rhs) }
}

// MARK: - LessThanOrEqual

// MARK: Collection <= Expression
@discardableResult
public func ≤ (lhs: [EdgeAnchorGroup], rhs: EdgeAnchorGroup.RelativeLayoutConstant) -> [EdgeAnchorGroup.Solution] {
    return lhs.map { $0.lessThanOrEqual(to: rhs) }
}

// MARK: Collection <= Expression Array
@discardableResult
public func ≤ (lhs: [EdgeAnchorGroup], rhs: [EdgeAnchorGroup.RelativeLayoutConstant]) -> [[EdgeAnchorGroup.Solution]] {
    return lhs.map { $0.lessThanOrEqual(to: rhs) }
}

// MARK: - GreaterThanOrEqual

// MARK: Collection >= Expression
@discardableResult
public func ≥ (lhs: [EdgeAnchorGroup], rhs: EdgeAnchorGroup.RelativeLayoutConstant) -> [EdgeAnchorGroup.Solution] {
    return lhs.map { $0.greaterThanOrEqual(to: rhs) }
}

// MARK: Collection >= Expression Array
@discardableResult
public func ≥ (lhs: [EdgeAnchorGroup], rhs: [EdgeAnchorGroup.RelativeLayoutConstant]) -> [[EdgeAnchorGroup.Solution]] {
    return lhs.map { $0.greaterThanOrEqual(to: rhs) }
}
