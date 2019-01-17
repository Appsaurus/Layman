// Generated using Sourcery 0.15.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

//
//  LayoutDimension+ArrayConstantArithmeticOperators.swift
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
public func == (lhs: LayoutDimensionPair, rhs: LayoutDimensionPairExpression) -> ConstraintPair {
    return LayoutPairRelationship(lhs, .equal, rhs).constraints
}

// MARK: Anchors == Anchors
@discardableResult
public func == (lhs: LayoutDimensionPair, rhs: LayoutDimensionPair) -> ConstraintPair {
    return LayoutPairRelationship(lhs, .equal, rhs).constraints
}

// MARK: LessThanOrEqual
// MARK: Anchors <= Expression
@discardableResult
public func <= (lhs: LayoutDimensionPair, rhs: LayoutDimensionPairExpression) -> ConstraintPair {
    return LayoutPairRelationship(lhs, .lessThanOrEqual, rhs).constraints
}

// MARK: Anchors <= Anchors
@discardableResult
public func <= (lhs: LayoutDimensionPair, rhs: LayoutDimensionPair) -> ConstraintPair {
    return LayoutPairRelationship(lhs, .lessThanOrEqual, rhs).constraints
}

// MARK: GreaterThanOrEqual
// MARK: Anchors >= Expression
@discardableResult
public func >= (lhs: LayoutDimensionPair, rhs: LayoutDimensionPairExpression) -> ConstraintPair {
    return LayoutPairRelationship(lhs, .greaterThanOrEqual, rhs).constraints
}

// MARK: Anchors >= Anchors
@discardableResult
public func >= (lhs: LayoutDimensionPair, rhs: LayoutDimensionPair) -> ConstraintPair {
    return LayoutPairRelationship(lhs, .greaterThanOrEqual, rhs).constraints
}
