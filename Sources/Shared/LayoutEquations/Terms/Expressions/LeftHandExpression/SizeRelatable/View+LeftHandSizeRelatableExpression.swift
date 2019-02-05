//
//  View+LeftHandSizeRelatableExpression.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/23/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

extension View: LeftHandSizeRelatableExpression {

    public func relation(_ relation: Constraint.Relation, _ rhs: LayoutSize) -> LayoutDimensionPairRelationship {
        let sizeConfiguration = LayoutConfigurationPair(.constant(rhs.width), .constant(rhs.height))
        return LayoutDimensionPairRelationship(sizeAnchors, relation, sizeConfiguration)
    }
}

extension View: LeftHandConstantRelatableExpression {
    public typealias LinearEquation = LayoutDimensionPairRelationship

    public func relation(_ relation: Relation, _ rhs: Constant) -> LayoutDimensionPairRelationship {
        return self.relation(relation, LayoutSize(width: rhs, height: rhs))
    }

    public func relation(_ relation: Constraint.Relation, _ rhs: LayoutConfigurationPair) -> LayoutDimensionPairRelationship {
        return LayoutDimensionPairRelationship(sizeAnchors, relation, rhs)
    }
}

extension View: LeftHandMultiplierRelatableExpression {
    public func relation(_ relation: Constraint.Relation, _ rhs: Multiplier) -> LinearEquation {
        return self.relation(relation, .multiplier(rhs))
    }
}

extension View: LeftHandLayoutConfigurationRelatableExpression {
    public func relation(_ relation: Constraint.Relation, _ rhs: LayoutConfiguration) -> LayoutDimensionPairRelationship {
        return self.relation(relation, LayoutConfigurationPair(rhs.copy()))
    }
}
