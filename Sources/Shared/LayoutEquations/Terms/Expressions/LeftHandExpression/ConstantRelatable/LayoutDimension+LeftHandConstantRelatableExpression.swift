//
//  LayoutDimension+LeftHandConstantRelatableExpression.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/22/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

extension LayoutDimension: LeftHandConstantRelatableExpression {
    public func relation(_ relation: Constraint.Relation, _ rhs: LayoutConstant) -> LayoutDimensionRelationship {
        return LayoutDimensionRelationship(self, relation, LayoutConfiguration.constant(rhs))
    }

    public func relation(_ relation: Constraint.Relation, _ rhs: LayoutConfiguration) -> LayoutDimensionRelationship {
        return LayoutDimensionRelationship(self, relation, rhs)
    }
}