//
//  CoefficientEquatable.swift
//  Layman
//
//  Created by Brian Strobach on 2/14/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

extension CoefficientEquatable where LinearEquation.Variable == Self {

    public func relation(_ relation: LayoutRelation, _ rhs: LayoutConstant) -> LinearEquation {
        return LinearEquation(self, relation, rhs)
    }

    public func relation(_ relation: LayoutRelation, _ rhs: LayoutMultiplier) -> LinearEquation {
        return LinearEquation(self, relation, .multiplier(rhs))
    }

    public func relation(_ relation: LayoutRelation, _ rhs: LayoutCoefficient) -> LinearEquation {
        return LinearEquation(self, relation, rhs)
    }

    public func relation(_ relation: LayoutRelation, _ rhs: RelativeLayoutConstant) -> LinearEquation {
        return LinearEquation(self, relation, rhs)
    }
}

extension View: CoefficientEquatable {

    public typealias LinearEquation = LayoutDimensionPairEquation

    public func relation(_ relation: LayoutRelation, _ rhs: LayoutConstant) -> LayoutDimensionPairEquation {
        return self.relation(relation, LayoutSize(width: rhs, height: rhs))
    }

    public func relation(_ relation: LayoutRelation, _ rhs: LayoutCoefficientPair) -> LayoutDimensionPairEquation {
        return LayoutDimensionPairEquation(sizeAnchors, relation, rhs)
    }

    public func relation(_ relation: LayoutRelation, _ rhs: Multiplier) -> LinearEquation {
        return self.relation(relation, .multiplier(rhs))
    }

    public func relation(_ relation: LayoutRelation, _ rhs: RelativeLayoutConstant) -> LayoutDimensionPairEquation {
        return LayoutDimensionPairEquation(sizeAnchors, relation, rhs)
    }
}

extension View: CoefficientsEquatable {

    public func relation(_ relation: LayoutRelation, _ rhs: LayoutCoefficientTuple) -> LayoutDimensionPairEquation {
        return self.relation(relation, LayoutCoefficientPair(rhs.first, rhs.second))
    }

    public func relation(_ relation: LayoutRelation, _ rhs: LayoutConstantTuple) -> LayoutDimensionPairEquation {
        return self.relation(relation, LayoutCoefficientPair(.constant(rhs.first), .constant(rhs.second)))
    }

    public func relation(_ relation: LayoutRelation, _ rhs: LayoutCoefficient) -> LayoutDimensionPairEquation {
        return self.relation(relation, LayoutCoefficientPair(rhs.copy()))
    }

    public func relation(_ relation: LayoutRelation, _ rhs: RelativeLayoutConstantTuple) -> LayoutDimensionPairEquation {
           return self.relation(relation, (rhs.constant.first, rhs.constant.second))
    }
}
