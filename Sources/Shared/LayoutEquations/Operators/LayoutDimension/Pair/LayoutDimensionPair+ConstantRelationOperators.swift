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
public func == (lhs: LayoutDimensionPair, rhs: LayoutConfigurationPair) -> ConstraintPair {
    return LayoutPairRelationship(lhs, .equal, rhs).constraints
}

// MARK: SizeAnchorPair <= Constant
@discardableResult
public func <= (lhs: LayoutDimensionPair, rhs: LayoutConstant) -> ConstraintPair {
    return lhs <= LayoutSize(side: rhs)
}

@discardableResult
public func <= (lhs: LayoutDimensionPair, rhs: LayoutConfigurationPair) -> ConstraintPair {
    return LayoutPairRelationship(lhs, .lessThanOrEqual, rhs).constraints

}

// MARK: SizeAnchorPair >= Constant
@discardableResult
public func >= (lhs: LayoutDimensionPair, rhs: LayoutConstant) -> ConstraintPair {
    return lhs <= LayoutSize(side: rhs)
}

@discardableResult
public func >= (lhs: LayoutDimensionPair, rhs: LayoutConfigurationPair) -> ConstraintPair {
    return LayoutPairRelationship(lhs, .greaterThanOrEqual, rhs).constraints
}

// MARK: LayoutSize Constant
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
