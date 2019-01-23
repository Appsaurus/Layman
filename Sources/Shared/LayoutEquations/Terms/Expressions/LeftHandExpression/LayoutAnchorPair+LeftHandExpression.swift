//
//  LayoutAnchorPair+LeftHandExpression.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/20/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

extension LayoutAnchorPair: LeftHandExpression {
    public typealias LinearEquation = LayoutPairRelationship<FA, SA>

    public func relation(_ relation: Constraint.Relation, _ rhs: LayoutAnchorPair<FA, SA>) -> LinearEquation {
        return LinearEquation(self, relation, rhs)
    }

    public func relation(_ relation: Constraint.Relation, _ rhs: RightHandExpression ) -> LinearEquation {
        return LinearEquation(self, relation, rhs)
    }
}
