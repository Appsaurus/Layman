//
//  ViewExpression.swift
//  Layman
//
//  Created by Brian Strobach on 2/19/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

import Foundation

public protocol ViewLayoutExpression: LinearEquationTyped {
    func relation(_ relation: LayoutRelation, _ rhs: View) -> LinearEquation
//    func inverseRelation(_ relation: LayoutRelation, _ rhs: View) -> LinearEquation
}

extension ViewLayoutExpression where LayoutVariable == Self {
    public func relation(_ relation: LayoutRelation, _ rhs: View) -> LinearEquation {
        return LinearEquation(self, relation, rhs)
    }
}

extension ViewLayoutExpression {

    @discardableResult
    public func equal(to rhs: View) -> Solution {
        return relation(.equal, rhs).solution
    }
    @discardableResult
    public func equal(to rhs: [View]) -> [Solution] {
        return rhs.map { relation(.equal, $0).solution }
    }
    @discardableResult
    public func lessThanOrEqual(to rhs: View) -> Solution {
        return relation(.lessThanOrEqual, rhs).solution
    }
    @discardableResult
    public func lessThanOrEqual(to rhs: [View]) -> [Solution] {
        return rhs.map { relation(.lessThanOrEqual, $0).solution }
    }

    @discardableResult
    public func greaterThanOrEqual(to rhs: View) -> Solution {
        return relation(.greaterThanOrEqual, rhs).solution
    }
    @discardableResult
    public func greaterThanOrEqual(to rhs: [View]) -> [Solution] {
        return rhs.map { relation(.greaterThanOrEqual, $0).solution }
    }
    @discardableResult
    public func insetOrEqual(to rhs: View) -> Solution {
        return relation(.insetOrEqual, rhs).solution
    }
    @discardableResult
    public func insetOrEqual(to rhs: [View]) -> [Solution] {
        return rhs.map { relation(.insetOrEqual, $0).solution }
    }
    @discardableResult
    public func outsetOrEqual(to rhs: View) -> Solution {
        return relation(.outsetOrEqual, rhs).solution
    }
    @discardableResult
    public func outsetOrEqual(to rhs: [View]) -> [Solution] {
        return rhs.map { relation(.outsetOrEqual, $0).solution }
    }
}

extension View: ViewLayoutExpression {}

extension View {
    public func relation<L: LinearEquationProtocol>(_ relation: LayoutRelation, _ rhs: L.Variable) -> L {
        return L.init(self, relation, rhs)
    }

    public func relation<L: LinearEquationProtocol>(_ relation: LayoutRelation, _ rhs: L.Expression) -> L {
        return L.init(self, relation, rhs)
    }
}
