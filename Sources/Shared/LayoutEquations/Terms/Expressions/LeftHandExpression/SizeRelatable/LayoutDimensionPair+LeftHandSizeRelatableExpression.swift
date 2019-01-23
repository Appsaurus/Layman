//
//  LayoutDimensionPair+LeftHandSizeRelatableExpression.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/22/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

extension LayoutAnchorPair: LeftHandSizeRelatableExpression where FA == LayoutDimension, SA == LayoutDimension {
    public func relation(_ relation: Constraint.Relation, _ rhs: LayoutConfigurationPair) -> LayoutDimensionPairRelationship {
        return LayoutDimensionPairRelationship(self, relation, rhs)
    }

    public func relation(_ relation: Constraint.Relation, _ rhs: LayoutConstant) -> LayoutDimensionPairRelationship {
        return self.relation(relation, LayoutSize(side: rhs))
    }

    public func relation(_ relation: Constraint.Relation, _ rhs: LayoutSize) -> LayoutDimensionPairRelationship {
        let sizeConfiguration = LayoutConfigurationPair(.constant(rhs.width), .constant(rhs.height))
        return LayoutDimensionPairRelationship(self, relation, sizeConfiguration)
    }
}
