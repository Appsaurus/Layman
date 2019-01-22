//
//  LayoutDimensionPair+ConstantRelationOperators.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/8/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

// MARK: SizeAnchorPair == Constant
@discardableResult
public func == (lhs: LayoutDimensionPair, rhs: LayoutConstant) -> ConstraintPair {
    return lhs == LayoutSize(side: rhs)
}

@discardableResult
public func == (lhs: LayoutDimensionPair, rhs: LayoutPairConfiguration) -> ConstraintPair {
    return (LayoutRelationship(lhs.first, .equal, nil, rhs.first).constraint,
            LayoutRelationship(lhs.second, .equal, nil, rhs.second).constraint)
}

// MARK: SizeAnchorPair <= Constant
@discardableResult
public func <= (lhs: LayoutDimensionPair, rhs: LayoutConstant) -> ConstraintPair {
    return lhs <= LayoutSize(side: rhs)
}

@discardableResult
public func <= (lhs: LayoutDimensionPair, rhs: LayoutPairConfiguration) -> ConstraintPair {
    return (LayoutRelationship(lhs.first, .lessThanOrEqual, nil, rhs.first).constraint,
            LayoutRelationship(lhs.second, .lessThanOrEqual, nil, rhs.second).constraint)
}

// MARK: SizeAnchorPair >= Constant
@discardableResult
public func >= (lhs: LayoutDimensionPair, rhs: LayoutConstant) -> ConstraintPair {
    return lhs <= LayoutSize(side: rhs)
}

@discardableResult
public func >= (lhs: LayoutDimensionPair, rhs: LayoutPairConfiguration) -> ConstraintPair {
    return (LayoutRelationship(lhs.first, .greaterThanOrEqual, nil, rhs.first).constraint,
            LayoutRelationship(lhs.second, .greaterThanOrEqual, nil, rhs.second).constraint)
}

// MARK: LayoutSize Constants
@discardableResult
public func == (lhs: LayoutDimensionPair, rhs: LayoutSize) -> ConstraintPair {
    return lhs == .size(rhs)
}

@discardableResult
public func <= (lhs: LayoutDimensionPair, rhs: LayoutSize) -> ConstraintPair {
    return lhs <= .size(rhs)
}

@discardableResult
public func >= (lhs: LayoutDimensionPair, rhs: LayoutSize) -> ConstraintPair {
    return lhs >= .size(rhs)
}
