// Generated using Sourcery 0.15.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

//
//  XAxisAnchor+LeftHandExpression.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/4/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

extension XAxisAnchor: LeftHandLayoutExpression {
    public typealias LinearEquation = XAxisAnchorRelationship

    public func relation(_ relation: Constraint.Relation, _ rhs: XAxisAnchor) -> LinearEquation {
        return LinearEquation(self, relation, rhs)
    }
    public func relation(_ relation: Constraint.Relation, _ rhs: RightHandExpression) -> LinearEquation {
        return LinearEquation(self, relation, rhs)
    }
    public func relation(_ relation: Constraint.Relation, _ rhs: RightHandExpression.C.Constant) -> LinearEquation {
        return LinearEquation(self, relation, rhs)
    }

    public func relation(_ relation: Constraint.Relation, _ rhs: RightHandExpression.C) -> LinearEquation {
        return LinearEquation(self, relation, rhs)
    }
}
