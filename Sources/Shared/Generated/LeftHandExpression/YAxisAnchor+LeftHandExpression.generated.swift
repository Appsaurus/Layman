// Generated using Sourcery 0.15.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

//
//  YAxisAnchor+LeftHandExpression.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/4/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

extension YAxisAnchor: LeftHandExpression {
    public typealias LinearEquation = LayoutRelationship<YAxisAnchor>

    public func relation(_ relation: Constraint.Relation, _ rhs: YAxisAnchor) -> LinearEquation {
        return LinearEquation(self, relation, rhs)
    }
    public func relation(_ relation: Constraint.Relation, _ rhs: RightHandExpression) -> LinearEquation {
        return LinearEquation(self, relation, rhs)
    }
}
