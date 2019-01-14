//
//  SizeAnchorPairOperators.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/6/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

// MARK: Equal
// MARK: Anchors == Expression
@discardableResult
public func == (lhs: SizeAnchorPair, rhs: SizeAnchorExpression) -> ConstraintPair {
    return LayoutPairRelationship(lhs, .equal, rhs).constraints
}

// MARK: Anchors == Anchors
@discardableResult
public func == (lhs: SizeAnchorPair, rhs: SizeAnchorPair) -> ConstraintPair {
    return LayoutPairRelationship(lhs, .equal, rhs).constraints
}

// MARK: LessThanOrEqual
// MARK: Anchors <= Expression
@discardableResult
public func <= (lhs: SizeAnchorPair, rhs: SizeAnchorExpression) -> ConstraintPair {
     return LayoutPairRelationship(lhs, .lessThanOrEqual, rhs).constraints
}

// MARK: Anchors <= Anchors
@discardableResult
public func <= (lhs: SizeAnchorPair, rhs: SizeAnchorPair) -> ConstraintPair {
    return LayoutPairRelationship(lhs, .lessThanOrEqual, rhs).constraints
}

// MARK: GreaterThanOrEqual
// MARK: Anchors >= Expression
@discardableResult
public func >= (lhs: SizeAnchorPair, rhs: SizeAnchorExpression) -> ConstraintPair {
    return LayoutPairRelationship(lhs, .greaterThanOrEqual, rhs).constraints
}

// MARK: Anchors >= Anchors
@discardableResult
public func >= (lhs: SizeAnchorPair, rhs: SizeAnchorPair) -> ConstraintPair {
    return LayoutPairRelationship(lhs, .greaterThanOrEqual, rhs).constraints
}
