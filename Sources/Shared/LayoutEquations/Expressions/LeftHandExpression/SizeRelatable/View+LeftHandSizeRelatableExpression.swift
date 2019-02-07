//
//  View+LeftHandSizeRelatableExpression.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/23/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

extension View: LayoutSizeEquatable {

    public func relation(_ relation: Constraint.Relation, _ rhs: LayoutSize) -> LayoutDimensionPairRelationship {
        let sizeConfiguration = LayoutCoefficientPair(.constant(rhs.width), .constant(rhs.height))
        return LayoutDimensionPairRelationship(sizeAnchors, relation, sizeConfiguration)
    }
}

extension View: CoefficientsEquatable {
    public typealias LinearEquation = LayoutDimensionPairRelationship

    public func relation(_ relation: Relation, _ rhs: Constant) -> LayoutDimensionPairRelationship {
        return self.relation(relation, LayoutSize(width: rhs, height: rhs))
    }

    public func relation(_ relation: Constraint.Relation, _ rhs: LayoutCoefficientPair) -> LayoutDimensionPairRelationship {
        return LayoutDimensionPairRelationship(sizeAnchors, relation, rhs)
    }

    public func relation(_ relation: Constraint.Relation, _ rhs: Multiplier) -> LinearEquation {
        return self.relation(relation, .multiplier(rhs))
    }
}

extension View: CoefficientsGroupEquatable {
    public func relation(_ relation: Constraint.Relation, _ rhs: LayoutCoefficient) -> LayoutDimensionPairRelationship {
        return self.relation(relation, LayoutCoefficientPair(rhs.copy()))
    }
}
