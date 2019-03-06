// Generated using Sourcery 0.15.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

//
//  Layman
//
//  Created by Brian Strobach on 1/22/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//
// MARK: XAxisAnchorPair <=> LayoutCoefficientTuple

// MARK: - Equal

@discardableResult
public func .= (lhs: XAxisAnchorPair, rhs: LayoutCoefficientTuple) -> XAxisAnchorPair.Solution {
    return lhs.equal(to: rhs)
}

// MARK: - LessThanOrEqual

@discardableResult
public func ≤ (lhs: XAxisAnchorPair, rhs: LayoutCoefficientTuple) -> XAxisAnchorPair.Solution {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: - GreaterThanOrEqual

@discardableResult
public func ≥ (lhs: XAxisAnchorPair, rhs: LayoutCoefficientTuple) -> XAxisAnchorPair.Solution {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: - InsetOrEqual
@discardableResult
public func ≥≤ (lhs: XAxisAnchorPair, rhs: LayoutCoefficientTuple) -> XAxisAnchorPair.Solution {
    return lhs.insetOrEqual(to: rhs)
}

// MARK: - OutsetOrEqual
@discardableResult
public func ≤≥ (lhs: XAxisAnchorPair, rhs: LayoutCoefficientTuple) -> XAxisAnchorPair.Solution {
    return lhs.outsetOrEqual(to: rhs)
}

// MARK: XAxisAnchorPair Array <=> LayoutCoefficientTuple

// MARK: - Equal

// MARK: Collection == Expression
@discardableResult
public func .= (lhs: [XAxisAnchorPair], rhs: LayoutCoefficientTuple) -> [XAxisAnchorPair.Solution] {
    return lhs.equal(to: rhs)
}

// MARK: - LessThanOrEqual

// MARK: Collection <= Expression
@discardableResult
public func ≤ (lhs: [XAxisAnchorPair], rhs: LayoutCoefficientTuple) -> [XAxisAnchorPair.Solution] {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: - GreaterThanOrEqual

// MARK: Collection >= Expression
@discardableResult
public func ≥ (lhs: [XAxisAnchorPair], rhs: LayoutCoefficientTuple) -> [XAxisAnchorPair.Solution] {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: - InsetOrEqual
@discardableResult
public func ≥≤ (lhs: [XAxisAnchorPair], rhs: LayoutCoefficientTuple) -> [XAxisAnchorPair.Solution] {
    return lhs.insetOrEqual(to: rhs)
}

// MARK: - OutsetOrEqual
@discardableResult
public func ≤≥ (lhs: [XAxisAnchorPair], rhs: LayoutCoefficientTuple) -> [XAxisAnchorPair.Solution] {
    return lhs.outsetOrEqual(to: rhs)
}
// MARK: XAxisAnchorPair <=> LayoutConstantTuple

// MARK: - Equal

@discardableResult
public func .= (lhs: XAxisAnchorPair, rhs: LayoutConstantTuple) -> XAxisAnchorPair.Solution {
    return lhs.equal(to: rhs)
}

// MARK: - LessThanOrEqual

@discardableResult
public func ≤ (lhs: XAxisAnchorPair, rhs: LayoutConstantTuple) -> XAxisAnchorPair.Solution {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: - GreaterThanOrEqual

@discardableResult
public func ≥ (lhs: XAxisAnchorPair, rhs: LayoutConstantTuple) -> XAxisAnchorPair.Solution {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: - InsetOrEqual
@discardableResult
public func ≥≤ (lhs: XAxisAnchorPair, rhs: LayoutConstantTuple) -> XAxisAnchorPair.Solution {
    return lhs.insetOrEqual(to: rhs)
}

// MARK: - OutsetOrEqual
@discardableResult
public func ≤≥ (lhs: XAxisAnchorPair, rhs: LayoutConstantTuple) -> XAxisAnchorPair.Solution {
    return lhs.outsetOrEqual(to: rhs)
}

// MARK: XAxisAnchorPair Array <=> LayoutConstantTuple

// MARK: - Equal

// MARK: Collection == Expression
@discardableResult
public func .= (lhs: [XAxisAnchorPair], rhs: LayoutConstantTuple) -> [XAxisAnchorPair.Solution] {
    return lhs.equal(to: rhs)
}

// MARK: - LessThanOrEqual

// MARK: Collection <= Expression
@discardableResult
public func ≤ (lhs: [XAxisAnchorPair], rhs: LayoutConstantTuple) -> [XAxisAnchorPair.Solution] {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: - GreaterThanOrEqual

// MARK: Collection >= Expression
@discardableResult
public func ≥ (lhs: [XAxisAnchorPair], rhs: LayoutConstantTuple) -> [XAxisAnchorPair.Solution] {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: - InsetOrEqual
@discardableResult
public func ≥≤ (lhs: [XAxisAnchorPair], rhs: LayoutConstantTuple) -> [XAxisAnchorPair.Solution] {
    return lhs.insetOrEqual(to: rhs)
}

// MARK: - OutsetOrEqual
@discardableResult
public func ≤≥ (lhs: [XAxisAnchorPair], rhs: LayoutConstantTuple) -> [XAxisAnchorPair.Solution] {
    return lhs.outsetOrEqual(to: rhs)
}
// MARK: XAxisAnchorPair <=> RelativeLayoutConstantTuple

// MARK: - Equal

@discardableResult
public func .= (lhs: XAxisAnchorPair, rhs: RelativeLayoutConstantTuple) -> XAxisAnchorPair.Solution {
    return lhs.equal(to: rhs)
}

// MARK: - LessThanOrEqual

@discardableResult
public func ≤ (lhs: XAxisAnchorPair, rhs: RelativeLayoutConstantTuple) -> XAxisAnchorPair.Solution {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: - GreaterThanOrEqual

@discardableResult
public func ≥ (lhs: XAxisAnchorPair, rhs: RelativeLayoutConstantTuple) -> XAxisAnchorPair.Solution {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: - InsetOrEqual
@discardableResult
public func ≥≤ (lhs: XAxisAnchorPair, rhs: RelativeLayoutConstantTuple) -> XAxisAnchorPair.Solution {
    return lhs.insetOrEqual(to: rhs)
}

// MARK: - OutsetOrEqual
@discardableResult
public func ≤≥ (lhs: XAxisAnchorPair, rhs: RelativeLayoutConstantTuple) -> XAxisAnchorPair.Solution {
    return lhs.outsetOrEqual(to: rhs)
}

// MARK: XAxisAnchorPair Array <=> RelativeLayoutConstantTuple

// MARK: - Equal

// MARK: Collection == Expression
@discardableResult
public func .= (lhs: [XAxisAnchorPair], rhs: RelativeLayoutConstantTuple) -> [XAxisAnchorPair.Solution] {
    return lhs.equal(to: rhs)
}

// MARK: - LessThanOrEqual

// MARK: Collection <= Expression
@discardableResult
public func ≤ (lhs: [XAxisAnchorPair], rhs: RelativeLayoutConstantTuple) -> [XAxisAnchorPair.Solution] {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: - GreaterThanOrEqual

// MARK: Collection >= Expression
@discardableResult
public func ≥ (lhs: [XAxisAnchorPair], rhs: RelativeLayoutConstantTuple) -> [XAxisAnchorPair.Solution] {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: - InsetOrEqual
@discardableResult
public func ≥≤ (lhs: [XAxisAnchorPair], rhs: RelativeLayoutConstantTuple) -> [XAxisAnchorPair.Solution] {
    return lhs.insetOrEqual(to: rhs)
}

// MARK: - OutsetOrEqual
@discardableResult
public func ≤≥ (lhs: [XAxisAnchorPair], rhs: RelativeLayoutConstantTuple) -> [XAxisAnchorPair.Solution] {
    return lhs.outsetOrEqual(to: rhs)
}
