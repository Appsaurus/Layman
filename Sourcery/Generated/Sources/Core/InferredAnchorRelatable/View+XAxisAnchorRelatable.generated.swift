// Generated using Sourcery 0.15.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

//
//  XAxisAnchor+ViewEquatable.swift
//  Layman
//
//  Created by Brian Strobach on 1/4/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

extension View {
    public func relation(_ relation: LayoutRelation, _ rhs: XAxisAnchor) -> XAxisAnchorEquation {
        return XAxisAnchorEquation(self, relation, rhs)
    }

    @discardableResult
    public func equal(to rhs: XAxisAnchor) -> XAxisAnchorEquation.Solution {
        return relation(.equal, rhs).solution
    }
    @discardableResult
    public func equal(to rhs: [XAxisAnchor]) -> [XAxisAnchorEquation.Solution] {
        return rhs.map { equal(to: $0) }
    }
    @discardableResult
    public func lessThanOrEqual(to rhs: XAxisAnchor) -> XAxisAnchorEquation.Solution {
        return relation(.lessThanOrEqual, rhs).solution
    }
    @discardableResult
    public func lessThanOrEqual(to rhs: [XAxisAnchor]) -> [XAxisAnchorEquation.Solution] {
        return rhs.map { lessThanOrEqual(to: $0) }
    }

    @discardableResult
    public func greaterThanOrEqual(to rhs: XAxisAnchor) -> XAxisAnchorEquation.Solution {
        return relation(.greaterThanOrEqual, rhs).solution
    }
    @discardableResult
    public func greaterThanOrEqual(to rhs: [XAxisAnchor]) -> [XAxisAnchorEquation.Solution] {
        return rhs.map { greaterThanOrEqual(to: $0) }
    }
    @discardableResult
    public func insetOrEqual(to rhs: XAxisAnchor) -> XAxisAnchorEquation.Solution {
        return relation(.insetOrEqual, rhs).solution
    }
    @discardableResult
    public func insetOrEqual(to rhs: [XAxisAnchor]) -> [XAxisAnchorEquation.Solution] {
        return rhs.map { insetOrEqual(to: $0) }
    }
    @discardableResult
    public func outsetOrEqual(to rhs: XAxisAnchor) -> XAxisAnchorEquation.Solution {
        return relation(.outsetOrEqual, rhs).solution
    }
    @discardableResult
    public func outsetOrEqual(to rhs: [XAxisAnchor]) -> [XAxisAnchorEquation.Solution] {
        return rhs.map { outsetOrEqual(to: $0) }
    }
}

extension View {
    public func relation(_ relation: LayoutRelation, _ rhs: XAxisAnchorEquation.Expression) -> XAxisAnchorEquation {
        return XAxisAnchorEquation(self, relation, rhs)
    }

    @discardableResult
    public func equal(to rhs: XAxisAnchorEquation.Expression) -> XAxisAnchorEquation.Solution {
        return relation(.equal, rhs).solution
    }
    @discardableResult
    public func equal(to rhs: [XAxisAnchorEquation.Expression]) -> [XAxisAnchorEquation.Solution] {
        return rhs.map { equal(to: $0) }
    }
    @discardableResult
    public func lessThanOrEqual(to rhs: XAxisAnchorEquation.Expression) -> XAxisAnchorEquation.Solution {
        return relation(.lessThanOrEqual, rhs).solution
    }
    @discardableResult
    public func lessThanOrEqual(to rhs: [XAxisAnchorEquation.Expression]) -> [XAxisAnchorEquation.Solution] {
        return rhs.map { lessThanOrEqual(to: $0) }
    }

    @discardableResult
    public func greaterThanOrEqual(to rhs: XAxisAnchorEquation.Expression) -> XAxisAnchorEquation.Solution {
        return relation(.greaterThanOrEqual, rhs).solution
    }
    @discardableResult
    public func greaterThanOrEqual(to rhs: [XAxisAnchorEquation.Expression]) -> [XAxisAnchorEquation.Solution] {
        return rhs.map { greaterThanOrEqual(to: $0) }
    }
    @discardableResult
    public func insetOrEqual(to rhs: XAxisAnchorEquation.Expression) -> XAxisAnchorEquation.Solution {
        return relation(.insetOrEqual, rhs).solution
    }
    @discardableResult
    public func insetOrEqual(to rhs: [XAxisAnchorEquation.Expression]) -> [XAxisAnchorEquation.Solution] {
        return rhs.map { insetOrEqual(to: $0) }
    }
    @discardableResult
    public func outsetOrEqual(to rhs: XAxisAnchorEquation.Expression) -> XAxisAnchorEquation.Solution {
        return relation(.outsetOrEqual, rhs).solution
    }
    @discardableResult
    public func outsetOrEqual(to rhs: [XAxisAnchorEquation.Expression]) -> [XAxisAnchorEquation.Solution] {
        return rhs.map { outsetOrEqual(to: $0) }
    }
}
