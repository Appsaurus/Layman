// Generated using Sourcery 0.15.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

//
//  LayoutDimension+ViewEquatable.swift
//  Layman
//
//  Created by Brian Strobach on 1/4/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

extension View {
    public func relation(_ relation: LayoutRelation, _ rhs: LayoutDimension) -> LayoutDimensionEquation {
        return LayoutDimensionEquation(self, relation, rhs)
    }

    @discardableResult
    public func equal(to rhs: LayoutDimension) -> LayoutDimensionEquation.Solution {
        return relation(.equal, rhs).solution
    }
    @discardableResult
    public func equal(to rhs: [LayoutDimension]) -> [LayoutDimensionEquation.Solution] {
        return rhs.map { relation(.equal, $0).solution }
    }
    @discardableResult
    public func lessThanOrEqual(to rhs: LayoutDimension) -> LayoutDimensionEquation.Solution {
        return relation(.lessThanOrEqual, rhs).solution
    }
    @discardableResult
    public func lessThanOrEqual(to rhs: [LayoutDimension]) -> [LayoutDimensionEquation.Solution] {
        return rhs.map { relation(.lessThanOrEqual, $0).solution }
    }

    @discardableResult
    public func greaterThanOrEqual(to rhs: LayoutDimension) -> LayoutDimensionEquation.Solution {
        return relation(.greaterThanOrEqual, rhs).solution
    }
    @discardableResult
    public func greaterThanOrEqual(to rhs: [LayoutDimension]) -> [LayoutDimensionEquation.Solution] {
        return rhs.map { relation(.greaterThanOrEqual, $0).solution }
    }
    @discardableResult
    public func inset(from rhs: LayoutDimension) -> LayoutDimensionEquation.Solution {
        return relation(.insetFrom, rhs).solution
    }
    @discardableResult
    public func inset(from rhs: [LayoutDimension]) -> [LayoutDimensionEquation.Solution] {
        return rhs.map { relation(.insetFrom, $0).solution }
    }
    @discardableResult
    public func outset(from rhs: LayoutDimension) -> LayoutDimensionEquation.Solution {
        return relation(.outsetFrom, rhs).solution
    }
    @discardableResult
    public func outset(from rhs: [LayoutDimension]) -> [LayoutDimensionEquation.Solution] {
        return rhs.map { relation(.outsetFrom, $0).solution }
    }
}

extension View {
    public func relation(_ relation: LayoutRelation, _ rhs: LayoutDimensionEquation.Expression) -> LayoutDimensionEquation {
        return LayoutDimensionEquation(self, relation, rhs)
    }

    @discardableResult
    public func equal(to rhs: LayoutDimensionEquation.Expression) -> LayoutDimensionEquation.Solution {
        return relation(.equal, rhs).solution
    }
    @discardableResult
    public func equal(to rhs: [LayoutDimensionEquation.Expression]) -> [LayoutDimensionEquation.Solution] {
        return rhs.map { relation(.equal, $0).solution }
    }
    @discardableResult
    public func lessThanOrEqual(to rhs: LayoutDimensionEquation.Expression) -> LayoutDimensionEquation.Solution {
        return relation(.lessThanOrEqual, rhs).solution
    }
    @discardableResult
    public func lessThanOrEqual(to rhs: [LayoutDimensionEquation.Expression]) -> [LayoutDimensionEquation.Solution] {
        return rhs.map { relation(.lessThanOrEqual, $0).solution }
    }

    @discardableResult
    public func greaterThanOrEqual(to rhs: LayoutDimensionEquation.Expression) -> LayoutDimensionEquation.Solution {
        return relation(.greaterThanOrEqual, rhs).solution
    }
    @discardableResult
    public func greaterThanOrEqual(to rhs: [LayoutDimensionEquation.Expression]) -> [LayoutDimensionEquation.Solution] {
        return rhs.map { relation(.greaterThanOrEqual, $0).solution }
    }
    @discardableResult
    public func inset(from rhs: LayoutDimensionEquation.Expression) -> LayoutDimensionEquation.Solution {
        return relation(.insetFrom, rhs).solution
    }
    @discardableResult
    public func inset(from rhs: [LayoutDimensionEquation.Expression]) -> [LayoutDimensionEquation.Solution] {
        return rhs.map { relation(.insetFrom, $0).solution }
    }
    @discardableResult
    public func outset(from rhs: LayoutDimensionEquation.Expression) -> LayoutDimensionEquation.Solution {
        return relation(.outsetFrom, rhs).solution
    }
    @discardableResult
    public func outset(from rhs: [LayoutDimensionEquation.Expression]) -> [LayoutDimensionEquation.Solution] {
        return rhs.map { relation(.outsetFrom, $0).solution }
    }
}
