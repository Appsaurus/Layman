//
//  LayoutDimensionPair+LeftHandSizeRelatableExpression.swift
//  Layman
//
//  Created by Brian Strobach on 1/22/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

extension LayoutAnchorPair: LayoutSizeEquatable where FA == LayoutDimension, SA == LayoutDimension {
    public func relation(_ relation: LayoutRelation, _ rhs: LayoutCoefficientPair) -> LayoutDimensionPairEquation {
        return LayoutDimensionPairEquation(self, relation, rhs)
    }

    public func relation(_ relation: LayoutRelation, _ rhs: LayoutSize) -> LayoutDimensionPairEquation {
        let sizeConfiguration = LayoutCoefficientPair(.constant(rhs.width), .constant(rhs.height))
        return LayoutDimensionPairEquation(self, relation, sizeConfiguration)
    }
}
