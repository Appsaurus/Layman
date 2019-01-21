// Generated using Sourcery 0.15.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

//
//  XAxisAnchorPair+LeftHandExpression.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/4/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

extension LayoutAnchorPair where F == XAxisAnchor, S == XAxisAnchor {

    public func relation(_ relation: Constraint.Relation, _ rhs: XAxisAnchorPair) -> XAxisAnchorPairRelationship {
        return XAxisAnchorPairRelationship(self, relation, rhs)
    }

    public func relation(_ relation: Constraint.Relation, _ rhs: XAxisAnchorPairExpression) -> XAxisAnchorPairRelationship {
        return XAxisAnchorPairRelationship(self, relation, rhs)

    }

// MARK: Pair Relations
@discardableResult
    public func equal(to rhs: XAxisAnchorPair) -> ConstraintPair {
        return relation(.equal, rhs).solution
    }

    @discardableResult
    public func equal(to rhs: XAxisAnchorPairExpression) -> ConstraintPair {
        return relation(.equal, rhs).solution
    }

    @discardableResult
    public func equal(to rhs: [XAxisAnchorPair]) -> [ConstraintPair] {
        return rhs.map { relation(.equal, $0).solution }
    }

    @discardableResult
    public func equal(to rhs: [XAxisAnchorPairExpression]) -> [ConstraintPair] {
        return rhs.map { relation(.equal, $0).solution }
    }

    @discardableResult
    public func lessThanOrEqual(to rhs: XAxisAnchorPair) -> ConstraintPair {
        return relation(.lessThanOrEqual, rhs).solution
    }

    @discardableResult
    public func lessThanOrEqual(to rhs: XAxisAnchorPairExpression) -> ConstraintPair {
        return relation(.lessThanOrEqual, rhs).solution
    }

    @discardableResult
    public func lessThanOrEqual(to rhs: [XAxisAnchorPair]) -> [ConstraintPair] {
        return rhs.map { relation(.lessThanOrEqual, $0).solution }
    }

    @discardableResult
    public func lessThanOrEqual(to rhs: [XAxisAnchorPairExpression]) -> [ConstraintPair] {
        return rhs.map { relation(.lessThanOrEqual, $0).solution }
    }

    @discardableResult
    public func greaterThanOrEqual(to rhs: XAxisAnchorPair) -> ConstraintPair {
        return relation(.greaterThanOrEqual, rhs).solution
    }

    @discardableResult
    public func greaterThanOrEqual(to rhs: XAxisAnchorPairExpression) -> ConstraintPair {
        return relation(.greaterThanOrEqual, rhs).solution
    }

    @discardableResult
    public func greaterThanOrEqual(to rhs: [XAxisAnchorPair]) -> [ConstraintPair] {
        return rhs.map { relation(.greaterThanOrEqual, $0).solution }
    }
    @discardableResult
    public func greaterThanOrEqual(to rhs: [XAxisAnchorPairExpression]) -> [ConstraintPair] {
        return rhs.map { relation(.greaterThanOrEqual, $0).solution }
    }
}
