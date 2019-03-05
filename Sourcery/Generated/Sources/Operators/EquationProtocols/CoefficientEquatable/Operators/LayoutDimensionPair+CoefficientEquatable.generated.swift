// Generated using Sourcery 0.15.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

//
//  Layman
//
//  Created by Brian Strobach on 1/22/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//
// MARK: LayoutDimensionPair <=> LayoutConstant

// MARK: - Equal

@discardableResult
public func .= (lhs: LayoutDimensionPair, rhs: LayoutConstant) -> LayoutDimensionPair.Solution {
    return lhs.equal(to: rhs)
}

// MARK: - LessThanOrEqual

@discardableResult
public func ≤ (lhs: LayoutDimensionPair, rhs: LayoutConstant) -> LayoutDimensionPair.Solution {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: - GreaterThanOrEqual

@discardableResult
public func ≥ (lhs: LayoutDimensionPair, rhs: LayoutConstant) -> LayoutDimensionPair.Solution {
    return lhs.greaterThanOrEqual(to: rhs)
}
// MARK: LayoutDimensionPair Array <=> LayoutConstant

// MARK: - Equal

// MARK: Collection == Expression
@discardableResult
public func .= (lhs: [LayoutDimensionPair], rhs: LayoutConstant) -> [LayoutDimensionPair.Solution] {
    return lhs.equal(to: rhs)
}

// MARK: - LessThanOrEqual

// MARK: Collection <= Expression
@discardableResult
public func ≤ (lhs: [LayoutDimensionPair], rhs: LayoutConstant) -> [LayoutDimensionPair.Solution] {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: - GreaterThanOrEqual

// MARK: Collection >= Expression
@discardableResult
public func ≥ (lhs: [LayoutDimensionPair], rhs: LayoutConstant) -> [LayoutDimensionPair.Solution] {
    return lhs.greaterThanOrEqual(to: rhs)
}
// MARK: LayoutDimensionPair <=> LayoutCoefficient

// MARK: - Equal

@discardableResult
public func .= (lhs: LayoutDimensionPair, rhs: LayoutCoefficient) -> LayoutDimensionPair.Solution {
    return lhs.equal(to: rhs)
}

// MARK: - LessThanOrEqual

@discardableResult
public func ≤ (lhs: LayoutDimensionPair, rhs: LayoutCoefficient) -> LayoutDimensionPair.Solution {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: - GreaterThanOrEqual

@discardableResult
public func ≥ (lhs: LayoutDimensionPair, rhs: LayoutCoefficient) -> LayoutDimensionPair.Solution {
    return lhs.greaterThanOrEqual(to: rhs)
}
// MARK: LayoutDimensionPair Array <=> LayoutCoefficient

// MARK: - Equal

// MARK: Collection == Expression
@discardableResult
public func .= (lhs: [LayoutDimensionPair], rhs: LayoutCoefficient) -> [LayoutDimensionPair.Solution] {
    return lhs.equal(to: rhs)
}

// MARK: - LessThanOrEqual

// MARK: Collection <= Expression
@discardableResult
public func ≤ (lhs: [LayoutDimensionPair], rhs: LayoutCoefficient) -> [LayoutDimensionPair.Solution] {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: - GreaterThanOrEqual

// MARK: Collection >= Expression
@discardableResult
public func ≥ (lhs: [LayoutDimensionPair], rhs: LayoutCoefficient) -> [LayoutDimensionPair.Solution] {
    return lhs.greaterThanOrEqual(to: rhs)
}
// MARK: LayoutDimensionPair <=> LayoutMultiplier

// MARK: - Equal

@discardableResult
public func .= (lhs: LayoutDimensionPair, rhs: LayoutMultiplier) -> LayoutDimensionPair.Solution {
    return lhs.equal(to: rhs)
}

// MARK: - LessThanOrEqual

@discardableResult
public func ≤ (lhs: LayoutDimensionPair, rhs: LayoutMultiplier) -> LayoutDimensionPair.Solution {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: - GreaterThanOrEqual

@discardableResult
public func ≥ (lhs: LayoutDimensionPair, rhs: LayoutMultiplier) -> LayoutDimensionPair.Solution {
    return lhs.greaterThanOrEqual(to: rhs)
}
// MARK: LayoutDimensionPair Array <=> LayoutMultiplier

// MARK: - Equal

// MARK: Collection == Expression
@discardableResult
public func .= (lhs: [LayoutDimensionPair], rhs: LayoutMultiplier) -> [LayoutDimensionPair.Solution] {
    return lhs.equal(to: rhs)
}

// MARK: - LessThanOrEqual

// MARK: Collection <= Expression
@discardableResult
public func ≤ (lhs: [LayoutDimensionPair], rhs: LayoutMultiplier) -> [LayoutDimensionPair.Solution] {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: - GreaterThanOrEqual

// MARK: Collection >= Expression
@discardableResult
public func ≥ (lhs: [LayoutDimensionPair], rhs: LayoutMultiplier) -> [LayoutDimensionPair.Solution] {
    return lhs.greaterThanOrEqual(to: rhs)
}
// MARK: LayoutDimensionPair <=> RelativeLayoutConstant

// MARK: - Equal

@discardableResult
public func .= (lhs: LayoutDimensionPair, rhs: RelativeLayoutConstant) -> LayoutDimensionPair.Solution {
    return lhs.equal(to: rhs)
}

// MARK: - LessThanOrEqual

@discardableResult
public func ≤ (lhs: LayoutDimensionPair, rhs: RelativeLayoutConstant) -> LayoutDimensionPair.Solution {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: - GreaterThanOrEqual

@discardableResult
public func ≥ (lhs: LayoutDimensionPair, rhs: RelativeLayoutConstant) -> LayoutDimensionPair.Solution {
    return lhs.greaterThanOrEqual(to: rhs)
}
// MARK: LayoutDimensionPair Array <=> RelativeLayoutConstant

// MARK: - Equal

// MARK: Collection == Expression
@discardableResult
public func .= (lhs: [LayoutDimensionPair], rhs: RelativeLayoutConstant) -> [LayoutDimensionPair.Solution] {
    return lhs.equal(to: rhs)
}

// MARK: - LessThanOrEqual

// MARK: Collection <= Expression
@discardableResult
public func ≤ (lhs: [LayoutDimensionPair], rhs: RelativeLayoutConstant) -> [LayoutDimensionPair.Solution] {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: - GreaterThanOrEqual

// MARK: Collection >= Expression
@discardableResult
public func ≥ (lhs: [LayoutDimensionPair], rhs: RelativeLayoutConstant) -> [LayoutDimensionPair.Solution] {
    return lhs.greaterThanOrEqual(to: rhs)
}
