//
//  View+LeftHandSizeRelatableExpression.swift
//  Layman
//
//  Created by Brian Strobach on 1/23/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

import UIKit

// MARK: LayoutAnchorPair

extension CoefficientsEquatable where LinearEquation: TupleVariableLinearEquation, LinearEquation.Variable == Self {
    public func relation(_ relation: LayoutRelation, _ rhs: LayoutCoefficientTuple) -> LinearEquation {
        return LinearEquation.init(self, relation, rhs)
    }

    public func relation(_ relation: LayoutRelation, _ rhs: LayoutConstantTuple) -> LinearEquation {
        return LinearEquation(self, relation, rhs)
    }

    public func relation(_ relation: LayoutRelation, _ rhs: RelativeLayoutConstantTuple) -> LinearEquation {
        return LinearEquation(self, relation, rhs)
    }
}

extension View: LayoutSizeEquatable {

    public func relation(_ relation: LayoutRelation, _ rhs: LayoutSize) -> LayoutDimensionPairEquation {
        let sizeConfiguration = LayoutCoefficientPair(.constant(rhs.width), .constant(rhs.height))
        return LayoutDimensionPairEquation(sizeAnchors, relation, sizeConfiguration)
    }
}

extension View: LeftHandLayoutExpression {
    public func inferredVariable(from view: View) -> LinearEquation.Variable {
        return view.sizeAnchors
    }

    public func relation(_ relation: LayoutRelation, _ rhs: View) -> LayoutDimensionPairEquation {
        return self.relation(relation, LayoutDimensionPairExpression(variable: rhs.sizeAnchors))
    }
//
//    public func relation(_ relation: LayoutRelation, _ rhs: LayoutDimensionPairExpression) -> LayoutDimensionPairEquation {
//        return self.size.relation(relation, rhs)
//    }
}
