// Generated using Sourcery 0.15.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

//
//  UILayoutKit
//
//  Created by Brian Strobach on 1/22/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//
// MARK: LayoutDimension <=> LayoutDimension.Constant

// MARK: - Equal

@discardableResult
public func .= (lhs: LayoutDimension, rhs: LayoutDimension.Constant) -> LayoutDimension.Solution {
    return lhs.equal(to: rhs)
}

@discardableResult
public func .= (lhs: LayoutDimension, rhs: [LayoutDimension.Constant]) -> [LayoutDimension.Solution] {
    return lhs.equal(to: rhs)
}

// MARK: - LessThanOrEqual

@discardableResult
public func ≤ (lhs: LayoutDimension, rhs: LayoutDimension.Constant) -> LayoutDimension.Solution {
    return lhs.lessThanOrEqual(to: rhs)
}

@discardableResult
public func ≤ (lhs: LayoutDimension, rhs: [LayoutDimension.Constant]) -> [LayoutDimension.Solution] {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: - GreaterThanOrEqual

@discardableResult
public func ≥ (lhs: LayoutDimension, rhs: LayoutDimension.Constant) -> LayoutDimension.Solution {
    return lhs.greaterThanOrEqual(to: rhs)
}

@discardableResult
public func ≥ (lhs: LayoutDimension, rhs: [LayoutDimension.Constant]) -> [LayoutDimension.Solution] {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: LayoutDimension Array <=> LayoutDimension.Constant

// MARK: - Equal

// MARK: Collection == Expression
@discardableResult
public func .= (lhs: [LayoutDimension], rhs: LayoutDimension.Constant) -> [LayoutDimension.Solution] {
    return lhs.map { $0.equal(to: rhs) }
}

// MARK: Collection == Expression Array
@discardableResult
public func .= (lhs: [LayoutDimension], rhs: [LayoutDimension.Constant]) -> [[LayoutDimension.Solution]] {
    return lhs.map { $0.equal(to: rhs) }
}

// MARK: - LessThanOrEqual

// MARK: Collection <= Expression
@discardableResult
public func ≤ (lhs: [LayoutDimension], rhs: LayoutDimension.Constant) -> [LayoutDimension.Solution] {
    return lhs.map { $0.lessThanOrEqual(to: rhs) }
}

// MARK: Collection <= Expression Array
@discardableResult
public func ≤ (lhs: [LayoutDimension], rhs: [LayoutDimension.Constant]) -> [[LayoutDimension.Solution]] {
    return lhs.map { $0.lessThanOrEqual(to: rhs) }
}

// MARK: - GreaterThanOrEqual

// MARK: Collection >= Expression
@discardableResult
public func ≥ (lhs: [LayoutDimension], rhs: LayoutDimension.Constant) -> [LayoutDimension.Solution] {
    return lhs.map { $0.greaterThanOrEqual(to: rhs) }
}

// MARK: Collection >= Expression Array
@discardableResult
public func ≥ (lhs: [LayoutDimension], rhs: [LayoutDimension.Constant]) -> [[LayoutDimension.Solution]] {
    return lhs.map { $0.greaterThanOrEqual(to: rhs) }
}
// MARK: LayoutDimension <=> LayoutDimension.Coefficient

// MARK: - Equal

@discardableResult
public func .= (lhs: LayoutDimension, rhs: LayoutDimension.Coefficient) -> LayoutDimension.Solution {
    return lhs.equal(to: rhs)
}

@discardableResult
public func .= (lhs: LayoutDimension, rhs: [LayoutDimension.Coefficient]) -> [LayoutDimension.Solution] {
    return lhs.equal(to: rhs)
}

// MARK: - LessThanOrEqual

@discardableResult
public func ≤ (lhs: LayoutDimension, rhs: LayoutDimension.Coefficient) -> LayoutDimension.Solution {
    return lhs.lessThanOrEqual(to: rhs)
}

@discardableResult
public func ≤ (lhs: LayoutDimension, rhs: [LayoutDimension.Coefficient]) -> [LayoutDimension.Solution] {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: - GreaterThanOrEqual

@discardableResult
public func ≥ (lhs: LayoutDimension, rhs: LayoutDimension.Coefficient) -> LayoutDimension.Solution {
    return lhs.greaterThanOrEqual(to: rhs)
}

@discardableResult
public func ≥ (lhs: LayoutDimension, rhs: [LayoutDimension.Coefficient]) -> [LayoutDimension.Solution] {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: LayoutDimension Array <=> LayoutDimension.Coefficient

// MARK: - Equal

// MARK: Collection == Expression
@discardableResult
public func .= (lhs: [LayoutDimension], rhs: LayoutDimension.Coefficient) -> [LayoutDimension.Solution] {
    return lhs.map { $0.equal(to: rhs) }
}

// MARK: Collection == Expression Array
@discardableResult
public func .= (lhs: [LayoutDimension], rhs: [LayoutDimension.Coefficient]) -> [[LayoutDimension.Solution]] {
    return lhs.map { $0.equal(to: rhs) }
}

// MARK: - LessThanOrEqual

// MARK: Collection <= Expression
@discardableResult
public func ≤ (lhs: [LayoutDimension], rhs: LayoutDimension.Coefficient) -> [LayoutDimension.Solution] {
    return lhs.map { $0.lessThanOrEqual(to: rhs) }
}

// MARK: Collection <= Expression Array
@discardableResult
public func ≤ (lhs: [LayoutDimension], rhs: [LayoutDimension.Coefficient]) -> [[LayoutDimension.Solution]] {
    return lhs.map { $0.lessThanOrEqual(to: rhs) }
}

// MARK: - GreaterThanOrEqual

// MARK: Collection >= Expression
@discardableResult
public func ≥ (lhs: [LayoutDimension], rhs: LayoutDimension.Coefficient) -> [LayoutDimension.Solution] {
    return lhs.map { $0.greaterThanOrEqual(to: rhs) }
}

// MARK: Collection >= Expression Array
@discardableResult
public func ≥ (lhs: [LayoutDimension], rhs: [LayoutDimension.Coefficient]) -> [[LayoutDimension.Solution]] {
    return lhs.map { $0.greaterThanOrEqual(to: rhs) }
}
// MARK: LayoutDimension <=> LayoutDimension.Multiplier

// MARK: - Equal

@discardableResult
public func .= (lhs: LayoutDimension, rhs: LayoutDimension.Multiplier) -> LayoutDimension.Solution {
    return lhs.equal(to: rhs)
}

@discardableResult
public func .= (lhs: LayoutDimension, rhs: [LayoutDimension.Multiplier]) -> [LayoutDimension.Solution] {
    return lhs.equal(to: rhs)
}

// MARK: - LessThanOrEqual

@discardableResult
public func ≤ (lhs: LayoutDimension, rhs: LayoutDimension.Multiplier) -> LayoutDimension.Solution {
    return lhs.lessThanOrEqual(to: rhs)
}

@discardableResult
public func ≤ (lhs: LayoutDimension, rhs: [LayoutDimension.Multiplier]) -> [LayoutDimension.Solution] {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: - GreaterThanOrEqual

@discardableResult
public func ≥ (lhs: LayoutDimension, rhs: LayoutDimension.Multiplier) -> LayoutDimension.Solution {
    return lhs.greaterThanOrEqual(to: rhs)
}

@discardableResult
public func ≥ (lhs: LayoutDimension, rhs: [LayoutDimension.Multiplier]) -> [LayoutDimension.Solution] {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: LayoutDimension Array <=> LayoutDimension.Multiplier

// MARK: - Equal

// MARK: Collection == Expression
@discardableResult
public func .= (lhs: [LayoutDimension], rhs: LayoutDimension.Multiplier) -> [LayoutDimension.Solution] {
    return lhs.map { $0.equal(to: rhs) }
}

// MARK: Collection == Expression Array
@discardableResult
public func .= (lhs: [LayoutDimension], rhs: [LayoutDimension.Multiplier]) -> [[LayoutDimension.Solution]] {
    return lhs.map { $0.equal(to: rhs) }
}

// MARK: - LessThanOrEqual

// MARK: Collection <= Expression
@discardableResult
public func ≤ (lhs: [LayoutDimension], rhs: LayoutDimension.Multiplier) -> [LayoutDimension.Solution] {
    return lhs.map { $0.lessThanOrEqual(to: rhs) }
}

// MARK: Collection <= Expression Array
@discardableResult
public func ≤ (lhs: [LayoutDimension], rhs: [LayoutDimension.Multiplier]) -> [[LayoutDimension.Solution]] {
    return lhs.map { $0.lessThanOrEqual(to: rhs) }
}

// MARK: - GreaterThanOrEqual

// MARK: Collection >= Expression
@discardableResult
public func ≥ (lhs: [LayoutDimension], rhs: LayoutDimension.Multiplier) -> [LayoutDimension.Solution] {
    return lhs.map { $0.greaterThanOrEqual(to: rhs) }
}

// MARK: Collection >= Expression Array
@discardableResult
public func ≥ (lhs: [LayoutDimension], rhs: [LayoutDimension.Multiplier]) -> [[LayoutDimension.Solution]] {
    return lhs.map { $0.greaterThanOrEqual(to: rhs) }
}
