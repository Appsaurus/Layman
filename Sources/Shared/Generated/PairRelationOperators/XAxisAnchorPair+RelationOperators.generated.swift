// Generated using Sourcery 0.15.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

//
//  +RelationOperators.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/4/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

// NOTE: Paired edge constraints are inverted as insets because it is more common and easier
// to reason about layouts in terms of insets from edges rather than shifted value offsets.

// MARK: Equal
// MARK: Anchors == Expression
@discardableResult
public func == (lhs: XAxisAnchorPair, rhs: XAxisAnchorPairExpression) -> ConstraintPair {
    return lhs.equal(to: rhs)
}

// MARK: Anchors == Anchors
@discardableResult
public func == (lhs: XAxisAnchorPair, rhs: XAxisAnchorPair) -> ConstraintPair {
    return lhs.equal(to: rhs)
}

// MARK: LessThanOrEqual
// MARK: Anchors <= Expression
@discardableResult
public func <= (lhs: XAxisAnchorPair, rhs: XAxisAnchorPairExpression) -> ConstraintPair {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: Anchors <= Anchors
@discardableResult
public func <= (lhs: XAxisAnchorPair, rhs: XAxisAnchorPair) -> ConstraintPair {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: GreaterThanOrEqual
// MARK: Anchors >= Expression
@discardableResult
public func >= (lhs: XAxisAnchorPair, rhs: XAxisAnchorPairExpression) -> ConstraintPair {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: Anchors >= Anchors
@discardableResult
public func >= (lhs: XAxisAnchorPair, rhs: XAxisAnchorPair) -> ConstraintPair {
    return lhs.greaterThanOrEqual(to: rhs)
}
