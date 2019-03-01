// Generated using Sourcery 0.15.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

//
//  EdgeAnchorGroup+ViewEquatable.swift
//  Layman
//
//  Created by Brian Strobach on 1/4/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

extension View {
    public func relation(_ relation: LayoutRelation, _ rhs: EdgeAnchorGroup) -> EdgeAnchorGroupEquation {
        return EdgeAnchorGroupEquation(self, relation, rhs)
    }

    @discardableResult
    public func equal(to rhs: EdgeAnchorGroup) -> EdgeAnchorGroupEquation.Solution {
        return relation(.equal, rhs).solution
    }
    @discardableResult
    public func equal(to rhs: [EdgeAnchorGroup]) -> [EdgeAnchorGroupEquation.Solution] {
        return rhs.map { equal(to: $0) }
    }
    @discardableResult
    public func lessThanOrEqual(to rhs: EdgeAnchorGroup) -> EdgeAnchorGroupEquation.Solution {
        return relation(.lessThanOrEqual, rhs).solution
    }
    @discardableResult
    public func lessThanOrEqual(to rhs: [EdgeAnchorGroup]) -> [EdgeAnchorGroupEquation.Solution] {
        return rhs.map { lessThanOrEqual(to: $0) }
    }

    @discardableResult
    public func greaterThanOrEqual(to rhs: EdgeAnchorGroup) -> EdgeAnchorGroupEquation.Solution {
        return relation(.greaterThanOrEqual, rhs).solution
    }
    @discardableResult
    public func greaterThanOrEqual(to rhs: [EdgeAnchorGroup]) -> [EdgeAnchorGroupEquation.Solution] {
        return rhs.map { greaterThanOrEqual(to: $0) }
    }
    @discardableResult
    public func insetOrEqual(to rhs: EdgeAnchorGroup) -> EdgeAnchorGroupEquation.Solution {
        return relation(.insetOrEqual, rhs).solution
    }
    @discardableResult
    public func insetOrEqual(to rhs: [EdgeAnchorGroup]) -> [EdgeAnchorGroupEquation.Solution] {
        return rhs.map { insetOrEqual(to: $0) }
    }
    @discardableResult
    public func outsetOrEqual(to rhs: EdgeAnchorGroup) -> EdgeAnchorGroupEquation.Solution {
        return relation(.outsetOrEqual, rhs).solution
    }
    @discardableResult
    public func outsetOrEqual(to rhs: [EdgeAnchorGroup]) -> [EdgeAnchorGroupEquation.Solution] {
        return rhs.map { outsetOrEqual(to: $0) }
    }
}

extension View {
    public func relation(_ relation: LayoutRelation, _ rhs: EdgeAnchorGroupEquation.Expression) -> EdgeAnchorGroupEquation {
        return EdgeAnchorGroupEquation(self, relation, rhs)
    }

    @discardableResult
    public func equal(to rhs: EdgeAnchorGroupEquation.Expression) -> EdgeAnchorGroupEquation.Solution {
        return relation(.equal, rhs).solution
    }
    @discardableResult
    public func equal(to rhs: [EdgeAnchorGroupEquation.Expression]) -> [EdgeAnchorGroupEquation.Solution] {
        return rhs.map { equal(to: $0) }
    }
    @discardableResult
    public func lessThanOrEqual(to rhs: EdgeAnchorGroupEquation.Expression) -> EdgeAnchorGroupEquation.Solution {
        return relation(.lessThanOrEqual, rhs).solution
    }
    @discardableResult
    public func lessThanOrEqual(to rhs: [EdgeAnchorGroupEquation.Expression]) -> [EdgeAnchorGroupEquation.Solution] {
        return rhs.map { lessThanOrEqual(to: $0) }
    }

    @discardableResult
    public func greaterThanOrEqual(to rhs: EdgeAnchorGroupEquation.Expression) -> EdgeAnchorGroupEquation.Solution {
        return relation(.greaterThanOrEqual, rhs).solution
    }
    @discardableResult
    public func greaterThanOrEqual(to rhs: [EdgeAnchorGroupEquation.Expression]) -> [EdgeAnchorGroupEquation.Solution] {
        return rhs.map { greaterThanOrEqual(to: $0) }
    }
    @discardableResult
    public func insetOrEqual(to rhs: EdgeAnchorGroupEquation.Expression) -> EdgeAnchorGroupEquation.Solution {
        return relation(.insetOrEqual, rhs).solution
    }
    @discardableResult
    public func insetOrEqual(to rhs: [EdgeAnchorGroupEquation.Expression]) -> [EdgeAnchorGroupEquation.Solution] {
        return rhs.map { insetOrEqual(to: $0) }
    }
    @discardableResult
    public func outsetOrEqual(to rhs: EdgeAnchorGroupEquation.Expression) -> EdgeAnchorGroupEquation.Solution {
        return relation(.outsetOrEqual, rhs).solution
    }
    @discardableResult
    public func outsetOrEqual(to rhs: [EdgeAnchorGroupEquation.Expression]) -> [EdgeAnchorGroupEquation.Solution] {
        return rhs.map { outsetOrEqual(to: $0) }
    }
}
