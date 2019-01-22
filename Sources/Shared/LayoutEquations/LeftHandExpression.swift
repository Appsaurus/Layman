//
//  LeftHandExpression.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/21/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

public protocol LeftHandExpression {
    associatedtype Expression
    associatedtype LinearEquation: LinearEquatable
    typealias Solution = LinearEquation.Solution

    func relation(_ relation: Constraint.Relation, _ rhs: Self) -> LinearEquation
    func relation(_ relation: Constraint.Relation, _ rhs: Expression) -> LinearEquation
}

extension LeftHandExpression {

    @discardableResult
    public func equal(to rhs: Self) -> Solution {
        return relation(.equal, rhs).solution
    }

    @discardableResult
    public func equal(to rhs: Expression) -> Solution {
        return relation(.equal, rhs).solution
    }

    @discardableResult
    public func equal(to rhs: [Self]) -> [Solution] {
        return rhs.map { relation(.equal, $0).solution }
    }

    @discardableResult
    public func equal(to rhs: [Expression]) -> [Solution] {
        return rhs.map { relation(.equal, $0).solution }
    }

    @discardableResult
    public func lessThanOrEqual(to rhs: Self) -> Solution {
        return relation(.lessThanOrEqual, rhs).solution
    }

    @discardableResult
    public func lessThanOrEqual(to rhs: Expression) -> Solution {
        return relation(.lessThanOrEqual, rhs).solution
    }

    @discardableResult
    public func lessThanOrEqual(to rhs: [Self]) -> [Solution] {
        return rhs.map { relation(.lessThanOrEqual, $0).solution }
    }

    @discardableResult
    public func lessThanOrEqual(to rhs: [Expression]) -> [Solution] {
        return rhs.map { relation(.lessThanOrEqual, $0).solution }
    }

    @discardableResult
    public func greaterThanOrEqual(to rhs: Self) -> Solution {
        return relation(.greaterThanOrEqual, rhs).solution
    }

    @discardableResult
    public func greaterThanOrEqual(to rhs: Expression) -> Solution {
        return relation(.greaterThanOrEqual, rhs).solution
    }

    @discardableResult
    public func greaterThanOrEqual(to rhs: [Self]) -> [Solution] {
        return rhs.map { relation(.greaterThanOrEqual, $0).solution }
    }
    @discardableResult
    public func greaterThanOrEqual(to rhs: [Expression]) -> [Solution] {
        return rhs.map { relation(.greaterThanOrEqual, $0).solution }
    }
}
