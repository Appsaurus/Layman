//
//  LayoutPairRelationship.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/10/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

public class LayoutPairRelationship<F: AnchorType, S: AnchorType> {

    public var anchors: LayoutAnchorPair<F, S>
    public var relation: Constraint.Relation
    public var relatedAnchors: LayoutAnchorPair<F, S>?
    public var coefficients: LayoutConfigurationPair

    public init(_ anchors: LayoutAnchorPair<F, S>,
                _ relation: Constraint.Relation,
                _ relatedAnchors: LayoutAnchorPair<F, S>,
                _ coefficients: LayoutConfigurationPair = .default) {
        self.anchors = anchors
        self.relation = relation
        self.relatedAnchors = relatedAnchors
        self.coefficients = coefficients
    }

    public init(_ anchors: LayoutAnchorPair<F, S>,
                _ relation: Constraint.Relation,
                _ coefficients: LayoutConfigurationPair) {
        self.anchors = anchors
        self.relation = relation
        self.coefficients = coefficients
    }

    public convenience init(_ anchors: LayoutAnchorPair<F, S>,
                            _ relation: Constraint.Relation,
                            _ relatedExpression: LayoutPairExpression<F, S>) {
        self.init(anchors,
                  relation,
                  relatedExpression.anchor,
                  relatedExpression.coefficients)
    }

    public var constraints: ConstraintPair {
        let relationships = layoutRelationships
        return (relationships.0.constraint, relationships.1.constraint)
    }

    public var constraintsInvertedAsInsets: ConstraintPair {
        let relationships = layoutRelationships
        return (relationships.0.constraintInvertedAsInset, relationships.1.constraintInvertedAsInset)
    }
    private var layoutRelationships: (LayoutRelationship<F>, LayoutRelationship<S>) {
        return (LayoutRelationship(anchors.first, relation, relatedAnchors?.first, coefficients.first),
                LayoutRelationship(anchors.second, relation, relatedAnchors?.second, coefficients.second))
    }
}

extension LayoutPairRelationship: LinearEquatable {
    public var solution: ConstraintPair {
        return constraintsInvertedAsInsets
    }
}
