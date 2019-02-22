// Generated using Sourcery 0.15.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

//
//  YAxisAnchorPair+ViewEquatable.swift
//  Layman
//
//  Created by Brian Strobach on 1/4/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

extension View {
    public func relation(_ relation: LayoutRelation, _ rhs: YAxisAnchorPair) -> YAxisAnchorPairEquation {
        return YAxisAnchorPairEquation(self, relation, rhs)
    }

    @discardableResult
    public func equal(to rhs: YAxisAnchorPair) -> YAxisAnchorPairEquation.Solution {
        return relation(.equal, rhs).solution
    }
    @discardableResult
    public func equal(to rhs: [YAxisAnchorPair]) -> [YAxisAnchorPairEquation.Solution] {
        return rhs.map { relation(.equal, $0).solution }
    }
    @discardableResult
    public func lessThanOrEqual(to rhs: YAxisAnchorPair) -> YAxisAnchorPairEquation.Solution {
        return relation(.lessThanOrEqual, rhs).solution
    }
    @discardableResult
    public func lessThanOrEqual(to rhs: [YAxisAnchorPair]) -> [YAxisAnchorPairEquation.Solution] {
        return rhs.map { relation(.lessThanOrEqual, $0).solution }
    }

    @discardableResult
    public func greaterThanOrEqual(to rhs: YAxisAnchorPair) -> YAxisAnchorPairEquation.Solution {
        return relation(.greaterThanOrEqual, rhs).solution
    }
    @discardableResult
    public func greaterThanOrEqual(to rhs: [YAxisAnchorPair]) -> [YAxisAnchorPairEquation.Solution] {
        return rhs.map { relation(.greaterThanOrEqual, $0).solution }
    }
    @discardableResult
    public func insetOrEqual(to rhs: YAxisAnchorPair) -> YAxisAnchorPairEquation.Solution {
        return relation(.insetOrEqual, rhs).solution
    }
    @discardableResult
    public func insetOrEqual(to rhs: [YAxisAnchorPair]) -> [YAxisAnchorPairEquation.Solution] {
        return rhs.map { relation(.insetOrEqual, $0).solution }
    }
    @discardableResult
    public func outsetOrEqual(to rhs: YAxisAnchorPair) -> YAxisAnchorPairEquation.Solution {
        return relation(.outsetOrEqual, rhs).solution
    }
    @discardableResult
    public func outsetOrEqual(to rhs: [YAxisAnchorPair]) -> [YAxisAnchorPairEquation.Solution] {
        return rhs.map { relation(.outsetOrEqual, $0).solution }
    }
}

extension View {
    public func relation(_ relation: LayoutRelation, _ rhs: YAxisAnchorPairEquation.Expression) -> YAxisAnchorPairEquation {
        return YAxisAnchorPairEquation(self, relation, rhs)
    }

    @discardableResult
    public func equal(to rhs: YAxisAnchorPairEquation.Expression) -> YAxisAnchorPairEquation.Solution {
        return relation(.equal, rhs).solution
    }
    @discardableResult
    public func equal(to rhs: [YAxisAnchorPairEquation.Expression]) -> [YAxisAnchorPairEquation.Solution] {
        return rhs.map { relation(.equal, $0).solution }
    }
    @discardableResult
    public func lessThanOrEqual(to rhs: YAxisAnchorPairEquation.Expression) -> YAxisAnchorPairEquation.Solution {
        return relation(.lessThanOrEqual, rhs).solution
    }
    @discardableResult
    public func lessThanOrEqual(to rhs: [YAxisAnchorPairEquation.Expression]) -> [YAxisAnchorPairEquation.Solution] {
        return rhs.map { relation(.lessThanOrEqual, $0).solution }
    }

    @discardableResult
    public func greaterThanOrEqual(to rhs: YAxisAnchorPairEquation.Expression) -> YAxisAnchorPairEquation.Solution {
        return relation(.greaterThanOrEqual, rhs).solution
    }
    @discardableResult
    public func greaterThanOrEqual(to rhs: [YAxisAnchorPairEquation.Expression]) -> [YAxisAnchorPairEquation.Solution] {
        return rhs.map { relation(.greaterThanOrEqual, $0).solution }
    }
    @discardableResult
    public func insetOrEqual(to rhs: YAxisAnchorPairEquation.Expression) -> YAxisAnchorPairEquation.Solution {
        return relation(.insetOrEqual, rhs).solution
    }
    @discardableResult
    public func insetOrEqual(to rhs: [YAxisAnchorPairEquation.Expression]) -> [YAxisAnchorPairEquation.Solution] {
        return rhs.map { relation(.insetOrEqual, $0).solution }
    }
    @discardableResult
    public func outsetOrEqual(to rhs: YAxisAnchorPairEquation.Expression) -> YAxisAnchorPairEquation.Solution {
        return relation(.outsetOrEqual, rhs).solution
    }
    @discardableResult
    public func outsetOrEqual(to rhs: [YAxisAnchorPairEquation.Expression]) -> [YAxisAnchorPairEquation.Solution] {
        return rhs.map { relation(.outsetOrEqual, $0).solution }
    }
}
