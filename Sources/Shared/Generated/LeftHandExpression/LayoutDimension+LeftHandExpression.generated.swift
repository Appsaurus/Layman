// Generated using Sourcery 0.15.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

//
//  LayoutDimension+LeftHandExpression.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/4/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

extension LayoutDimension: LeftHandExpression {
    public typealias LinearEquation = LayoutRelationship<LayoutDimension>

    public func relation(_ relation: Constraint.Relation, _ rhs: LayoutDimension) -> LinearEquation {
        return LinearEquation(self, relation, rhs)
    }
    public func relation(_ relation: Constraint.Relation, _ rhs: E) -> LinearEquation {
        return LinearEquation(self, relation, rhs)
    }
}
