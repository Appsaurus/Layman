// Generated using Sourcery 0.15.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

//
//  XAxisAnchorPair+ViewEquatable.swift
//  Layman
//
//  Created by Brian Strobach on 1/4/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

extension View {
    public func relation(_ relation: LayoutRelation, _ rhs: XAxisAnchorPair) -> XAxisAnchorPairEquation {
        return XAxisAnchorPairEquation(self, relation, rhs)
    }

    @discardableResult
    public func equal(to rhs: XAxisAnchorPair) -> XAxisAnchorPairEquation.Solution {
        return relation(.equal, rhs).solution
    }
    @discardableResult
    public func equal(to rhs: [XAxisAnchorPair]) -> [XAxisAnchorPairEquation.Solution] {
        return rhs.map { relation(.equal, $0).solution }
    }
    @discardableResult
    public func lessThanOrEqual(to rhs: XAxisAnchorPair) -> XAxisAnchorPairEquation.Solution {
        return relation(.lessThanOrEqual, rhs).solution
    }
    @discardableResult
    public func lessThanOrEqual(to rhs: [XAxisAnchorPair]) -> [XAxisAnchorPairEquation.Solution] {
        return rhs.map { relation(.lessThanOrEqual, $0).solution }
    }

    @discardableResult
    public func greaterThanOrEqual(to rhs: XAxisAnchorPair) -> XAxisAnchorPairEquation.Solution {
        return relation(.greaterThanOrEqual, rhs).solution
    }
    @discardableResult
    public func greaterThanOrEqual(to rhs: [XAxisAnchorPair]) -> [XAxisAnchorPairEquation.Solution] {
        return rhs.map { relation(.greaterThanOrEqual, $0).solution }
    }
    @discardableResult
    public func insetOrEqual(to rhs: XAxisAnchorPair) -> XAxisAnchorPairEquation.Solution {
        return relation(.insetOrEqual, rhs).solution
    }
    @discardableResult
    public func insetOrEqual(to rhs: [XAxisAnchorPair]) -> [XAxisAnchorPairEquation.Solution] {
        return rhs.map { relation(.insetOrEqual, $0).solution }
    }
    @discardableResult
    public func outsetOrEqual(to rhs: XAxisAnchorPair) -> XAxisAnchorPairEquation.Solution {
        return relation(.outsetOrEqual, rhs).solution
    }
    @discardableResult
    public func outsetOrEqual(to rhs: [XAxisAnchorPair]) -> [XAxisAnchorPairEquation.Solution] {
        return rhs.map { relation(.outsetOrEqual, $0).solution }
    }
}

extension View {
    public func relation(_ relation: LayoutRelation, _ rhs: XAxisAnchorPairEquation.Expression) -> XAxisAnchorPairEquation {
        return XAxisAnchorPairEquation(self, relation, rhs)
    }

    @discardableResult
    public func equal(to rhs: XAxisAnchorPairEquation.Expression) -> XAxisAnchorPairEquation.Solution {
        return relation(.equal, rhs).solution
    }
    @discardableResult
    public func equal(to rhs: [XAxisAnchorPairEquation.Expression]) -> [XAxisAnchorPairEquation.Solution] {
        return rhs.map { relation(.equal, $0).solution }
    }
    @discardableResult
    public func lessThanOrEqual(to rhs: XAxisAnchorPairEquation.Expression) -> XAxisAnchorPairEquation.Solution {
        return relation(.lessThanOrEqual, rhs).solution
    }
    @discardableResult
    public func lessThanOrEqual(to rhs: [XAxisAnchorPairEquation.Expression]) -> [XAxisAnchorPairEquation.Solution] {
        return rhs.map { relation(.lessThanOrEqual, $0).solution }
    }

    @discardableResult
    public func greaterThanOrEqual(to rhs: XAxisAnchorPairEquation.Expression) -> XAxisAnchorPairEquation.Solution {
        return relation(.greaterThanOrEqual, rhs).solution
    }
    @discardableResult
    public func greaterThanOrEqual(to rhs: [XAxisAnchorPairEquation.Expression]) -> [XAxisAnchorPairEquation.Solution] {
        return rhs.map { relation(.greaterThanOrEqual, $0).solution }
    }
    @discardableResult
    public func insetOrEqual(to rhs: XAxisAnchorPairEquation.Expression) -> XAxisAnchorPairEquation.Solution {
        return relation(.insetOrEqual, rhs).solution
    }
    @discardableResult
    public func insetOrEqual(to rhs: [XAxisAnchorPairEquation.Expression]) -> [XAxisAnchorPairEquation.Solution] {
        return rhs.map { relation(.insetOrEqual, $0).solution }
    }
    @discardableResult
    public func outsetOrEqual(to rhs: XAxisAnchorPairEquation.Expression) -> XAxisAnchorPairEquation.Solution {
        return relation(.outsetOrEqual, rhs).solution
    }
    @discardableResult
    public func outsetOrEqual(to rhs: [XAxisAnchorPairEquation.Expression]) -> [XAxisAnchorPairEquation.Solution] {
        return rhs.map { relation(.outsetOrEqual, $0).solution }
    }
}
