//
//  LayoutDimensionPair+LeftHandSizeRelatableExpression.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/22/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

extension LayoutAnchorPair: LayoutSizeEquatable where FA == LayoutDimension, SA == LayoutDimension {
    public func relation(_ relation: Constraint.Relation, _ rhs: LayoutCoefficientPair) -> LayoutDimensionPairRelationship {
        return LayoutDimensionPairRelationship(self, relation, rhs)
    }

    public func relation(_ relation: Constraint.Relation, _ rhs: LayoutSize) -> LayoutDimensionPairRelationship {
        let sizeConfiguration = LayoutCoefficientPair(.constant(rhs.width), .constant(rhs.height))
        return LayoutDimensionPairRelationship(self, relation, sizeConfiguration)
    }
}
