//
//  CoefficientGroup.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 2/5/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

extension CoefficientsEquatable {
    public typealias LayoutCoefficient = UILayoutKit.LayoutCoefficient
    public typealias LayoutConstantTuple = UILayoutKit.LayoutConstantTuple
    public typealias LayoutCoefficientTuple = (first: LayoutCoefficient, second: LayoutCoefficient)
}

// MARK: LayoutAnchorPair
extension LayoutAnchorPair: CoefficientsEquatable {
    public func relation(_ relation: Relation, _ rhs: LayoutCoefficientTuple) -> LayoutAnchorPairEquation<FA, SA> {
        return LinearEquation(self, relation, LayoutCoefficientPair(rhs.first, rhs.second))
    }

    public func relation(_ relation: Relation, _ rhs: LayoutConstantTuple) -> LayoutAnchorPairEquation<FA, SA> {
        return LinearEquation(self, relation, LayoutCoefficientPair(.constant(rhs.first), .constant(rhs.second)))
    }

    public func relation(_ relation: Relation, _ rhs: LayoutCoefficient) -> LinearEquation {
        return LinearEquation(self, relation, LayoutCoefficientPair(rhs.copy()))
    }
}

// MARK: EdgeAnchorGroup
extension EdgeAnchorGroup: CoefficientsEquatable {
    public func relation(_ relation: Relation, _ rhs: LayoutCoefficientTuple) -> EdgeAnchorGroupEquation {
         return LinearEquation(self, relation, EdgeAnchorsGroupCoefficients(rhs.first, rhs.second))
    }

    public func relation(_ relation: Relation, _ rhs: LayoutConstantTuple) -> EdgeAnchorGroupEquation {
        return LinearEquation(self, relation, EdgeAnchorsGroupCoefficients(.constant(rhs.first), .constant(rhs.second)))
    }

    public func relation(_ relation: Relation, _ rhs: LayoutCoefficient) -> LinearEquation {
        return LinearEquation (self, relation, EdgeAnchorsGroupCoefficients(rhs.copy()))
    }
}

extension LayoutCoefficient {
    internal func copy() -> LayoutCoefficient {
        let config = LayoutCoefficient()
        config.active = active
        config.constant = constant
        config.multiplier = multiplier
        config.priority = priority
        return config
    }
}
