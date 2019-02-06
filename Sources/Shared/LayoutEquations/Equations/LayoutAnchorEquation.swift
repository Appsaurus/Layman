//
//  LayoutAnchorEquation.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/10/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

public final class LayoutAnchorEquation<A: AnchorVariable> {

    public var variable: LayoutAnchor<A>
    public var relation: Constraint.Relation
    public var relatedVariable: LayoutAnchor<A>?
    public var coefficients: LayoutCoefficient

    public init(_ variable: LayoutAnchor<A>,
                _ relation: Constraint.Relation,
                _ relatedVariable: LayoutAnchor<A>?,
                _ coefficients: LayoutCoefficient = .default) {
        self.variable = variable
        self.relation = relation
        self.relatedVariable = relatedVariable
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
        if let relatedVariable = relatedVariable {
            return constraintRelated(to: relatedVariable).configured(with: coefficients)
        }

        if let layoutDimension = variable as? LayoutDimension {
            guard coefficients.multiplier != nil, let parentAnchor = layoutDimension.matchingParentAnchor else {
                return sizeConstraint(for: layoutDimension).configured(with: coefficients)
            }
            return LayoutAnchorEquation<LayoutDimension>(layoutDimension, relation, parentAnchor, coefficients).inactiveConstraint
        }

        if let xAxisAnchor = variable as? XAxisAnchor, let parentAnchor = xAxisAnchor.matchingParentAnchor {
            return LayoutAnchorEquation<XAxisAnchor>(xAxisAnchor, relation, parentAnchor, coefficients).inactiveConstraint
        }

        if let yAxisAnchor = variable as? YAxisAnchor, let parentAnchor = yAxisAnchor.matchingParentAnchor {
            return LayoutAnchorEquation<YAxisAnchor>(yAxisAnchor, relation, parentAnchor, coefficients).inactiveConstraint
        }

        preconditionFailure("""
                            LayoutAnchorEquation must contain one of the following:
                            1. Two anchors
                            2. One view's anchor and a constant
                            """)

    }

    internal func constraintRelated(to relatedVariable: LayoutAnchor<A>) -> Constraint {
        switch relation {
        case .lessThanOrEqual:
            return variable.constraint(lessThanOrEqualTo: relatedVariable)
        case .equal:
            return variable.constraint(equalTo: relatedVariable)
        case .greaterThanOrEqual:
            return variable.constraint(greaterThanOrEqualTo: relatedVariable)
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

extension LayoutAnchorEquation: LinearEquation {
    public typealias Expression = LayoutAnchorExpression<A>

    public typealias Solution = Constraint

    public var solution: Constraint {
        return constraint
    }
}
