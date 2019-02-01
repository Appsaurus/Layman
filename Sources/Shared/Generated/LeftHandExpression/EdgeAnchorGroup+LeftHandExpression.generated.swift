// Generated using Sourcery 0.15.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

//
//  EdgeAnchorGroup+LeftHandExpression.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/4/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

extension EdgeAnchorGroup: LeftHandLayoutExpression {
    public typealias LinearEquation = EdgeAnchorGroupRelationship

    public func relation(_ relation: Constraint.Relation, _ rhs: EdgeAnchorGroup) -> LinearEquation {
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
