//
//  View+LeftHandSizeRelatableExpression.swift
//  Layman
//
//  Created by Brian Strobach on 1/23/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

// MARK: LayoutAnchorPair
extension LayoutAnchorPair: CoefficientsEquatable {

    public func relation(_ relation: LayoutRelation, _ rhs: LayoutCoefficientTuple) -> LayoutAnchorPairEquation<FA, SA> {
        return LinearEquation(self, relation, LayoutCoefficientPair(rhs.first, rhs.second))
    }

    public func relation(_ relation: LayoutRelation, _ rhs: LayoutConstantTuple) -> LayoutAnchorPairEquation<FA, SA> {
        return LinearEquation(self, relation, LayoutCoefficientPair(.constant(rhs.first), .constant(rhs.second)))
    }

    public func relation(_ relation: LayoutRelation, _ rhs: LayoutCoefficient) -> LinearEquation {
        return LinearEquation(self, relation, LayoutCoefficientPair(rhs.copy()))
    }

    public func relation(_ relation: LayoutRelation, _ rhs: RelativeLayoutConstantTuple) -> LayoutAnchorPairEquation<FA, SA> {
        assertionFailure()
        return LinearEquation(self, relation, LayoutCoefficientPair(.constant(rhs.constant.first), .constant(rhs.constant.second)))
    }
}

// MARK: EdgeAnchorGroup
extension EdgeAnchorGroup: CoefficientsEquatable {

    public func relation(_ relation: LayoutRelation, _ rhs: LayoutCoefficientTuple) -> EdgeAnchorGroupEquation {
        return LinearEquation(self, relation, EdgeAnchorsGroupCoefficients(rhs.first, rhs.second))
    }

    public func relation(_ relation: LayoutRelation, _ rhs: LayoutConstantTuple) -> EdgeAnchorGroupEquation {
        return LinearEquation(self, relation, EdgeAnchorsGroupCoefficients(.constant(rhs.first), .constant(rhs.second)))
    }

    public func relation(_ relation: LayoutRelation, _ rhs: LayoutCoefficient) -> LinearEquation {
        return LinearEquation (self, relation, EdgeAnchorsGroupCoefficients(rhs.copy()))
    }

    public func relation(_ relation: LayoutRelation, _ rhs: RelativeLayoutConstantTuple) -> EdgeAnchorGroupEquation {
        assertionFailure()
        return LinearEquation(self, relation, EdgeAnchorsGroupCoefficients(.constant(rhs.constant.first), .constant(rhs.constant.second)))
    }
}

extension View: LayoutSizeEquatable {

    public func relation(_ relation: LayoutRelation, _ rhs: LayoutSize) -> LayoutDimensionPairRelationship {
        let sizeConfiguration = LayoutCoefficientPair(.constant(rhs.width), .constant(rhs.height))
        return LayoutDimensionPairRelationship(sizeAnchors, relation, sizeConfiguration)
    }
}

extension View: LeftHandLayoutExpression {
    public func relation(_ relation: LayoutRelation, _ rhs: View) -> LayoutDimensionPairRelationship {
        return self.relation(relation, LayoutDimensionPairExpression(variable: rhs.sizeAnchors))
    }

    public func relation(_ relation: LayoutRelation, _ rhs: LayoutDimensionPairExpression) -> LayoutDimensionPairRelationship {
        return self.size.relation(relation, rhs)
    }
}
