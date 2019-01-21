// Generated using Sourcery 0.15.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

//
//  YAxisAnchorPair+LeftHandExpression.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/4/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

extension LayoutAnchorPair where F == YAxisAnchor, S == YAxisAnchor {

    public func relation(_ relation: Constraint.Relation, _ rhs: YAxisAnchorPair) -> YAxisAnchorPairRelationship {
        return YAxisAnchorPairRelationship(self, relation, rhs)
    }

    public func relation(_ relation: Constraint.Relation, _ rhs: YAxisAnchorPairExpression) -> YAxisAnchorPairRelationship {
        return YAxisAnchorPairRelationship(self, relation, rhs)

    }

// MARK: Pair Relations
@discardableResult
    public func equal(to rhs: YAxisAnchorPair) -> ConstraintPair {
        return relation(.equal, rhs).solution
    }

    @discardableResult
    public func equal(to rhs: YAxisAnchorPairExpression) -> ConstraintPair {
        return relation(.equal, rhs).solution
    }

    @discardableResult
    public func equal(to rhs: [YAxisAnchorPair]) -> [ConstraintPair] {
        return rhs.map { relation(.equal, $0).solution }
    }

    @discardableResult
    public func equal(to rhs: [YAxisAnchorPairExpression]) -> [ConstraintPair] {
        return rhs.map { relation(.equal, $0).solution }
    }

    @discardableResult
    public func lessThanOrEqual(to rhs: YAxisAnchorPair) -> ConstraintPair {
        return relation(.lessThanOrEqual, rhs).solution
    }

    @discardableResult
    public func lessThanOrEqual(to rhs: YAxisAnchorPairExpression) -> ConstraintPair {
        return relation(.lessThanOrEqual, rhs).solution
    }

    @discardableResult
    public func lessThanOrEqual(to rhs: [YAxisAnchorPair]) -> [ConstraintPair] {
        return rhs.map { relation(.lessThanOrEqual, $0).solution }
    }

    @discardableResult
    public func lessThanOrEqual(to rhs: [YAxisAnchorPairExpression]) -> [ConstraintPair] {
        return rhs.map { relation(.lessThanOrEqual, $0).solution }
    }

    @discardableResult
    public func greaterThanOrEqual(to rhs: YAxisAnchorPair) -> ConstraintPair {
        return relation(.greaterThanOrEqual, rhs).solution
    }

    @discardableResult
    public func greaterThanOrEqual(to rhs: YAxisAnchorPairExpression) -> ConstraintPair {
        return relation(.greaterThanOrEqual, rhs).solution
    }

    @discardableResult
    public func greaterThanOrEqual(to rhs: [YAxisAnchorPair]) -> [ConstraintPair] {
        return rhs.map { relation(.greaterThanOrEqual, $0).solution }
    }
    @discardableResult
    public func greaterThanOrEqual(to rhs: [YAxisAnchorPairExpression]) -> [ConstraintPair] {
        return rhs.map { relation(.greaterThanOrEqual, $0).solution }
    }
}
