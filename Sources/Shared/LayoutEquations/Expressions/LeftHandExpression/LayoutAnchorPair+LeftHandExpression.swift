//
//  LayoutAnchorPair+LeftHandExpression.swift
//  Layman
//
//  Created by Brian Strobach on 1/20/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

extension LayoutAnchorPair: LeftHandLayoutExpression, CoefficientEquatable {

    public typealias LinearEquation = LayoutAnchorPairEquation<FA, SA>

    public func relation(_ relation: Relation, _ rhs: LayoutAnchorPair<FA, SA>) -> LinearEquation {
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
