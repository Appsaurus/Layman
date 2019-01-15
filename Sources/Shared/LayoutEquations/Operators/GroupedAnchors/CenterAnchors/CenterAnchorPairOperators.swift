//
//  CenterAnchorPairOperators.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/8/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

// MARK: Equal
// MARK: Anchors == Expression
@discardableResult
public func == (lhs: CenterAnchorPair, rhs: CenterAnchorPairExpression) -> ConstraintPair {
    return LayoutPairRelationship(lhs, .equal, rhs).constraints
}

// MARK: Equal
// MARK: Anchors == Expression
@discardableResult
public func == (lhs: CenterAnchorPair, rhs: CenterAnchorPair) -> ConstraintPair {
    return LayoutPairRelationship(lhs, .equal, rhs).constraints
}
