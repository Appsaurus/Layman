// Generated using Sourcery 0.15.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

//
//  XYAxesAnchorPair+ViewEquatable.swift
//  Layman
//
//  Created by Brian Strobach on 1/4/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

extension View {
    public func relation(_ relation: LayoutRelation, _ rhs: XYAxesAnchorPair) -> XYAxesAnchorPairEquation {
        return XYAxesAnchorPairEquation(self, relation, rhs)
    }

    @discardableResult
    public func equal(to rhs: XYAxesAnchorPair) -> XYAxesAnchorPairEquation.Solution {
        return relation(.equal, rhs).solution
    }
    @discardableResult
    public func equal(to rhs: [XYAxesAnchorPair]) -> [XYAxesAnchorPairEquation.Solution] {
        return rhs.map { relation(.equal, $0).solution }
    }
    @discardableResult
    public func lessThanOrEqual(to rhs: XYAxesAnchorPair) -> XYAxesAnchorPairEquation.Solution {
        return relation(.lessThanOrEqual, rhs).solution
    }
    @discardableResult
    public func lessThanOrEqual(to rhs: [XYAxesAnchorPair]) -> [XYAxesAnchorPairEquation.Solution] {
        return rhs.map { relation(.lessThanOrEqual, $0).solution }
    }

    @discardableResult
    public func greaterThanOrEqual(to rhs: XYAxesAnchorPair) -> XYAxesAnchorPairEquation.Solution {
        return relation(.greaterThanOrEqual, rhs).solution
    }
    @discardableResult
    public func greaterThanOrEqual(to rhs: [XYAxesAnchorPair]) -> [XYAxesAnchorPairEquation.Solution] {
        return rhs.map { relation(.greaterThanOrEqual, $0).solution }
    }
    @discardableResult
    public func inset(from rhs: XYAxesAnchorPair) -> XYAxesAnchorPairEquation.Solution {
        return relation(.insetFrom, rhs).solution
    }
    @discardableResult
    public func inset(from rhs: [XYAxesAnchorPair]) -> [XYAxesAnchorPairEquation.Solution] {
        return rhs.map { relation(.insetFrom, $0).solution }
    }
    @discardableResult
    public func outset(from rhs: XYAxesAnchorPair) -> XYAxesAnchorPairEquation.Solution {
        return relation(.outsetFrom, rhs).solution
    }
    @discardableResult
    public func outset(from rhs: [XYAxesAnchorPair]) -> [XYAxesAnchorPairEquation.Solution] {
        return rhs.map { relation(.outsetFrom, $0).solution }
    }
}

extension View {
    public func relation(_ relation: LayoutRelation, _ rhs: XYAxesAnchorPairEquation.Expression) -> XYAxesAnchorPairEquation {
        return XYAxesAnchorPairEquation(self, relation, rhs)
    }

    @discardableResult
    public func equal(to rhs: XYAxesAnchorPairEquation.Expression) -> XYAxesAnchorPairEquation.Solution {
        return relation(.equal, rhs).solution
    }
    @discardableResult
    public func equal(to rhs: [XYAxesAnchorPairEquation.Expression]) -> [XYAxesAnchorPairEquation.Solution] {
        return rhs.map { relation(.equal, $0).solution }
    }
    @discardableResult
    public func lessThanOrEqual(to rhs: XYAxesAnchorPairEquation.Expression) -> XYAxesAnchorPairEquation.Solution {
        return relation(.lessThanOrEqual, rhs).solution
    }
    @discardableResult
    public func lessThanOrEqual(to rhs: [XYAxesAnchorPairEquation.Expression]) -> [XYAxesAnchorPairEquation.Solution] {
        return rhs.map { relation(.lessThanOrEqual, $0).solution }
    }

    @discardableResult
    public func greaterThanOrEqual(to rhs: XYAxesAnchorPairEquation.Expression) -> XYAxesAnchorPairEquation.Solution {
        return relation(.greaterThanOrEqual, rhs).solution
    }
    @discardableResult
    public func greaterThanOrEqual(to rhs: [XYAxesAnchorPairEquation.Expression]) -> [XYAxesAnchorPairEquation.Solution] {
        return rhs.map { relation(.greaterThanOrEqual, $0).solution }
    }
    @discardableResult
    public func inset(from rhs: XYAxesAnchorPairEquation.Expression) -> XYAxesAnchorPairEquation.Solution {
        return relation(.insetFrom, rhs).solution
    }
    @discardableResult
    public func inset(from rhs: [XYAxesAnchorPairEquation.Expression]) -> [XYAxesAnchorPairEquation.Solution] {
        return rhs.map { relation(.insetFrom, $0).solution }
    }
    @discardableResult
    public func outset(from rhs: XYAxesAnchorPairEquation.Expression) -> XYAxesAnchorPairEquation.Solution {
        return relation(.outsetFrom, rhs).solution
    }
    @discardableResult
    public func outset(from rhs: [XYAxesAnchorPairEquation.Expression]) -> [XYAxesAnchorPairEquation.Solution] {
        return rhs.map { relation(.outsetFrom, $0).solution }
    }
}
