//
//  CenterAnchorsOperators.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/8/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

// MARK: Equal
// MARK: Anchors == Expression
@discardableResult
public func == (lhs: CenterAnchors, rhs: CenterAnchorsExpression) -> ConstraintPair {
    return LayoutPairRelationship(lhs, .equal, rhs).constraints
}

// MARK: Equal
// MARK: Anchors == Expression
@discardableResult
public func == (lhs: CenterAnchors, rhs: CenterAnchors) -> ConstraintPair {
    return LayoutPairRelationship(lhs, .equal, rhs).constraints
}
