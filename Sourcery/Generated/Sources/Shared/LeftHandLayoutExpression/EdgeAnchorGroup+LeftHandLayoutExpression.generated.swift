// Generated using Sourcery 0.15.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

//
//  EdgeAnchorGroup+LeftHandLayoutExpression.swift
//  Layman
//
//  Created by Brian Strobach on 1/4/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

extension EdgeAnchorGroup: LeftHandLayoutExpression, CoefficientEquatable {
    public typealias LinearEquation = EdgeAnchorGroupEquation

    public func relation(_ relation: LayoutRelation, _ rhs: EdgeAnchorGroup) -> LinearEquation {
        return LinearEquation(self, relation, rhs)
    }

    public func relation(_ relation: LayoutRelation, _ rhs: RightHandExpression) -> LinearEquation {
        return LinearEquation(self, relation, rhs)
    }

    public func relation(_ relation: LayoutRelation, _ rhs: LayoutConstant) -> LinearEquation {
        return LinearEquation(self, relation, rhs)
    }

    public func relation(_ relation: LayoutRelation, _ rhs: LayoutMultiplier) -> LinearEquation {
        return LinearEquation(self, relation, .multiplier(rhs))
    }

    public func relation(_ relation: LayoutRelation, _ rhs: LayoutCoefficient) -> LinearEquation {
        return LinearEquation(self, relation, rhs)
    }

    public func relation(_ relation: LayoutRelation, _ rhs: RelativeLayoutConstant) -> LinearEquation {
        return LinearEquation(self, relation, rhs)
    }
}

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
        return rhs.map { relation(.equal, $0).solution }
    }
    @discardableResult
    public func lessThanOrEqual(to rhs: EdgeAnchorGroup) -> EdgeAnchorGroupEquation.Solution {
        return relation(.lessThanOrEqual, rhs).solution
    }
    @discardableResult
    public func lessThanOrEqual(to rhs: [EdgeAnchorGroup]) -> [EdgeAnchorGroupEquation.Solution] {
        return rhs.map { relation(.lessThanOrEqual, $0).solution }
    }

    @discardableResult
    public func greaterThanOrEqual(to rhs: EdgeAnchorGroup) -> EdgeAnchorGroupEquation.Solution {
        return relation(.greaterThanOrEqual, rhs).solution
    }
    @discardableResult
    public func greaterThanOrEqual(to rhs: [EdgeAnchorGroup]) -> [EdgeAnchorGroupEquation.Solution] {
        return rhs.map { relation(.greaterThanOrEqual, $0).solution }
    }
    @discardableResult
    public func inset(from rhs: EdgeAnchorGroup) -> EdgeAnchorGroupEquation.Solution {
        return relation(.insetFrom, rhs).solution
    }
    @discardableResult
    public func inset(from rhs: [EdgeAnchorGroup]) -> [EdgeAnchorGroupEquation.Solution] {
        return rhs.map { relation(.insetFrom, $0).solution }
    }
    @discardableResult
    public func outset(from rhs: EdgeAnchorGroup) -> EdgeAnchorGroupEquation.Solution {
        return relation(.outsetFrom, rhs).solution
    }
    @discardableResult
    public func outset(from rhs: [EdgeAnchorGroup]) -> [EdgeAnchorGroupEquation.Solution] {
        return rhs.map { relation(.outsetFrom, $0).solution }
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
        return rhs.map { relation(.equal, $0).solution }
    }
    @discardableResult
    public func lessThanOrEqual(to rhs: EdgeAnchorGroupEquation.Expression) -> EdgeAnchorGroupEquation.Solution {
        return relation(.lessThanOrEqual, rhs).solution
    }
    @discardableResult
    public func lessThanOrEqual(to rhs: [EdgeAnchorGroupEquation.Expression]) -> [EdgeAnchorGroupEquation.Solution] {
        return rhs.map { relation(.lessThanOrEqual, $0).solution }
    }

    @discardableResult
    public func greaterThanOrEqual(to rhs: EdgeAnchorGroupEquation.Expression) -> EdgeAnchorGroupEquation.Solution {
        return relation(.greaterThanOrEqual, rhs).solution
    }
    @discardableResult
    public func greaterThanOrEqual(to rhs: [EdgeAnchorGroupEquation.Expression]) -> [EdgeAnchorGroupEquation.Solution] {
        return rhs.map { relation(.greaterThanOrEqual, $0).solution }
    }
    @discardableResult
    public func inset(from rhs: EdgeAnchorGroupEquation.Expression) -> EdgeAnchorGroupEquation.Solution {
        return relation(.insetFrom, rhs).solution
    }
    @discardableResult
    public func inset(from rhs: [EdgeAnchorGroupEquation.Expression]) -> [EdgeAnchorGroupEquation.Solution] {
        return rhs.map { relation(.insetFrom, $0).solution }
    }
    @discardableResult
    public func outset(from rhs: EdgeAnchorGroupEquation.Expression) -> EdgeAnchorGroupEquation.Solution {
        return relation(.outsetFrom, rhs).solution
    }
    @discardableResult
    public func outset(from rhs: [EdgeAnchorGroupEquation.Expression]) -> [EdgeAnchorGroupEquation.Solution] {
        return rhs.map { relation(.outsetFrom, $0).solution }
    }
}
