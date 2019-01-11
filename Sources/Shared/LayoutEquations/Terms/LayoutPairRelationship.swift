//
//  LayoutPairRelationship.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/10/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

public struct LayoutPairRelationship<F: AnchorType, S: AnchorType> {

    public var anchors: LayoutAnchors<F, S>
    public var relation: Constraint.Relation
    public var relatedAnchors: LayoutAnchors<F, S>
    public var configurations: LayoutPairConfiguration

    public init(_ anchors: LayoutAnchors<F, S>,
                _ relation: Constraint.Relation,
                _ relatedAnchors: LayoutAnchors<F, S>,
                _ configurations: LayoutPairConfiguration = .default) {
        self.anchors = anchors
        self.relation = relation
        self.relatedAnchors = relatedAnchors
        self.configurations = configurations
    }

    public init(_ anchors: LayoutAnchors<F, S>,
                _ relation: Constraint.Relation,
                _ relatedExpression: LayoutPairExpression<F, S>) {
        self.init(anchors,
                  relation,
                  relatedExpression.anchors,
                  relatedExpression.configurations)
    }

    public var constraints: ConstraintPair {
        return (LayoutRelationship(anchors.first, relation, relatedAnchors.first, configurations.first).constraint,
                LayoutRelationship(anchors.second, relation, relatedAnchors.second, configurations.second).constraint)
    }
}
