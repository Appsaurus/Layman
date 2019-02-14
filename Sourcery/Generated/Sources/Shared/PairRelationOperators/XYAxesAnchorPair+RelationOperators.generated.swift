// Generated using Sourcery 0.15.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

//
//  +RelationOperators.swift
//  Layman
//
//  Created by Brian Strobach on 1/4/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

// NOTE: Paired edge constraints are inverted as insets because it is more common and easier
// to reason about layouts in terms of insets from edges rather than shifted value offsets.

// MARK: Equal
// MARK: Anchors == Expression
@discardableResult
public func .= (lhs: XYAxesAnchorPair, rhs: XYAxesAnchorPairExpression) -> XYAxesAnchorPair.Solution {
    return lhs.equal(to: rhs)
}

// MARK: Anchors == Anchors
@discardableResult
public func .= (lhs: XYAxesAnchorPair, rhs: XYAxesAnchorPair) -> XYAxesAnchorPair.Solution {
    return lhs.equal(to: rhs)
}

// MARK: LessThanOrEqual
// MARK: Anchors <= Expression
@discardableResult
public func ≤ (lhs: XYAxesAnchorPair, rhs: XYAxesAnchorPairExpression) -> XYAxesAnchorPair.Solution {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: Anchors <= Anchors
@discardableResult
public func ≤ (lhs: XYAxesAnchorPair, rhs: XYAxesAnchorPair) -> XYAxesAnchorPair.Solution {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: GreaterThanOrEqual
// MARK: Anchors >= Expression
@discardableResult
public func ≥ (lhs: XYAxesAnchorPair, rhs: XYAxesAnchorPairExpression) -> XYAxesAnchorPair.Solution {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: Anchors >= Anchors
@discardableResult
public func ≥ (lhs: XYAxesAnchorPair, rhs: XYAxesAnchorPair) -> XYAxesAnchorPair.Solution {
    return lhs.greaterThanOrEqual(to: rhs)
}
