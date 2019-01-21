// Generated using Sourcery 0.15.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

//
//  XYAxesAnchorPair+LeftHandExpression.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/4/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

extension LayoutAnchorPair where F == XAxisAnchor, S == YAxisAnchor {

    public func relation(_ relation: Constraint.Relation, _ rhs: XYAxesAnchorPair) -> XYAxesAnchorPairRelationship {
        return XYAxesAnchorPairRelationship(self, relation, rhs)
    }

    public func relation(_ relation: Constraint.Relation, _ rhs: XYAxesAnchorPairExpression) -> XYAxesAnchorPairRelationship {
        return XYAxesAnchorPairRelationship(self, relation, rhs)

    }

// MARK: Pair Relations
@discardableResult
    public func equal(to rhs: XYAxesAnchorPair) -> ConstraintPair {
        return relation(.equal, rhs).solution
    }

    @discardableResult
    public func equal(to rhs: XYAxesAnchorPairExpression) -> ConstraintPair {
        return relation(.equal, rhs).solution
    }

    @discardableResult
    public func equal(to rhs: [XYAxesAnchorPair]) -> [ConstraintPair] {
        return rhs.map { relation(.equal, $0).solution }
    }

    @discardableResult
    public func equal(to rhs: [XYAxesAnchorPairExpression]) -> [ConstraintPair] {
        return rhs.map { relation(.equal, $0).solution }
    }

    @discardableResult
    public func lessThanOrEqual(to rhs: XYAxesAnchorPair) -> ConstraintPair {
        return relation(.lessThanOrEqual, rhs).solution
    }

    @discardableResult
    public func lessThanOrEqual(to rhs: XYAxesAnchorPairExpression) -> ConstraintPair {
        return relation(.lessThanOrEqual, rhs).solution
    }

    @discardableResult
    public func lessThanOrEqual(to rhs: [XYAxesAnchorPair]) -> [ConstraintPair] {
        return rhs.map { relation(.lessThanOrEqual, $0).solution }
    }

    @discardableResult
    public func lessThanOrEqual(to rhs: [XYAxesAnchorPairExpression]) -> [ConstraintPair] {
        return rhs.map { relation(.lessThanOrEqual, $0).solution }
    }

    @discardableResult
    public func greaterThanOrEqual(to rhs: XYAxesAnchorPair) -> ConstraintPair {
        return relation(.greaterThanOrEqual, rhs).solution
    }

    @discardableResult
    public func greaterThanOrEqual(to rhs: XYAxesAnchorPairExpression) -> ConstraintPair {
        return relation(.greaterThanOrEqual, rhs).solution
    }

    @discardableResult
    public func greaterThanOrEqual(to rhs: [XYAxesAnchorPair]) -> [ConstraintPair] {
        return rhs.map { relation(.greaterThanOrEqual, $0).solution }
    }
    @discardableResult
    public func greaterThanOrEqual(to rhs: [XYAxesAnchorPairExpression]) -> [ConstraintPair] {
        return rhs.map { relation(.greaterThanOrEqual, $0).solution }
    }
}
