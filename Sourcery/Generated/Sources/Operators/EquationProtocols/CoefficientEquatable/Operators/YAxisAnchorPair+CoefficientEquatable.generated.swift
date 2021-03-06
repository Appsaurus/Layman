// Generated using Sourcery 0.15.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

//
//  Layman
//
//  Created by Brian Strobach on 1/22/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//
// MARK: YAxisAnchorPair <=> LayoutConstant

// MARK: - Equal

@discardableResult
public func .= (lhs: YAxisAnchorPair, rhs: LayoutConstant) -> YAxisAnchorPair.Solution {
    return lhs.equal(to: rhs)
}

// MARK: - LessThanOrEqual

@discardableResult
public func ≤ (lhs: YAxisAnchorPair, rhs: LayoutConstant) -> YAxisAnchorPair.Solution {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: - GreaterThanOrEqual

@discardableResult
public func ≥ (lhs: YAxisAnchorPair, rhs: LayoutConstant) -> YAxisAnchorPair.Solution {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: - InsetOrEqual
@discardableResult
public func ≥≤ (lhs: YAxisAnchorPair, rhs: LayoutConstant) -> YAxisAnchorPair.Solution {
    return lhs.insetOrEqual(to: rhs)
}

// MARK: - OutsetOrEqual
@discardableResult
public func ≤≥ (lhs: YAxisAnchorPair, rhs: LayoutConstant) -> YAxisAnchorPair.Solution {
    return lhs.outsetOrEqual(to: rhs)
}

// MARK: YAxisAnchorPair Array <=> LayoutConstant

// MARK: - Equal

// MARK: Collection == Expression
@discardableResult
public func .= (lhs: [YAxisAnchorPair], rhs: LayoutConstant) -> [YAxisAnchorPair.Solution] {
    return lhs.equal(to: rhs)
}

// MARK: - LessThanOrEqual

// MARK: Collection <= Expression
@discardableResult
public func ≤ (lhs: [YAxisAnchorPair], rhs: LayoutConstant) -> [YAxisAnchorPair.Solution] {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: - GreaterThanOrEqual

// MARK: Collection >= Expression
@discardableResult
public func ≥ (lhs: [YAxisAnchorPair], rhs: LayoutConstant) -> [YAxisAnchorPair.Solution] {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: - InsetOrEqual
@discardableResult
public func ≥≤ (lhs: [YAxisAnchorPair], rhs: LayoutConstant) -> [YAxisAnchorPair.Solution] {
    return lhs.insetOrEqual(to: rhs)
}

// MARK: - OutsetOrEqual
@discardableResult
public func ≤≥ (lhs: [YAxisAnchorPair], rhs: LayoutConstant) -> [YAxisAnchorPair.Solution] {
    return lhs.outsetOrEqual(to: rhs)
}
// MARK: YAxisAnchorPair <=> LayoutCoefficient

// MARK: - Equal

@discardableResult
public func .= (lhs: YAxisAnchorPair, rhs: LayoutCoefficient) -> YAxisAnchorPair.Solution {
    return lhs.equal(to: rhs)
}

// MARK: - LessThanOrEqual

@discardableResult
public func ≤ (lhs: YAxisAnchorPair, rhs: LayoutCoefficient) -> YAxisAnchorPair.Solution {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: - GreaterThanOrEqual

@discardableResult
public func ≥ (lhs: YAxisAnchorPair, rhs: LayoutCoefficient) -> YAxisAnchorPair.Solution {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: - InsetOrEqual
@discardableResult
public func ≥≤ (lhs: YAxisAnchorPair, rhs: LayoutCoefficient) -> YAxisAnchorPair.Solution {
    return lhs.insetOrEqual(to: rhs)
}

// MARK: - OutsetOrEqual
@discardableResult
public func ≤≥ (lhs: YAxisAnchorPair, rhs: LayoutCoefficient) -> YAxisAnchorPair.Solution {
    return lhs.outsetOrEqual(to: rhs)
}

// MARK: YAxisAnchorPair Array <=> LayoutCoefficient

// MARK: - Equal

// MARK: Collection == Expression
@discardableResult
public func .= (lhs: [YAxisAnchorPair], rhs: LayoutCoefficient) -> [YAxisAnchorPair.Solution] {
    return lhs.equal(to: rhs)
}

// MARK: - LessThanOrEqual

// MARK: Collection <= Expression
@discardableResult
public func ≤ (lhs: [YAxisAnchorPair], rhs: LayoutCoefficient) -> [YAxisAnchorPair.Solution] {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: - GreaterThanOrEqual

// MARK: Collection >= Expression
@discardableResult
public func ≥ (lhs: [YAxisAnchorPair], rhs: LayoutCoefficient) -> [YAxisAnchorPair.Solution] {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: - InsetOrEqual
@discardableResult
public func ≥≤ (lhs: [YAxisAnchorPair], rhs: LayoutCoefficient) -> [YAxisAnchorPair.Solution] {
    return lhs.insetOrEqual(to: rhs)
}

// MARK: - OutsetOrEqual
@discardableResult
public func ≤≥ (lhs: [YAxisAnchorPair], rhs: LayoutCoefficient) -> [YAxisAnchorPair.Solution] {
    return lhs.outsetOrEqual(to: rhs)
}
// MARK: YAxisAnchorPair <=> LayoutMultiplier

// MARK: - Equal

@discardableResult
public func .= (lhs: YAxisAnchorPair, rhs: LayoutMultiplier) -> YAxisAnchorPair.Solution {
    return lhs.equal(to: rhs)
}

// MARK: - LessThanOrEqual

@discardableResult
public func ≤ (lhs: YAxisAnchorPair, rhs: LayoutMultiplier) -> YAxisAnchorPair.Solution {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: - GreaterThanOrEqual

@discardableResult
public func ≥ (lhs: YAxisAnchorPair, rhs: LayoutMultiplier) -> YAxisAnchorPair.Solution {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: - InsetOrEqual
@discardableResult
public func ≥≤ (lhs: YAxisAnchorPair, rhs: LayoutMultiplier) -> YAxisAnchorPair.Solution {
    return lhs.insetOrEqual(to: rhs)
}

// MARK: - OutsetOrEqual
@discardableResult
public func ≤≥ (lhs: YAxisAnchorPair, rhs: LayoutMultiplier) -> YAxisAnchorPair.Solution {
    return lhs.outsetOrEqual(to: rhs)
}

// MARK: YAxisAnchorPair Array <=> LayoutMultiplier

// MARK: - Equal

// MARK: Collection == Expression
@discardableResult
public func .= (lhs: [YAxisAnchorPair], rhs: LayoutMultiplier) -> [YAxisAnchorPair.Solution] {
    return lhs.equal(to: rhs)
}

// MARK: - LessThanOrEqual

// MARK: Collection <= Expression
@discardableResult
public func ≤ (lhs: [YAxisAnchorPair], rhs: LayoutMultiplier) -> [YAxisAnchorPair.Solution] {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: - GreaterThanOrEqual

// MARK: Collection >= Expression
@discardableResult
public func ≥ (lhs: [YAxisAnchorPair], rhs: LayoutMultiplier) -> [YAxisAnchorPair.Solution] {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: - InsetOrEqual
@discardableResult
public func ≥≤ (lhs: [YAxisAnchorPair], rhs: LayoutMultiplier) -> [YAxisAnchorPair.Solution] {
    return lhs.insetOrEqual(to: rhs)
}

// MARK: - OutsetOrEqual
@discardableResult
public func ≤≥ (lhs: [YAxisAnchorPair], rhs: LayoutMultiplier) -> [YAxisAnchorPair.Solution] {
    return lhs.outsetOrEqual(to: rhs)
}
// MARK: YAxisAnchorPair <=> RelativeLayoutConstant

// MARK: - Equal

@discardableResult
public func .= (lhs: YAxisAnchorPair, rhs: RelativeLayoutConstant) -> YAxisAnchorPair.Solution {
    return lhs.equal(to: rhs)
}

// MARK: - LessThanOrEqual

@discardableResult
public func ≤ (lhs: YAxisAnchorPair, rhs: RelativeLayoutConstant) -> YAxisAnchorPair.Solution {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: - GreaterThanOrEqual

@discardableResult
public func ≥ (lhs: YAxisAnchorPair, rhs: RelativeLayoutConstant) -> YAxisAnchorPair.Solution {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: - InsetOrEqual
@discardableResult
public func ≥≤ (lhs: YAxisAnchorPair, rhs: RelativeLayoutConstant) -> YAxisAnchorPair.Solution {
    return lhs.insetOrEqual(to: rhs)
}

// MARK: - OutsetOrEqual
@discardableResult
public func ≤≥ (lhs: YAxisAnchorPair, rhs: RelativeLayoutConstant) -> YAxisAnchorPair.Solution {
    return lhs.outsetOrEqual(to: rhs)
}

// MARK: YAxisAnchorPair Array <=> RelativeLayoutConstant

// MARK: - Equal

// MARK: Collection == Expression
@discardableResult
public func .= (lhs: [YAxisAnchorPair], rhs: RelativeLayoutConstant) -> [YAxisAnchorPair.Solution] {
    return lhs.equal(to: rhs)
}

// MARK: - LessThanOrEqual

// MARK: Collection <= Expression
@discardableResult
public func ≤ (lhs: [YAxisAnchorPair], rhs: RelativeLayoutConstant) -> [YAxisAnchorPair.Solution] {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: - GreaterThanOrEqual

// MARK: Collection >= Expression
@discardableResult
public func ≥ (lhs: [YAxisAnchorPair], rhs: RelativeLayoutConstant) -> [YAxisAnchorPair.Solution] {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: - InsetOrEqual
@discardableResult
public func ≥≤ (lhs: [YAxisAnchorPair], rhs: RelativeLayoutConstant) -> [YAxisAnchorPair.Solution] {
    return lhs.insetOrEqual(to: rhs)
}

// MARK: - OutsetOrEqual
@discardableResult
public func ≤≥ (lhs: [YAxisAnchorPair], rhs: RelativeLayoutConstant) -> [YAxisAnchorPair.Solution] {
    return lhs.outsetOrEqual(to: rhs)
}
