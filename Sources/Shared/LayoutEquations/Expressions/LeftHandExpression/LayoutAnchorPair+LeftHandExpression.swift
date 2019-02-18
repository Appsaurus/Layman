//
//  LayoutAnchorPair+LeftHandExpression.swift
//  Layman
//
//  Created by Brian Strobach on 1/20/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

extension LayoutAnchorPair: LeftHandLayoutExpression, CoefficientEquatable {

    public typealias LinearEquation = LayoutAnchorPairEquation<FA, SA>

    public func relation(_ relation: LayoutRelation, _ rhs: LayoutAnchorPair<FA, SA>) -> LinearEquation {
        return LinearEquation(self, relation, rhs)
    }

    public func relation(_ relation: LayoutRelation, _ rhs: RightHandExpression) -> LinearEquation {
        return LinearEquation(self, relation, rhs)
    }

    public func relation(_ relation: LayoutRelation, _ rhs: LayoutConstant) -> LinearEquation {
        return LinearEquation(self, relation, rhs)
    }

    public func relation(_ relation: LayoutRelation, _ rhs: LayoutMultiplier) -> LinearEquation {
        return LinearEquation(self, relation, .multiplier(rhs))
    }

    public func relation(_ relation: LayoutRelation, _ rhs: Coefficient) -> LinearEquation {
        return LinearEquation(self, relation, rhs)
    }

    public func relation(_ relation: LayoutRelation, _ rhs: RelativeLayoutConstant) -> LinearEquation {
        return LinearEquation(self, relation, rhs)
    }

    public func relation(_ relation: LayoutRelation, _ rhs: LayoutCoefficient) -> LinearEquation {
        return LinearEquation(self, relation, Coefficient(rhs.copy()))
    }
}
