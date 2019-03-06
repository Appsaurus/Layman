// Generated using Sourcery 0.15.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

//
//  Layman
//
//  Created by Brian Strobach on 1/22/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//
// MARK: LayoutDimension <=> LayoutConstant

// MARK: - Equal

@discardableResult
public func .= (lhs: LayoutDimension, rhs: LayoutConstant) -> LayoutDimension.Solution {
    return lhs.equal(to: rhs)
}

// MARK: - LessThanOrEqual

@discardableResult
public func ≤ (lhs: LayoutDimension, rhs: LayoutConstant) -> LayoutDimension.Solution {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: - GreaterThanOrEqual

@discardableResult
public func ≥ (lhs: LayoutDimension, rhs: LayoutConstant) -> LayoutDimension.Solution {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: - InsetOrEqual
@discardableResult
public func ≥≤ (lhs: LayoutDimension, rhs: LayoutConstant) -> LayoutDimension.Solution {
    return lhs.insetOrEqual(to: rhs)
}

// MARK: - OutsetOrEqual
@discardableResult
public func ≤≥ (lhs: LayoutDimension, rhs: LayoutConstant) -> LayoutDimension.Solution {
    return lhs.outsetOrEqual(to: rhs)
}

// MARK: LayoutDimension Array <=> LayoutConstant

// MARK: - Equal

// MARK: Collection == Expression
@discardableResult
public func .= (lhs: [LayoutDimension], rhs: LayoutConstant) -> [LayoutDimension.Solution] {
    return lhs.equal(to: rhs)
}

// MARK: - LessThanOrEqual

// MARK: Collection <= Expression
@discardableResult
public func ≤ (lhs: [LayoutDimension], rhs: LayoutConstant) -> [LayoutDimension.Solution] {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: - GreaterThanOrEqual

// MARK: Collection >= Expression
@discardableResult
public func ≥ (lhs: [LayoutDimension], rhs: LayoutConstant) -> [LayoutDimension.Solution] {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: - InsetOrEqual
@discardableResult
public func ≥≤ (lhs: [LayoutDimension], rhs: LayoutConstant) -> [LayoutDimension.Solution] {
    return lhs.insetOrEqual(to: rhs)
}

// MARK: - OutsetOrEqual
@discardableResult
public func ≤≥ (lhs: [LayoutDimension], rhs: LayoutConstant) -> [LayoutDimension.Solution] {
    return lhs.outsetOrEqual(to: rhs)
}
// MARK: LayoutDimension <=> LayoutCoefficient

// MARK: - Equal

@discardableResult
public func .= (lhs: LayoutDimension, rhs: LayoutCoefficient) -> LayoutDimension.Solution {
    return lhs.equal(to: rhs)
}

// MARK: - LessThanOrEqual

@discardableResult
public func ≤ (lhs: LayoutDimension, rhs: LayoutCoefficient) -> LayoutDimension.Solution {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: - GreaterThanOrEqual

@discardableResult
public func ≥ (lhs: LayoutDimension, rhs: LayoutCoefficient) -> LayoutDimension.Solution {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: - InsetOrEqual
@discardableResult
public func ≥≤ (lhs: LayoutDimension, rhs: LayoutCoefficient) -> LayoutDimension.Solution {
    return lhs.insetOrEqual(to: rhs)
}

// MARK: - OutsetOrEqual
@discardableResult
public func ≤≥ (lhs: LayoutDimension, rhs: LayoutCoefficient) -> LayoutDimension.Solution {
    return lhs.outsetOrEqual(to: rhs)
}

// MARK: LayoutDimension Array <=> LayoutCoefficient

// MARK: - Equal

// MARK: Collection == Expression
@discardableResult
public func .= (lhs: [LayoutDimension], rhs: LayoutCoefficient) -> [LayoutDimension.Solution] {
    return lhs.equal(to: rhs)
}

// MARK: - LessThanOrEqual

// MARK: Collection <= Expression
@discardableResult
public func ≤ (lhs: [LayoutDimension], rhs: LayoutCoefficient) -> [LayoutDimension.Solution] {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: - GreaterThanOrEqual

// MARK: Collection >= Expression
@discardableResult
public func ≥ (lhs: [LayoutDimension], rhs: LayoutCoefficient) -> [LayoutDimension.Solution] {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: - InsetOrEqual
@discardableResult
public func ≥≤ (lhs: [LayoutDimension], rhs: LayoutCoefficient) -> [LayoutDimension.Solution] {
    return lhs.insetOrEqual(to: rhs)
}

// MARK: - OutsetOrEqual
@discardableResult
public func ≤≥ (lhs: [LayoutDimension], rhs: LayoutCoefficient) -> [LayoutDimension.Solution] {
    return lhs.outsetOrEqual(to: rhs)
}
// MARK: LayoutDimension <=> LayoutMultiplier

// MARK: - Equal

@discardableResult
public func .= (lhs: LayoutDimension, rhs: LayoutMultiplier) -> LayoutDimension.Solution {
    return lhs.equal(to: rhs)
}

// MARK: - LessThanOrEqual

@discardableResult
public func ≤ (lhs: LayoutDimension, rhs: LayoutMultiplier) -> LayoutDimension.Solution {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: - GreaterThanOrEqual

@discardableResult
public func ≥ (lhs: LayoutDimension, rhs: LayoutMultiplier) -> LayoutDimension.Solution {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: - InsetOrEqual
@discardableResult
public func ≥≤ (lhs: LayoutDimension, rhs: LayoutMultiplier) -> LayoutDimension.Solution {
    return lhs.insetOrEqual(to: rhs)
}

// MARK: - OutsetOrEqual
@discardableResult
public func ≤≥ (lhs: LayoutDimension, rhs: LayoutMultiplier) -> LayoutDimension.Solution {
    return lhs.outsetOrEqual(to: rhs)
}

// MARK: LayoutDimension Array <=> LayoutMultiplier

// MARK: - Equal

// MARK: Collection == Expression
@discardableResult
public func .= (lhs: [LayoutDimension], rhs: LayoutMultiplier) -> [LayoutDimension.Solution] {
    return lhs.equal(to: rhs)
}

// MARK: - LessThanOrEqual

// MARK: Collection <= Expression
@discardableResult
public func ≤ (lhs: [LayoutDimension], rhs: LayoutMultiplier) -> [LayoutDimension.Solution] {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: - GreaterThanOrEqual

// MARK: Collection >= Expression
@discardableResult
public func ≥ (lhs: [LayoutDimension], rhs: LayoutMultiplier) -> [LayoutDimension.Solution] {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: - InsetOrEqual
@discardableResult
public func ≥≤ (lhs: [LayoutDimension], rhs: LayoutMultiplier) -> [LayoutDimension.Solution] {
    return lhs.insetOrEqual(to: rhs)
}

// MARK: - OutsetOrEqual
@discardableResult
public func ≤≥ (lhs: [LayoutDimension], rhs: LayoutMultiplier) -> [LayoutDimension.Solution] {
    return lhs.outsetOrEqual(to: rhs)
}
// MARK: LayoutDimension <=> RelativeLayoutConstant

// MARK: - Equal

@discardableResult
public func .= (lhs: LayoutDimension, rhs: RelativeLayoutConstant) -> LayoutDimension.Solution {
    return lhs.equal(to: rhs)
}

// MARK: - LessThanOrEqual

@discardableResult
public func ≤ (lhs: LayoutDimension, rhs: RelativeLayoutConstant) -> LayoutDimension.Solution {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: - GreaterThanOrEqual

@discardableResult
public func ≥ (lhs: LayoutDimension, rhs: RelativeLayoutConstant) -> LayoutDimension.Solution {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: - InsetOrEqual
@discardableResult
public func ≥≤ (lhs: LayoutDimension, rhs: RelativeLayoutConstant) -> LayoutDimension.Solution {
    return lhs.insetOrEqual(to: rhs)
}

// MARK: - OutsetOrEqual
@discardableResult
public func ≤≥ (lhs: LayoutDimension, rhs: RelativeLayoutConstant) -> LayoutDimension.Solution {
    return lhs.outsetOrEqual(to: rhs)
}

// MARK: LayoutDimension Array <=> RelativeLayoutConstant

// MARK: - Equal

// MARK: Collection == Expression
@discardableResult
public func .= (lhs: [LayoutDimension], rhs: RelativeLayoutConstant) -> [LayoutDimension.Solution] {
    return lhs.equal(to: rhs)
}

// MARK: - LessThanOrEqual

// MARK: Collection <= Expression
@discardableResult
public func ≤ (lhs: [LayoutDimension], rhs: RelativeLayoutConstant) -> [LayoutDimension.Solution] {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: - GreaterThanOrEqual

// MARK: Collection >= Expression
@discardableResult
public func ≥ (lhs: [LayoutDimension], rhs: RelativeLayoutConstant) -> [LayoutDimension.Solution] {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: - InsetOrEqual
@discardableResult
public func ≥≤ (lhs: [LayoutDimension], rhs: RelativeLayoutConstant) -> [LayoutDimension.Solution] {
    return lhs.insetOrEqual(to: rhs)
}

// MARK: - OutsetOrEqual
@discardableResult
public func ≤≥ (lhs: [LayoutDimension], rhs: RelativeLayoutConstant) -> [LayoutDimension.Solution] {
    return lhs.outsetOrEqual(to: rhs)
}
