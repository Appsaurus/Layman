//
//  LayoutRelationship.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/10/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

public final class LayoutRelationship<A: AnchorVariable> {

    public var variable: LayoutAnchor<A>
    public var relation: Constraint.Relation
    public var relatedAnchor: LayoutAnchor<A>?
    public var coefficients: LayoutCoefficient

    public init(_ variable: LayoutAnchor<A>,
                _ relation: Constraint.Relation,
                _ relatedAnchor: LayoutAnchor<A>?,
                _ coefficients: LayoutCoefficient = .default) {
        self.variable = variable
        self.relation = relation
        self.relatedAnchor = relatedAnchor
        self.coefficients = coefficients
    }

    public var constraint: Constraint {
        guard coefficients.active else { return inactiveConstraint }
        return inactiveConstraint.activated()
    }

    public var constraintInvertedAsInset: Constraint {
        let invertestConstraint = inactiveConstraint.invertedAsInset
        guard coefficients.active else { return invertestConstraint }
        return invertestConstraint.activated()

    }

    internal var inactiveConstraint: Constraint {
        if let relatedAnchor = relatedAnchor {
            return constraintRelated(to: relatedAnchor).configured(with: coefficients)
        }

        if let layoutDimension = variable as? LayoutDimension {
            guard coefficients.multiplier != nil, let parentAnchor = layoutDimension.matchingParentAnchor else {
                return sizeConstraint(for: layoutDimension).configured(with: coefficients)
            }
            return LayoutRelationship<LayoutDimension>(layoutDimension, relation, parentAnchor, coefficients).inactiveConstraint
        }

        if let xAxisAnchor = variable as? XAxisAnchor, let parentAnchor = xAxisAnchor.matchingParentAnchor {
            return LayoutRelationship<XAxisAnchor>(xAxisAnchor, relation, parentAnchor, coefficients).inactiveConstraint
        }

        if let yAxisAnchor = variable as? YAxisAnchor, let parentAnchor = yAxisAnchor.matchingParentAnchor {
            return LayoutRelationship<YAxisAnchor>(yAxisAnchor, relation, parentAnchor, coefficients).inactiveConstraint
        }

        preconditionFailure("""
                            LayoutRelationship must contain one of the following:
                            1. Two anchors
                            2. One view's anchor and a constant
                            """)

    }

    internal func constraintRelated(to relatedAnchor: LayoutAnchor<A>) -> Constraint {
        switch relation {
        case .lessThanOrEqual:
            return variable.constraint(lessThanOrEqualTo: relatedAnchor)
        case .equal:
            return variable.constraint(equalTo: relatedAnchor)
        case .greaterThanOrEqual:
            return variable.constraint(greaterThanOrEqualTo: relatedAnchor)
        }
    }

    internal func sizeConstraint(for anchor: LayoutDimension) -> Constraint {
        let constraint: Constraint = {
            switch relation {
            case .lessThanOrEqual:
                return anchor.constraint(lessThanOrEqualToConstant: coefficients.constant)
            case .equal:
                return anchor.constraint(equalToConstant: coefficients.constant)
            case .greaterThanOrEqual:
                return anchor.constraint(greaterThanOrEqualToConstant: coefficients.constant)
            }
        }()
        return constraint
    }

}

extension LayoutRelationship: LinearEquation {
    public typealias Expression = LayoutExpression<A>

    public typealias Solution = Constraint

    public var solution: Constraint {
        return constraint
    }
}
