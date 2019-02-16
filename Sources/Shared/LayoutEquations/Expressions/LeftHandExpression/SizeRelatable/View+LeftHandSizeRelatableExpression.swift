//
//  View+LeftHandSizeRelatableExpression.swift
//  Layman
//
//  Created by Brian Strobach on 1/23/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

extension CoefficientEquatable {
    public typealias RelativeLayoutConstant = Layman.RelativeLayoutConstant
}
extension CoefficientsEquatable {
    public typealias LayoutCoefficient = Layman.LayoutCoefficient
    public typealias LayoutConstantTuple = Layman.LayoutConstantTuple
    public typealias LayoutCoefficientTuple = (first: LayoutCoefficient, second: LayoutCoefficient)
    public typealias RelativeLayoutConstantTuple = Layman.RelativeLayoutConstantTuple
}

// MARK: LayoutAnchorPair
extension LayoutAnchorPair: CoefficientsEquatable {


    public func relation(_ relation: Relation, _ rhs: LayoutCoefficientTuple) -> LayoutAnchorPairEquation<FA, SA> {
        return LinearEquation(self, relation, LayoutCoefficientPair(rhs.first, rhs.second))
    }

    public func relation(_ relation: Relation, _ rhs: LayoutConstantTuple) -> LayoutAnchorPairEquation<FA, SA> {
        return LinearEquation(self, relation, LayoutCoefficientPair(.constant(rhs.first), .constant(rhs.second)))
    }

    public func relation(_ relation: Relation, _ rhs: LayoutCoefficient) -> LinearEquation {
        return LinearEquation(self, relation, LayoutCoefficientPair(rhs.copy()))
    }

    public func relation(_ relation: LayoutRelation, _ rhs: RelativeLayoutConstantTuple) -> LayoutAnchorPairEquation<FA, SA> {
        return LinearEquation(self, relation, LayoutCoefficientPair(rhs.copy()))
    }
}

// MARK: EdgeAnchorGroup
extension EdgeAnchorGroup: CoefficientsEquatable {
    public func relation(_ relation: Relation, _ rhs: LayoutCoefficientTuple) -> EdgeAnchorGroupEquation {
        return LinearEquation(self, relation, EdgeAnchorsGroupCoefficients(rhs.first, rhs.second))
    }

    public func relation(_ relation: Relation, _ rhs: LayoutConstantTuple) -> EdgeAnchorGroupEquation {
        return LinearEquation(self, relation, EdgeAnchorsGroupCoefficients(.constant(rhs.first), .constant(rhs.second)))
    }

    public func relation(_ relation: Relation, _ rhs: LayoutCoefficient) -> LinearEquation {
        return LinearEquation (self, relation, EdgeAnchorsGroupCoefficients(rhs.copy()))
    }
}

extension View: LayoutSizeEquatable {

    public func relation(_ relation: Relation, _ rhs: LayoutSize) -> LayoutDimensionPairRelationship {
        let sizeConfiguration = LayoutCoefficientPair(.constant(rhs.width), .constant(rhs.height))
        return LayoutDimensionPairRelationship(sizeAnchors, relation, sizeConfiguration)
    }
}



extension View: LeftHandLayoutExpression {
    public func relation(_ relation: Relation, _ rhs: View) -> LayoutDimensionPairRelationship {
        return self.relation(relation, LayoutDimensionPairExpression(variable: rhs.sizeAnchors))
    }

    public func relation(_ relation: Relation, _ rhs: LayoutDimensionPairExpression) -> LayoutDimensionPairRelationship {
        return self.size.relation(relation, rhs)
    }
}
