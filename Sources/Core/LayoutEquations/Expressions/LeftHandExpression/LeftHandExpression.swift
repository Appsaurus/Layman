//
//  LeftHandExpression.swift
//  Layman
//
//  Created by Brian Strobach on 1/21/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//
import Foundation

public protocol LeftHandLayoutExpression: LinearEquationTyped {
    func relation(_ relation: LayoutRelation, _ rhs: Self) -> LinearEquation
    func relation(_ relation: LayoutRelation, _ rhs: RightHandExpression) -> LinearEquation

}

extension LeftHandLayoutExpression where LayoutVariable == Self {
    public func relation(_ relation: LayoutRelation, _ rhs: Self) -> LinearEquation {
        return LinearEquation(self, relation, rhs)
    }

    public func relation(_ relation: LayoutRelation, _ rhs: RightHandExpression) -> LinearEquation {
        return LinearEquation(self, relation, rhs)
    }
}

extension LeftHandLayoutExpression {

    @discardableResult
    public func equal(to rhs: Self) -> Solution {
        return relation(.equal, rhs).solution
    }
    @discardableResult
    public func equal(to rhs: [Self]) -> [Solution] {
        return rhs.map { relation(.equal, $0).solution }
    }
    @discardableResult
    public func lessThanOrEqual(to rhs: Self) -> Solution {
        return relation(.lessThanOrEqual, rhs).solution
    }
    @discardableResult
    public func lessThanOrEqual(to rhs: [Self]) -> [Solution] {
        return rhs.map { relation(.lessThanOrEqual, $0).solution }
    }

    @discardableResult
    public func greaterThanOrEqual(to rhs: Self) -> Solution {
        return relation(.greaterThanOrEqual, rhs).solution
    }
    @discardableResult
    public func greaterThanOrEqual(to rhs: [Self]) -> [Solution] {
        return rhs.map { relation(.greaterThanOrEqual, $0).solution }
    }
    @discardableResult
    public func insetOrEqual(to rhs: Self) -> Solution {
        return relation(.insetOrEqual, rhs).solution
    }
    @discardableResult
    public func insetOrEqual(to rhs: [Self]) -> [Solution] {
        return rhs.map { relation(.insetOrEqual, $0).solution }
    }
    @discardableResult
    public func outsetOrEqual(to rhs: Self) -> Solution {
        return relation(.outsetOrEqual, rhs).solution
    }
    @discardableResult
    public func outsetOrEqual(to rhs: [Self]) -> [Solution] {
        return rhs.map { relation(.outsetOrEqual, $0).solution }
    }
}

// MARK: Expressions
extension LeftHandLayoutExpression {

    @discardableResult
    public func equal(to rhs: RightHandExpression) -> Solution {
        return relation(.equal, rhs).solution
    }

    @discardableResult
    public func equal(to rhs: [RightHandExpression]) -> [Solution] {
        return rhs.map { relation(.equal, $0).solution }
    }

    @discardableResult
    public func lessThanOrEqual(to rhs: RightHandExpression) -> Solution {
        return relation(.lessThanOrEqual, rhs).solution
    }

    @discardableResult
    public func lessThanOrEqual(to rhs: [RightHandExpression]) -> [Solution] {
        return rhs.map { relation(.lessThanOrEqual, $0).solution }
    }

    @discardableResult
    public func greaterThanOrEqual(to rhs: RightHandExpression) -> Solution {
        return relation(.greaterThanOrEqual, rhs).solution
    }

    @discardableResult
    public func greaterThanOrEqual(to rhs: [RightHandExpression]) -> [Solution] {
        return rhs.map { relation(.greaterThanOrEqual, $0).solution }
    }

    @discardableResult
    public func insetOrEqual(to rhs: RightHandExpression) -> Solution {
        return relation(.insetOrEqual, rhs).solution
    }

    @discardableResult
    public func insetOrEqual(to rhs: [RightHandExpression]) -> [Solution] {
        return rhs.map { relation(.insetOrEqual, $0).solution }
    }

    @discardableResult
    public func outsetOrEqual(to rhs: RightHandExpression) -> Solution {
        return relation(.outsetOrEqual, rhs).solution
    }

    @discardableResult
    public func outsetOrEqual(to rhs: [RightHandExpression]) -> [Solution] {
        return rhs.map { relation(.outsetOrEqual, $0).solution }
    }
}
