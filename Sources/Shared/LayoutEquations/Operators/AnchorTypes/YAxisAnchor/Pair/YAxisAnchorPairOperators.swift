//
//  YAxisAnchorPairOperators.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/7/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

// NOTE: Paired edge constraints are inverted as insets because it is more common and easier
// to reason about layouts in terms of insets from edges rather than shifted value offsets.

// MARK: Equal
// MARK: Anchors == Expression
@discardableResult
public func == (lhs: YAxisAnchorPair, rhs: YAxisAnchorPairExpression) -> ConstraintPair {
    return LayoutPairRelationship(lhs, .equal, rhs).constraintsInvertedAsInsets
}

// MARK: Anchors == Anchors
@discardableResult
public func == (lhs: YAxisAnchorPair, rhs: YAxisAnchorPair) -> ConstraintPair {
    return LayoutPairRelationship(lhs, .equal, rhs).constraintsInvertedAsInsets
}

// MARK: LessThanOrEqual
// MARK: Anchors <= Expression
@discardableResult
public func <= (lhs: YAxisAnchorPair, rhs: YAxisAnchorPairExpression) -> ConstraintPair {
    return LayoutPairRelationship(lhs, .lessThanOrEqual, rhs).constraintsInvertedAsInsets
}

// MARK: Anchors <= Anchors
@discardableResult
public func <= (lhs: YAxisAnchorPair, rhs: YAxisAnchorPair) -> ConstraintPair {
    return LayoutPairRelationship(lhs, .lessThanOrEqual, rhs).constraintsInvertedAsInsets
}

// MARK: GreaterThanOrEqual
// MARK: Anchors >= Expression
@discardableResult
public func >= (lhs: YAxisAnchorPair, rhs: YAxisAnchorPairExpression) -> ConstraintPair {
    return LayoutPairRelationship(lhs, .greaterThanOrEqual, rhs).constraintsInvertedAsInsets
}

// MARK: Anchors >= Anchors
@discardableResult
public func >= (lhs: YAxisAnchorPair, rhs: YAxisAnchorPair) -> ConstraintPair {
    return LayoutPairRelationship(lhs, .greaterThanOrEqual, rhs).constraintsInvertedAsInsets
}
