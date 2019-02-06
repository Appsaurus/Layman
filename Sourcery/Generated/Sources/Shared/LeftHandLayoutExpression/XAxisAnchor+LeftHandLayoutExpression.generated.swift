// Generated using Sourcery 0.15.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

//
//  XAxisAnchor+LeftHandLayoutExpression.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/4/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

extension XAxisAnchor: LeftHandLayoutExpression, LeftHandConstantRelatableExpression, LeftHandMultiplierRelatableExpression {
    public typealias LinearEquation = XAxisAnchorEquation

    public func relation(_ relation: Relation, _ rhs: XAxisAnchor) -> LinearEquation {
        return LinearEquation(self, relation, rhs)
    }

    public func relation(_ relation: Relation, _ rhs: RightHandExpression) -> LinearEquation {
        return LinearEquation(self, relation, rhs)
    }

    public func relation(_ relation: Relation, _ rhs: Constant) -> LinearEquation {
        return LinearEquation(self, relation, rhs)
    }

    public func relation(_ relation: Relation, _ rhs: Multiplier) -> LinearEquation {
        return LinearEquation(self, relation, .multiplier(rhs))
    }

    public func relation(_ relation: Relation, _ rhs: Coefficient) -> LinearEquation {
        return LinearEquation(self, relation, rhs)
    }
}
