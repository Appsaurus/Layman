// Generated using Sourcery 0.15.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

//
//  Layman
//
//  Created by Brian Strobach on 1/22/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//
// MARK: YAxisAnchorPair <=> YAxisAnchorPair.Constant

// MARK: - Equal

@discardableResult
public func .= (lhs: YAxisAnchorPair, rhs: YAxisAnchorPair.Constant) -> YAxisAnchorPair.Solution {
    return lhs.equal(to: rhs)
}

@discardableResult
public func .= (lhs: YAxisAnchorPair, rhs: [YAxisAnchorPair.Constant]) -> [YAxisAnchorPair.Solution] {
    return lhs.equal(to: rhs)
}

// MARK: - LessThanOrEqual

@discardableResult
public func ≤ (lhs: YAxisAnchorPair, rhs: YAxisAnchorPair.Constant) -> YAxisAnchorPair.Solution {
    return lhs.lessThanOrEqual(to: rhs)
}

@discardableResult
public func ≤ (lhs: YAxisAnchorPair, rhs: [YAxisAnchorPair.Constant]) -> [YAxisAnchorPair.Solution] {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: - GreaterThanOrEqual

@discardableResult
public func ≥ (lhs: YAxisAnchorPair, rhs: YAxisAnchorPair.Constant) -> YAxisAnchorPair.Solution {
    return lhs.greaterThanOrEqual(to: rhs)
}

@discardableResult
public func ≥ (lhs: YAxisAnchorPair, rhs: [YAxisAnchorPair.Constant]) -> [YAxisAnchorPair.Solution] {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: YAxisAnchorPair Array <=> YAxisAnchorPair.Constant

// MARK: - Equal

// MARK: Collection == Expression
@discardableResult
public func .= (lhs: [YAxisAnchorPair], rhs: YAxisAnchorPair.Constant) -> [YAxisAnchorPair.Solution] {
    return lhs.map { $0.equal(to: rhs) }
}

// MARK: Collection == Expression Array
@discardableResult
public func .= (lhs: [YAxisAnchorPair], rhs: [YAxisAnchorPair.Constant]) -> [[YAxisAnchorPair.Solution]] {
    return lhs.map { $0.equal(to: rhs) }
}

// MARK: - LessThanOrEqual

// MARK: Collection <= Expression
@discardableResult
public func ≤ (lhs: [YAxisAnchorPair], rhs: YAxisAnchorPair.Constant) -> [YAxisAnchorPair.Solution] {
    return lhs.map { $0.lessThanOrEqual(to: rhs) }
}

// MARK: Collection <= Expression Array
@discardableResult
public func ≤ (lhs: [YAxisAnchorPair], rhs: [YAxisAnchorPair.Constant]) -> [[YAxisAnchorPair.Solution]] {
    return lhs.map { $0.lessThanOrEqual(to: rhs) }
}

// MARK: - GreaterThanOrEqual

// MARK: Collection >= Expression
@discardableResult
public func ≥ (lhs: [YAxisAnchorPair], rhs: YAxisAnchorPair.Constant) -> [YAxisAnchorPair.Solution] {
    return lhs.map { $0.greaterThanOrEqual(to: rhs) }
}

// MARK: Collection >= Expression Array
@discardableResult
public func ≥ (lhs: [YAxisAnchorPair], rhs: [YAxisAnchorPair.Constant]) -> [[YAxisAnchorPair.Solution]] {
    return lhs.map { $0.greaterThanOrEqual(to: rhs) }
}
// MARK: YAxisAnchorPair <=> YAxisAnchorPair.Coefficient

// MARK: - Equal

@discardableResult
public func .= (lhs: YAxisAnchorPair, rhs: YAxisAnchorPair.Coefficient) -> YAxisAnchorPair.Solution {
    return lhs.equal(to: rhs)
}

@discardableResult
public func .= (lhs: YAxisAnchorPair, rhs: [YAxisAnchorPair.Coefficient]) -> [YAxisAnchorPair.Solution] {
    return lhs.equal(to: rhs)
}

// MARK: - LessThanOrEqual

@discardableResult
public func ≤ (lhs: YAxisAnchorPair, rhs: YAxisAnchorPair.Coefficient) -> YAxisAnchorPair.Solution {
    return lhs.lessThanOrEqual(to: rhs)
}

@discardableResult
public func ≤ (lhs: YAxisAnchorPair, rhs: [YAxisAnchorPair.Coefficient]) -> [YAxisAnchorPair.Solution] {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: - GreaterThanOrEqual

@discardableResult
public func ≥ (lhs: YAxisAnchorPair, rhs: YAxisAnchorPair.Coefficient) -> YAxisAnchorPair.Solution {
    return lhs.greaterThanOrEqual(to: rhs)
}

@discardableResult
public func ≥ (lhs: YAxisAnchorPair, rhs: [YAxisAnchorPair.Coefficient]) -> [YAxisAnchorPair.Solution] {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: YAxisAnchorPair Array <=> YAxisAnchorPair.Coefficient

// MARK: - Equal

// MARK: Collection == Expression
@discardableResult
public func .= (lhs: [YAxisAnchorPair], rhs: YAxisAnchorPair.Coefficient) -> [YAxisAnchorPair.Solution] {
    return lhs.map { $0.equal(to: rhs) }
}

// MARK: Collection == Expression Array
@discardableResult
public func .= (lhs: [YAxisAnchorPair], rhs: [YAxisAnchorPair.Coefficient]) -> [[YAxisAnchorPair.Solution]] {
    return lhs.map { $0.equal(to: rhs) }
}

// MARK: - LessThanOrEqual

// MARK: Collection <= Expression
@discardableResult
public func ≤ (lhs: [YAxisAnchorPair], rhs: YAxisAnchorPair.Coefficient) -> [YAxisAnchorPair.Solution] {
    return lhs.map { $0.lessThanOrEqual(to: rhs) }
}

// MARK: Collection <= Expression Array
@discardableResult
public func ≤ (lhs: [YAxisAnchorPair], rhs: [YAxisAnchorPair.Coefficient]) -> [[YAxisAnchorPair.Solution]] {
    return lhs.map { $0.lessThanOrEqual(to: rhs) }
}

// MARK: - GreaterThanOrEqual

// MARK: Collection >= Expression
@discardableResult
public func ≥ (lhs: [YAxisAnchorPair], rhs: YAxisAnchorPair.Coefficient) -> [YAxisAnchorPair.Solution] {
    return lhs.map { $0.greaterThanOrEqual(to: rhs) }
}

// MARK: Collection >= Expression Array
@discardableResult
public func ≥ (lhs: [YAxisAnchorPair], rhs: [YAxisAnchorPair.Coefficient]) -> [[YAxisAnchorPair.Solution]] {
    return lhs.map { $0.greaterThanOrEqual(to: rhs) }
}
// MARK: YAxisAnchorPair <=> YAxisAnchorPair.Multiplier

// MARK: - Equal

@discardableResult
public func .= (lhs: YAxisAnchorPair, rhs: YAxisAnchorPair.Multiplier) -> YAxisAnchorPair.Solution {
    return lhs.equal(to: rhs)
}

@discardableResult
public func .= (lhs: YAxisAnchorPair, rhs: [YAxisAnchorPair.Multiplier]) -> [YAxisAnchorPair.Solution] {
    return lhs.equal(to: rhs)
}

// MARK: - LessThanOrEqual

@discardableResult
public func ≤ (lhs: YAxisAnchorPair, rhs: YAxisAnchorPair.Multiplier) -> YAxisAnchorPair.Solution {
    return lhs.lessThanOrEqual(to: rhs)
}

@discardableResult
public func ≤ (lhs: YAxisAnchorPair, rhs: [YAxisAnchorPair.Multiplier]) -> [YAxisAnchorPair.Solution] {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: - GreaterThanOrEqual

@discardableResult
public func ≥ (lhs: YAxisAnchorPair, rhs: YAxisAnchorPair.Multiplier) -> YAxisAnchorPair.Solution {
    return lhs.greaterThanOrEqual(to: rhs)
}

@discardableResult
public func ≥ (lhs: YAxisAnchorPair, rhs: [YAxisAnchorPair.Multiplier]) -> [YAxisAnchorPair.Solution] {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: YAxisAnchorPair Array <=> YAxisAnchorPair.Multiplier

// MARK: - Equal

// MARK: Collection == Expression
@discardableResult
public func .= (lhs: [YAxisAnchorPair], rhs: YAxisAnchorPair.Multiplier) -> [YAxisAnchorPair.Solution] {
    return lhs.map { $0.equal(to: rhs) }
}

// MARK: Collection == Expression Array
@discardableResult
public func .= (lhs: [YAxisAnchorPair], rhs: [YAxisAnchorPair.Multiplier]) -> [[YAxisAnchorPair.Solution]] {
    return lhs.map { $0.equal(to: rhs) }
}

// MARK: - LessThanOrEqual

// MARK: Collection <= Expression
@discardableResult
public func ≤ (lhs: [YAxisAnchorPair], rhs: YAxisAnchorPair.Multiplier) -> [YAxisAnchorPair.Solution] {
    return lhs.map { $0.lessThanOrEqual(to: rhs) }
}

// MARK: Collection <= Expression Array
@discardableResult
public func ≤ (lhs: [YAxisAnchorPair], rhs: [YAxisAnchorPair.Multiplier]) -> [[YAxisAnchorPair.Solution]] {
    return lhs.map { $0.lessThanOrEqual(to: rhs) }
}

// MARK: - GreaterThanOrEqual

// MARK: Collection >= Expression
@discardableResult
public func ≥ (lhs: [YAxisAnchorPair], rhs: YAxisAnchorPair.Multiplier) -> [YAxisAnchorPair.Solution] {
    return lhs.map { $0.greaterThanOrEqual(to: rhs) }
}

// MARK: Collection >= Expression Array
@discardableResult
public func ≥ (lhs: [YAxisAnchorPair], rhs: [YAxisAnchorPair.Multiplier]) -> [[YAxisAnchorPair.Solution]] {
    return lhs.map { $0.greaterThanOrEqual(to: rhs) }
}
// MARK: YAxisAnchorPair <=> YAxisAnchorPair.RelativeLayoutConstant

// MARK: - Equal

@discardableResult
public func .= (lhs: YAxisAnchorPair, rhs: YAxisAnchorPair.RelativeLayoutConstant) -> YAxisAnchorPair.Solution {
    return lhs.equal(to: rhs)
}

@discardableResult
public func .= (lhs: YAxisAnchorPair, rhs: [YAxisAnchorPair.RelativeLayoutConstant]) -> [YAxisAnchorPair.Solution] {
    return lhs.equal(to: rhs)
}

// MARK: - LessThanOrEqual

@discardableResult
public func ≤ (lhs: YAxisAnchorPair, rhs: YAxisAnchorPair.RelativeLayoutConstant) -> YAxisAnchorPair.Solution {
    return lhs.lessThanOrEqual(to: rhs)
}

@discardableResult
public func ≤ (lhs: YAxisAnchorPair, rhs: [YAxisAnchorPair.RelativeLayoutConstant]) -> [YAxisAnchorPair.Solution] {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: - GreaterThanOrEqual

@discardableResult
public func ≥ (lhs: YAxisAnchorPair, rhs: YAxisAnchorPair.RelativeLayoutConstant) -> YAxisAnchorPair.Solution {
    return lhs.greaterThanOrEqual(to: rhs)
}

@discardableResult
public func ≥ (lhs: YAxisAnchorPair, rhs: [YAxisAnchorPair.RelativeLayoutConstant]) -> [YAxisAnchorPair.Solution] {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: YAxisAnchorPair Array <=> YAxisAnchorPair.RelativeLayoutConstant

// MARK: - Equal

// MARK: Collection == Expression
@discardableResult
public func .= (lhs: [YAxisAnchorPair], rhs: YAxisAnchorPair.RelativeLayoutConstant) -> [YAxisAnchorPair.Solution] {
    return lhs.map { $0.equal(to: rhs) }
}

// MARK: Collection == Expression Array
@discardableResult
public func .= (lhs: [YAxisAnchorPair], rhs: [YAxisAnchorPair.RelativeLayoutConstant]) -> [[YAxisAnchorPair.Solution]] {
    return lhs.map { $0.equal(to: rhs) }
}

// MARK: - LessThanOrEqual

// MARK: Collection <= Expression
@discardableResult
public func ≤ (lhs: [YAxisAnchorPair], rhs: YAxisAnchorPair.RelativeLayoutConstant) -> [YAxisAnchorPair.Solution] {
    return lhs.map { $0.lessThanOrEqual(to: rhs) }
}

// MARK: Collection <= Expression Array
@discardableResult
public func ≤ (lhs: [YAxisAnchorPair], rhs: [YAxisAnchorPair.RelativeLayoutConstant]) -> [[YAxisAnchorPair.Solution]] {
    return lhs.map { $0.lessThanOrEqual(to: rhs) }
}

// MARK: - GreaterThanOrEqual

// MARK: Collection >= Expression
@discardableResult
public func ≥ (lhs: [YAxisAnchorPair], rhs: YAxisAnchorPair.RelativeLayoutConstant) -> [YAxisAnchorPair.Solution] {
    return lhs.map { $0.greaterThanOrEqual(to: rhs) }
}

// MARK: Collection >= Expression Array
@discardableResult
public func ≥ (lhs: [YAxisAnchorPair], rhs: [YAxisAnchorPair.RelativeLayoutConstant]) -> [[YAxisAnchorPair.Solution]] {
    return lhs.map { $0.greaterThanOrEqual(to: rhs) }
}
