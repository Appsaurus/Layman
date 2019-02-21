// Generated using Sourcery 0.15.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

//
//  LayoutDimensionPair+ViewEquatable.swift
//  Layman
//
//  Created by Brian Strobach on 1/4/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

extension View {
    public func relation(_ relation: LayoutRelation, _ rhs: LayoutDimensionPair) -> LayoutDimensionPairEquation {
        return LayoutDimensionPairEquation(self, relation, rhs)
    }

    @discardableResult
    public func equal(to rhs: LayoutDimensionPair) -> LayoutDimensionPairEquation.Solution {
        return relation(.equal, rhs).solution
    }
    @discardableResult
    public func equal(to rhs: [LayoutDimensionPair]) -> [LayoutDimensionPairEquation.Solution] {
        return rhs.map { relation(.equal, $0).solution }
    }
    @discardableResult
    public func lessThanOrEqual(to rhs: LayoutDimensionPair) -> LayoutDimensionPairEquation.Solution {
        return relation(.lessThanOrEqual, rhs).solution
    }
    @discardableResult
    public func lessThanOrEqual(to rhs: [LayoutDimensionPair]) -> [LayoutDimensionPairEquation.Solution] {
        return rhs.map { relation(.lessThanOrEqual, $0).solution }
    }

    @discardableResult
    public func greaterThanOrEqual(to rhs: LayoutDimensionPair) -> LayoutDimensionPairEquation.Solution {
        return relation(.greaterThanOrEqual, rhs).solution
    }
    @discardableResult
    public func greaterThanOrEqual(to rhs: [LayoutDimensionPair]) -> [LayoutDimensionPairEquation.Solution] {
        return rhs.map { relation(.greaterThanOrEqual, $0).solution }
    }
    @discardableResult
    public func inset(from rhs: LayoutDimensionPair) -> LayoutDimensionPairEquation.Solution {
        return relation(.insetFrom, rhs).solution
    }
    @discardableResult
    public func inset(from rhs: [LayoutDimensionPair]) -> [LayoutDimensionPairEquation.Solution] {
        return rhs.map { relation(.insetFrom, $0).solution }
    }
    @discardableResult
    public func outset(from rhs: LayoutDimensionPair) -> LayoutDimensionPairEquation.Solution {
        return relation(.outsetFrom, rhs).solution
    }
    @discardableResult
    public func outset(from rhs: [LayoutDimensionPair]) -> [LayoutDimensionPairEquation.Solution] {
        return rhs.map { relation(.outsetFrom, $0).solution }
    }
}

extension View {
    public func relation(_ relation: LayoutRelation, _ rhs: LayoutDimensionPairEquation.Expression) -> LayoutDimensionPairEquation {
        return LayoutDimensionPairEquation(self, relation, rhs)
    }

    @discardableResult
    public func equal(to rhs: LayoutDimensionPairEquation.Expression) -> LayoutDimensionPairEquation.Solution {
        return relation(.equal, rhs).solution
    }
    @discardableResult
    public func equal(to rhs: [LayoutDimensionPairEquation.Expression]) -> [LayoutDimensionPairEquation.Solution] {
        return rhs.map { relation(.equal, $0).solution }
    }
    @discardableResult
    public func lessThanOrEqual(to rhs: LayoutDimensionPairEquation.Expression) -> LayoutDimensionPairEquation.Solution {
        return relation(.lessThanOrEqual, rhs).solution
    }
    @discardableResult
    public func lessThanOrEqual(to rhs: [LayoutDimensionPairEquation.Expression]) -> [LayoutDimensionPairEquation.Solution] {
        return rhs.map { relation(.lessThanOrEqual, $0).solution }
    }

    @discardableResult
    public func greaterThanOrEqual(to rhs: LayoutDimensionPairEquation.Expression) -> LayoutDimensionPairEquation.Solution {
        return relation(.greaterThanOrEqual, rhs).solution
    }
    @discardableResult
    public func greaterThanOrEqual(to rhs: [LayoutDimensionPairEquation.Expression]) -> [LayoutDimensionPairEquation.Solution] {
        return rhs.map { relation(.greaterThanOrEqual, $0).solution }
    }
    @discardableResult
    public func inset(from rhs: LayoutDimensionPairEquation.Expression) -> LayoutDimensionPairEquation.Solution {
        return relation(.insetFrom, rhs).solution
    }
    @discardableResult
    public func inset(from rhs: [LayoutDimensionPairEquation.Expression]) -> [LayoutDimensionPairEquation.Solution] {
        return rhs.map { relation(.insetFrom, $0).solution }
    }
    @discardableResult
    public func outset(from rhs: LayoutDimensionPairEquation.Expression) -> LayoutDimensionPairEquation.Solution {
        return relation(.outsetFrom, rhs).solution
    }
    @discardableResult
    public func outset(from rhs: [LayoutDimensionPairEquation.Expression]) -> [LayoutDimensionPairEquation.Solution] {
        return rhs.map { relation(.outsetFrom, $0).solution }
    }
}
