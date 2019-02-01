// Generated using Sourcery 0.15.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

//
//  YAxisAnchor+LeftHandExpression.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/4/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

extension YAxisAnchor: LeftHandLayoutExpression {


    public typealias LinearEquation = YAxisAnchorRelationship

    public func relation(_ relation: Constraint.Relation, _ rhs: YAxisAnchor) -> LinearEquation {
        return LinearEquation(self, relation, rhs)
    }
    public func relation(_ relation: Constraint.Relation, _ rhs: RightHandExpression) -> LinearEquation {
        return LinearEquation(self, relation, rhs)
    }

    public func relation(_ relation: Constraint.Relation, _ rhs: LinearEquation.E.C.Constant) -> LinearEquation {
        return LinearEquation(self, relation, rhs)
    }

    public func relation(_ relation: Constraint.Relation, _ rhs: LinearEquation.E.C) -> LinearEquation {
        return LinearEquation(self, relation, rhs)
    }
//    public func relation(_ relation: Constraint.Relation, _ rhs: RightHandExpression.C.Constant) -> LinearEquation {
//        return LinearEquation(self, relation, rhs)
//    }
//    public func relation(_ relation: Constraint.Relation, _ rhs: RightHandExpression.C) -> LinearEquation {
//        return LinearEquation(self, relation, rhs)
//    }
}
