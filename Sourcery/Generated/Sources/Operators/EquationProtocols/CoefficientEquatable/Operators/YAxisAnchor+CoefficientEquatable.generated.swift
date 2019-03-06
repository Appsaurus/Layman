// Generated using Sourcery 0.15.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

//
//  Layman
//
//  Created by Brian Strobach on 1/22/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//
// MARK: YAxisAnchor <=> LayoutConstant

// MARK: - Equal

@discardableResult
public func .= (lhs: YAxisAnchor, rhs: LayoutConstant) -> YAxisAnchor.Solution {
    return lhs.equal(to: rhs)
}

// MARK: - LessThanOrEqual

@discardableResult
public func ≤ (lhs: YAxisAnchor, rhs: LayoutConstant) -> YAxisAnchor.Solution {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: - GreaterThanOrEqual

@discardableResult
public func ≥ (lhs: YAxisAnchor, rhs: LayoutConstant) -> YAxisAnchor.Solution {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: - InsetOrEqual
@discardableResult
public func ≥≤ (lhs: YAxisAnchor, rhs: LayoutConstant) -> YAxisAnchor.Solution {
    return lhs.insetOrEqual(to: rhs)
}

// MARK: - OutsetOrEqual
@discardableResult
public func ≤≥ (lhs: YAxisAnchor, rhs: LayoutConstant) -> YAxisAnchor.Solution {
    return lhs.outsetOrEqual(to: rhs)
}

// MARK: YAxisAnchor Array <=> LayoutConstant

// MARK: - Equal

// MARK: Collection == Expression
@discardableResult
public func .= (lhs: [YAxisAnchor], rhs: LayoutConstant) -> [YAxisAnchor.Solution] {
    return lhs.equal(to: rhs)
}

// MARK: - LessThanOrEqual

// MARK: Collection <= Expression
@discardableResult
public func ≤ (lhs: [YAxisAnchor], rhs: LayoutConstant) -> [YAxisAnchor.Solution] {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: - GreaterThanOrEqual

// MARK: Collection >= Expression
@discardableResult
public func ≥ (lhs: [YAxisAnchor], rhs: LayoutConstant) -> [YAxisAnchor.Solution] {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: - InsetOrEqual
@discardableResult
public func ≥≤ (lhs: [YAxisAnchor], rhs: LayoutConstant) -> [YAxisAnchor.Solution] {
    return lhs.insetOrEqual(to: rhs)
}

// MARK: - OutsetOrEqual
@discardableResult
public func ≤≥ (lhs: [YAxisAnchor], rhs: LayoutConstant) -> [YAxisAnchor.Solution] {
    return lhs.outsetOrEqual(to: rhs)
}
// MARK: YAxisAnchor <=> LayoutCoefficient

// MARK: - Equal

@discardableResult
public func .= (lhs: YAxisAnchor, rhs: LayoutCoefficient) -> YAxisAnchor.Solution {
    return lhs.equal(to: rhs)
}

// MARK: - LessThanOrEqual

@discardableResult
public func ≤ (lhs: YAxisAnchor, rhs: LayoutCoefficient) -> YAxisAnchor.Solution {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: - GreaterThanOrEqual

@discardableResult
public func ≥ (lhs: YAxisAnchor, rhs: LayoutCoefficient) -> YAxisAnchor.Solution {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: - InsetOrEqual
@discardableResult
public func ≥≤ (lhs: YAxisAnchor, rhs: LayoutCoefficient) -> YAxisAnchor.Solution {
    return lhs.insetOrEqual(to: rhs)
}

// MARK: - OutsetOrEqual
@discardableResult
public func ≤≥ (lhs: YAxisAnchor, rhs: LayoutCoefficient) -> YAxisAnchor.Solution {
    return lhs.outsetOrEqual(to: rhs)
}

// MARK: YAxisAnchor Array <=> LayoutCoefficient

// MARK: - Equal

// MARK: Collection == Expression
@discardableResult
public func .= (lhs: [YAxisAnchor], rhs: LayoutCoefficient) -> [YAxisAnchor.Solution] {
    return lhs.equal(to: rhs)
}

// MARK: - LessThanOrEqual

// MARK: Collection <= Expression
@discardableResult
public func ≤ (lhs: [YAxisAnchor], rhs: LayoutCoefficient) -> [YAxisAnchor.Solution] {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: - GreaterThanOrEqual

// MARK: Collection >= Expression
@discardableResult
public func ≥ (lhs: [YAxisAnchor], rhs: LayoutCoefficient) -> [YAxisAnchor.Solution] {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: - InsetOrEqual
@discardableResult
public func ≥≤ (lhs: [YAxisAnchor], rhs: LayoutCoefficient) -> [YAxisAnchor.Solution] {
    return lhs.insetOrEqual(to: rhs)
}

// MARK: - OutsetOrEqual
@discardableResult
public func ≤≥ (lhs: [YAxisAnchor], rhs: LayoutCoefficient) -> [YAxisAnchor.Solution] {
    return lhs.outsetOrEqual(to: rhs)
}
// MARK: YAxisAnchor <=> LayoutMultiplier

// MARK: - Equal

@discardableResult
public func .= (lhs: YAxisAnchor, rhs: LayoutMultiplier) -> YAxisAnchor.Solution {
    return lhs.equal(to: rhs)
}

// MARK: - LessThanOrEqual

@discardableResult
public func ≤ (lhs: YAxisAnchor, rhs: LayoutMultiplier) -> YAxisAnchor.Solution {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: - GreaterThanOrEqual

@discardableResult
public func ≥ (lhs: YAxisAnchor, rhs: LayoutMultiplier) -> YAxisAnchor.Solution {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: - InsetOrEqual
@discardableResult
public func ≥≤ (lhs: YAxisAnchor, rhs: LayoutMultiplier) -> YAxisAnchor.Solution {
    return lhs.insetOrEqual(to: rhs)
}

// MARK: - OutsetOrEqual
@discardableResult
public func ≤≥ (lhs: YAxisAnchor, rhs: LayoutMultiplier) -> YAxisAnchor.Solution {
    return lhs.outsetOrEqual(to: rhs)
}

// MARK: YAxisAnchor Array <=> LayoutMultiplier

// MARK: - Equal

// MARK: Collection == Expression
@discardableResult
public func .= (lhs: [YAxisAnchor], rhs: LayoutMultiplier) -> [YAxisAnchor.Solution] {
    return lhs.equal(to: rhs)
}

// MARK: - LessThanOrEqual

// MARK: Collection <= Expression
@discardableResult
public func ≤ (lhs: [YAxisAnchor], rhs: LayoutMultiplier) -> [YAxisAnchor.Solution] {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: - GreaterThanOrEqual

// MARK: Collection >= Expression
@discardableResult
public func ≥ (lhs: [YAxisAnchor], rhs: LayoutMultiplier) -> [YAxisAnchor.Solution] {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: - InsetOrEqual
@discardableResult
public func ≥≤ (lhs: [YAxisAnchor], rhs: LayoutMultiplier) -> [YAxisAnchor.Solution] {
    return lhs.insetOrEqual(to: rhs)
}

// MARK: - OutsetOrEqual
@discardableResult
public func ≤≥ (lhs: [YAxisAnchor], rhs: LayoutMultiplier) -> [YAxisAnchor.Solution] {
    return lhs.outsetOrEqual(to: rhs)
}
// MARK: YAxisAnchor <=> RelativeLayoutConstant

// MARK: - Equal

@discardableResult
public func .= (lhs: YAxisAnchor, rhs: RelativeLayoutConstant) -> YAxisAnchor.Solution {
    return lhs.equal(to: rhs)
}

// MARK: - LessThanOrEqual

@discardableResult
public func ≤ (lhs: YAxisAnchor, rhs: RelativeLayoutConstant) -> YAxisAnchor.Solution {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: - GreaterThanOrEqual

@discardableResult
public func ≥ (lhs: YAxisAnchor, rhs: RelativeLayoutConstant) -> YAxisAnchor.Solution {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: - InsetOrEqual
@discardableResult
public func ≥≤ (lhs: YAxisAnchor, rhs: RelativeLayoutConstant) -> YAxisAnchor.Solution {
    return lhs.insetOrEqual(to: rhs)
}

// MARK: - OutsetOrEqual
@discardableResult
public func ≤≥ (lhs: YAxisAnchor, rhs: RelativeLayoutConstant) -> YAxisAnchor.Solution {
    return lhs.outsetOrEqual(to: rhs)
}

// MARK: YAxisAnchor Array <=> RelativeLayoutConstant

// MARK: - Equal

// MARK: Collection == Expression
@discardableResult
public func .= (lhs: [YAxisAnchor], rhs: RelativeLayoutConstant) -> [YAxisAnchor.Solution] {
    return lhs.equal(to: rhs)
}

// MARK: - LessThanOrEqual

// MARK: Collection <= Expression
@discardableResult
public func ≤ (lhs: [YAxisAnchor], rhs: RelativeLayoutConstant) -> [YAxisAnchor.Solution] {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: - GreaterThanOrEqual

// MARK: Collection >= Expression
@discardableResult
public func ≥ (lhs: [YAxisAnchor], rhs: RelativeLayoutConstant) -> [YAxisAnchor.Solution] {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: - InsetOrEqual
@discardableResult
public func ≥≤ (lhs: [YAxisAnchor], rhs: RelativeLayoutConstant) -> [YAxisAnchor.Solution] {
    return lhs.insetOrEqual(to: rhs)
}

// MARK: - OutsetOrEqual
@discardableResult
public func ≤≥ (lhs: [YAxisAnchor], rhs: RelativeLayoutConstant) -> [YAxisAnchor.Solution] {
    return lhs.outsetOrEqual(to: rhs)
}
