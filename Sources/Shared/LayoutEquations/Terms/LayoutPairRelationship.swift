//
//  LayoutPairRelationship.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/10/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

public struct LayoutPairRelationship<F: AnchorType, S: AnchorType> {

    public var anchors: LayoutAnchorPair<F, S>
    public var relation: Constraint.Relation
    public var relatedAnchors: LayoutAnchorPair<F, S>
    public var configurations: LayoutPairConfiguration

    public init(_ anchors: LayoutAnchorPair<F, S>,
                _ relation: Constraint.Relation,
                _ relatedAnchors: LayoutAnchorPair<F, S>,
                _ configurations: LayoutPairConfiguration = .default) {
        self.anchors = anchors
        self.relation = relation
        self.relatedAnchors = relatedAnchors
        self.configurations = configurations
    }

    public init(_ anchors: LayoutAnchorPair<F, S>,
                _ relation: Constraint.Relation,
                _ relatedExpression: LayoutPairExpression<F, S>) {
        self.init(anchors,
                  relation,
                  relatedExpression.anchors,
                  relatedExpression.configurations)
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
        return (LayoutRelationship(anchors.first, relation, relatedAnchors.first, configurations.first),
                LayoutRelationship(anchors.second, relation, relatedAnchors.second, configurations.second))
    }
}