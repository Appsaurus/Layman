// Generated using Sourcery 0.15.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

//
//  LayoutDimensionPair+LeftHandExpression.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/4/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

extension LayoutAnchorPair where F == LayoutDimension, S == LayoutDimension {

    public func relation(_ relation: Constraint.Relation, _ rhs: LayoutDimensionPair) -> LayoutDimensionPairRelationship {
        return LayoutDimensionPairRelationship(self, relation, rhs)
    }

    public func relation(_ relation: Constraint.Relation, _ rhs: LayoutDimensionPairExpression) -> LayoutDimensionPairRelationship {
        return LayoutDimensionPairRelationship(self, relation, rhs)

    }

// MARK: Pair Relations
@discardableResult
    public func equal(to rhs: LayoutDimensionPair) -> ConstraintPair {
        return relation(.equal, rhs).solution
    }

    @discardableResult
    public func equal(to rhs: LayoutDimensionPairExpression) -> ConstraintPair {
        return relation(.equal, rhs).solution
    }

    @discardableResult
    public func equal(to rhs: [LayoutDimensionPair]) -> [ConstraintPair] {
        return rhs.map { relation(.equal, $0).solution }
    }

    @discardableResult
    public func equal(to rhs: [LayoutDimensionPairExpression]) -> [ConstraintPair] {
        return rhs.map { relation(.equal, $0).solution }
    }

    @discardableResult
    public func lessThanOrEqual(to rhs: LayoutDimensionPair) -> ConstraintPair {
        return relation(.lessThanOrEqual, rhs).solution
    }

    @discardableResult
    public func lessThanOrEqual(to rhs: LayoutDimensionPairExpression) -> ConstraintPair {
        return relation(.lessThanOrEqual, rhs).solution
    }

    @discardableResult
    public func lessThanOrEqual(to rhs: [LayoutDimensionPair]) -> [ConstraintPair] {
        return rhs.map { relation(.lessThanOrEqual, $0).solution }
    }

    @discardableResult
    public func lessThanOrEqual(to rhs: [LayoutDimensionPairExpression]) -> [ConstraintPair] {
        return rhs.map { relation(.lessThanOrEqual, $0).solution }
    }

    @discardableResult
    public func greaterThanOrEqual(to rhs: LayoutDimensionPair) -> ConstraintPair {
        return relation(.greaterThanOrEqual, rhs).solution
    }

    @discardableResult
    public func greaterThanOrEqual(to rhs: LayoutDimensionPairExpression) -> ConstraintPair {
        return relation(.greaterThanOrEqual, rhs).solution
    }

    @discardableResult
    public func greaterThanOrEqual(to rhs: [LayoutDimensionPair]) -> [ConstraintPair] {
        return rhs.map { relation(.greaterThanOrEqual, $0).solution }
    }
    @discardableResult
    public func greaterThanOrEqual(to rhs: [LayoutDimensionPairExpression]) -> [ConstraintPair] {
        return rhs.map { relation(.greaterThanOrEqual, $0).solution }
    }
}
