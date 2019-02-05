//
//  LayoutPairRelationship.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/10/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

public final class LayoutPairRelationship<F: AnchorVariable, S: AnchorVariable> {

    public var variable: LayoutAnchorPair<F, S>
    public var relation: Constraint.Relation
    public var relatedAnchor: LayoutAnchorPair<F, S>?
    public var coefficients: LayoutConfigurationPair

    public init(_ variable: LayoutAnchorPair<F, S>,
                _ relation: Constraint.Relation,
                _ relatedAnchor: LayoutAnchorPair<F, S>?,
                _ coefficients: LayoutConfigurationPair = .default) {
        self.variable = variable
        self.relation = relation
        self.relatedAnchor = relatedAnchor
        self.coefficients = coefficients
    }

    public var solution: ConstraintPair {
        let relationships = layoutRelationships
        return (relationships.0.constraint, relationships.1.constraintInvertedAsInset)
    }

    private var layoutRelationships: (LayoutRelationship<F>, LayoutRelationship<S>) {
        return (LayoutRelationship(variable.first, relation, relatedAnchor?.first, coefficients.first),
                LayoutRelationship(variable.second, relation, relatedAnchor?.second, coefficients.second))
    }

}

extension LayoutPairRelationship: LinearEquation {
    public typealias Expression = LayoutPairExpression<F, S>
}
