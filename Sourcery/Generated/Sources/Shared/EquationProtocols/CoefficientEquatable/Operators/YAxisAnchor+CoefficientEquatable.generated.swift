// Generated using Sourcery 0.15.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

//
//  Layman
//
//  Created by Brian Strobach on 1/22/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//
// MARK: YAxisAnchor <=> YAxisAnchor.Constant

// MARK: - Equal

@discardableResult
public func .= (lhs: YAxisAnchor, rhs: YAxisAnchor.Constant) -> YAxisAnchor.Solution {
    return lhs.equal(to: rhs)
}

@discardableResult
public func .= (lhs: YAxisAnchor, rhs: [YAxisAnchor.Constant]) -> [YAxisAnchor.Solution] {
    return lhs.equal(to: rhs)
}

// MARK: - LessThanOrEqual

@discardableResult
public func ≤ (lhs: YAxisAnchor, rhs: YAxisAnchor.Constant) -> YAxisAnchor.Solution {
    return lhs.lessThanOrEqual(to: rhs)
}

@discardableResult
public func ≤ (lhs: YAxisAnchor, rhs: [YAxisAnchor.Constant]) -> [YAxisAnchor.Solution] {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: - GreaterThanOrEqual

@discardableResult
public func ≥ (lhs: YAxisAnchor, rhs: YAxisAnchor.Constant) -> YAxisAnchor.Solution {
    return lhs.greaterThanOrEqual(to: rhs)
}

@discardableResult
public func ≥ (lhs: YAxisAnchor, rhs: [YAxisAnchor.Constant]) -> [YAxisAnchor.Solution] {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: YAxisAnchor Array <=> YAxisAnchor.Constant

// MARK: - Equal

// MARK: Collection == Expression
@discardableResult
public func .= (lhs: [YAxisAnchor], rhs: YAxisAnchor.Constant) -> [YAxisAnchor.Solution] {
    return lhs.map { $0.equal(to: rhs) }
}

// MARK: Collection == Expression Array
@discardableResult
public func .= (lhs: [YAxisAnchor], rhs: [YAxisAnchor.Constant]) -> [[YAxisAnchor.Solution]] {
    return lhs.map { $0.equal(to: rhs) }
}

// MARK: - LessThanOrEqual

// MARK: Collection <= Expression
@discardableResult
public func ≤ (lhs: [YAxisAnchor], rhs: YAxisAnchor.Constant) -> [YAxisAnchor.Solution] {
    return lhs.map { $0.lessThanOrEqual(to: rhs) }
}

// MARK: Collection <= Expression Array
@discardableResult
public func ≤ (lhs: [YAxisAnchor], rhs: [YAxisAnchor.Constant]) -> [[YAxisAnchor.Solution]] {
    return lhs.map { $0.lessThanOrEqual(to: rhs) }
}

// MARK: - GreaterThanOrEqual

// MARK: Collection >= Expression
@discardableResult
public func ≥ (lhs: [YAxisAnchor], rhs: YAxisAnchor.Constant) -> [YAxisAnchor.Solution] {
    return lhs.map { $0.greaterThanOrEqual(to: rhs) }
}

// MARK: Collection >= Expression Array
@discardableResult
public func ≥ (lhs: [YAxisAnchor], rhs: [YAxisAnchor.Constant]) -> [[YAxisAnchor.Solution]] {
    return lhs.map { $0.greaterThanOrEqual(to: rhs) }
}
// MARK: YAxisAnchor <=> YAxisAnchor.Coefficient

// MARK: - Equal

@discardableResult
public func .= (lhs: YAxisAnchor, rhs: YAxisAnchor.Coefficient) -> YAxisAnchor.Solution {
    return lhs.equal(to: rhs)
}

@discardableResult
public func .= (lhs: YAxisAnchor, rhs: [YAxisAnchor.Coefficient]) -> [YAxisAnchor.Solution] {
    return lhs.equal(to: rhs)
}

// MARK: - LessThanOrEqual

@discardableResult
public func ≤ (lhs: YAxisAnchor, rhs: YAxisAnchor.Coefficient) -> YAxisAnchor.Solution {
    return lhs.lessThanOrEqual(to: rhs)
}

@discardableResult
public func ≤ (lhs: YAxisAnchor, rhs: [YAxisAnchor.Coefficient]) -> [YAxisAnchor.Solution] {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: - GreaterThanOrEqual

@discardableResult
public func ≥ (lhs: YAxisAnchor, rhs: YAxisAnchor.Coefficient) -> YAxisAnchor.Solution {
    return lhs.greaterThanOrEqual(to: rhs)
}

@discardableResult
public func ≥ (lhs: YAxisAnchor, rhs: [YAxisAnchor.Coefficient]) -> [YAxisAnchor.Solution] {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: YAxisAnchor Array <=> YAxisAnchor.Coefficient

// MARK: - Equal

// MARK: Collection == Expression
@discardableResult
public func .= (lhs: [YAxisAnchor], rhs: YAxisAnchor.Coefficient) -> [YAxisAnchor.Solution] {
    return lhs.map { $0.equal(to: rhs) }
}

// MARK: Collection == Expression Array
@discardableResult
public func .= (lhs: [YAxisAnchor], rhs: [YAxisAnchor.Coefficient]) -> [[YAxisAnchor.Solution]] {
    return lhs.map { $0.equal(to: rhs) }
}

// MARK: - LessThanOrEqual

// MARK: Collection <= Expression
@discardableResult
public func ≤ (lhs: [YAxisAnchor], rhs: YAxisAnchor.Coefficient) -> [YAxisAnchor.Solution] {
    return lhs.map { $0.lessThanOrEqual(to: rhs) }
}

// MARK: Collection <= Expression Array
@discardableResult
public func ≤ (lhs: [YAxisAnchor], rhs: [YAxisAnchor.Coefficient]) -> [[YAxisAnchor.Solution]] {
    return lhs.map { $0.lessThanOrEqual(to: rhs) }
}

// MARK: - GreaterThanOrEqual

// MARK: Collection >= Expression
@discardableResult
public func ≥ (lhs: [YAxisAnchor], rhs: YAxisAnchor.Coefficient) -> [YAxisAnchor.Solution] {
    return lhs.map { $0.greaterThanOrEqual(to: rhs) }
}

// MARK: Collection >= Expression Array
@discardableResult
public func ≥ (lhs: [YAxisAnchor], rhs: [YAxisAnchor.Coefficient]) -> [[YAxisAnchor.Solution]] {
    return lhs.map { $0.greaterThanOrEqual(to: rhs) }
}
// MARK: YAxisAnchor <=> YAxisAnchor.Multiplier

// MARK: - Equal

@discardableResult
public func .= (lhs: YAxisAnchor, rhs: YAxisAnchor.Multiplier) -> YAxisAnchor.Solution {
    return lhs.equal(to: rhs)
}

@discardableResult
public func .= (lhs: YAxisAnchor, rhs: [YAxisAnchor.Multiplier]) -> [YAxisAnchor.Solution] {
    return lhs.equal(to: rhs)
}

// MARK: - LessThanOrEqual

@discardableResult
public func ≤ (lhs: YAxisAnchor, rhs: YAxisAnchor.Multiplier) -> YAxisAnchor.Solution {
    return lhs.lessThanOrEqual(to: rhs)
}

@discardableResult
public func ≤ (lhs: YAxisAnchor, rhs: [YAxisAnchor.Multiplier]) -> [YAxisAnchor.Solution] {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: - GreaterThanOrEqual

@discardableResult
public func ≥ (lhs: YAxisAnchor, rhs: YAxisAnchor.Multiplier) -> YAxisAnchor.Solution {
    return lhs.greaterThanOrEqual(to: rhs)
}

@discardableResult
public func ≥ (lhs: YAxisAnchor, rhs: [YAxisAnchor.Multiplier]) -> [YAxisAnchor.Solution] {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: YAxisAnchor Array <=> YAxisAnchor.Multiplier

// MARK: - Equal

// MARK: Collection == Expression
@discardableResult
public func .= (lhs: [YAxisAnchor], rhs: YAxisAnchor.Multiplier) -> [YAxisAnchor.Solution] {
    return lhs.map { $0.equal(to: rhs) }
}

// MARK: Collection == Expression Array
@discardableResult
public func .= (lhs: [YAxisAnchor], rhs: [YAxisAnchor.Multiplier]) -> [[YAxisAnchor.Solution]] {
    return lhs.map { $0.equal(to: rhs) }
}

// MARK: - LessThanOrEqual

// MARK: Collection <= Expression
@discardableResult
public func ≤ (lhs: [YAxisAnchor], rhs: YAxisAnchor.Multiplier) -> [YAxisAnchor.Solution] {
    return lhs.map { $0.lessThanOrEqual(to: rhs) }
}

// MARK: Collection <= Expression Array
@discardableResult
public func ≤ (lhs: [YAxisAnchor], rhs: [YAxisAnchor.Multiplier]) -> [[YAxisAnchor.Solution]] {
    return lhs.map { $0.lessThanOrEqual(to: rhs) }
}

// MARK: - GreaterThanOrEqual

// MARK: Collection >= Expression
@discardableResult
public func ≥ (lhs: [YAxisAnchor], rhs: YAxisAnchor.Multiplier) -> [YAxisAnchor.Solution] {
    return lhs.map { $0.greaterThanOrEqual(to: rhs) }
}

// MARK: Collection >= Expression Array
@discardableResult
public func ≥ (lhs: [YAxisAnchor], rhs: [YAxisAnchor.Multiplier]) -> [[YAxisAnchor.Solution]] {
    return lhs.map { $0.greaterThanOrEqual(to: rhs) }
}
// MARK: YAxisAnchor <=> YAxisAnchor.RelativeLayoutConstant

// MARK: - Equal

@discardableResult
public func .= (lhs: YAxisAnchor, rhs: YAxisAnchor.RelativeLayoutConstant) -> YAxisAnchor.Solution {
    return lhs.equal(to: rhs)
}

@discardableResult
public func .= (lhs: YAxisAnchor, rhs: [YAxisAnchor.RelativeLayoutConstant]) -> [YAxisAnchor.Solution] {
    return lhs.equal(to: rhs)
}

// MARK: - LessThanOrEqual

@discardableResult
public func ≤ (lhs: YAxisAnchor, rhs: YAxisAnchor.RelativeLayoutConstant) -> YAxisAnchor.Solution {
    return lhs.lessThanOrEqual(to: rhs)
}

@discardableResult
public func ≤ (lhs: YAxisAnchor, rhs: [YAxisAnchor.RelativeLayoutConstant]) -> [YAxisAnchor.Solution] {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: - GreaterThanOrEqual

@discardableResult
public func ≥ (lhs: YAxisAnchor, rhs: YAxisAnchor.RelativeLayoutConstant) -> YAxisAnchor.Solution {
    return lhs.greaterThanOrEqual(to: rhs)
}

@discardableResult
public func ≥ (lhs: YAxisAnchor, rhs: [YAxisAnchor.RelativeLayoutConstant]) -> [YAxisAnchor.Solution] {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: YAxisAnchor Array <=> YAxisAnchor.RelativeLayoutConstant

// MARK: - Equal

// MARK: Collection == Expression
@discardableResult
public func .= (lhs: [YAxisAnchor], rhs: YAxisAnchor.RelativeLayoutConstant) -> [YAxisAnchor.Solution] {
    return lhs.map { $0.equal(to: rhs) }
}

// MARK: Collection == Expression Array
@discardableResult
public func .= (lhs: [YAxisAnchor], rhs: [YAxisAnchor.RelativeLayoutConstant]) -> [[YAxisAnchor.Solution]] {
    return lhs.map { $0.equal(to: rhs) }
}

// MARK: - LessThanOrEqual

// MARK: Collection <= Expression
@discardableResult
public func ≤ (lhs: [YAxisAnchor], rhs: YAxisAnchor.RelativeLayoutConstant) -> [YAxisAnchor.Solution] {
    return lhs.map { $0.lessThanOrEqual(to: rhs) }
}

// MARK: Collection <= Expression Array
@discardableResult
public func ≤ (lhs: [YAxisAnchor], rhs: [YAxisAnchor.RelativeLayoutConstant]) -> [[YAxisAnchor.Solution]] {
    return lhs.map { $0.lessThanOrEqual(to: rhs) }
}

// MARK: - GreaterThanOrEqual

// MARK: Collection >= Expression
@discardableResult
public func ≥ (lhs: [YAxisAnchor], rhs: YAxisAnchor.RelativeLayoutConstant) -> [YAxisAnchor.Solution] {
    return lhs.map { $0.greaterThanOrEqual(to: rhs) }
}

// MARK: Collection >= Expression Array
@discardableResult
public func ≥ (lhs: [YAxisAnchor], rhs: [YAxisAnchor.RelativeLayoutConstant]) -> [[YAxisAnchor.Solution]] {
    return lhs.map { $0.greaterThanOrEqual(to: rhs) }
}
