//
//  CoefficientEquatable.swift
//  Layman
//
//  Created by Brian Strobach on 2/14/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

extension View: CoefficientEquatable {


    public typealias LinearEquation = LayoutDimensionPairRelationship

    public func relation(_ relation: Relation, _ rhs: Constant) -> LayoutDimensionPairRelationship {
        return self.relation(relation, LayoutSize(width: rhs, height: rhs))
    }

    public func relation(_ relation: Relation, _ rhs: LayoutCoefficientPair) -> LayoutDimensionPairRelationship {
        return LayoutDimensionPairRelationship(sizeAnchors, relation, rhs)
    }

    public func relation(_ relation: Relation, _ rhs: Multiplier) -> LinearEquation {
        return self.relation(relation, .multiplier(rhs))
    }

    public func relation(_ relation: Relation, _ rhs: RelativeLayoutConstant) -> LayoutDimensionPairRelationship {
        return LayoutDimensionPairRelationship(sizeAnchors, relation, rhs)
    }
}

extension View: CoefficientsEquatable {
    public func relation(_ relation: LayoutRelation, _ rhs: RelativeLayoutConstantTuple) -> LayoutDimensionPairRelationship {

    }

    public func relation(_ relation: Relation, _ rhs: LayoutCoefficientTuple) -> LayoutDimensionPairRelationship {
        return self.relation(relation, LayoutCoefficientPair(rhs.first, rhs.second))
    }

    public func relation(_ relation: Relation, _ rhs: LayoutConstantTuple) -> LayoutDimensionPairRelationship {
        return self.relation(relation, LayoutCoefficientPair(.constant(rhs.first), .constant(rhs.second)))
    }

    public func relation(_ relation: Relation, _ rhs: LayoutCoefficient) -> LayoutDimensionPairRelationship {
        return self.relation(relation, LayoutCoefficientPair(rhs.copy()))
    }
}
