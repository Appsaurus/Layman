//
//  View+LeftHandSizeRelatableExpression.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/23/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

extension View: LayoutSizeEquatable {

    public func relation(_ relation: Relation, _ rhs: LayoutSize) -> LayoutDimensionPairRelationship {
        let sizeConfiguration = LayoutCoefficientPair(.constant(rhs.width), .constant(rhs.height))
        return LayoutDimensionPairRelationship(sizeAnchors, relation, sizeConfiguration)
    }
}

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
}

extension View: CoefficientsEquatable {
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

extension View: LeftHandLayoutExpression {
    public func relation(_ relation: Relation, _ rhs: View) -> LayoutDimensionPairRelationship {
        return self.relation(relation, LayoutDimensionPairExpression(variable: rhs.sizeAnchors))
    }

    public func relation(_ relation: Relation, _ rhs: LayoutDimensionPairExpression) -> LayoutDimensionPairRelationship {
        return self.size.relation(relation, rhs)
    }
}
