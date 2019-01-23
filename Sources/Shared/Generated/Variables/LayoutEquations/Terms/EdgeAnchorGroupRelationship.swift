//
//  EdgeAnchorGroupRelationship.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/22/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

public struct EdgeAnchorGroupRelationship {

    public var anchor: EdgeAnchorGroup
    public var relation: Constraint.Relation
    public var relatedAnchor: EdgeAnchorGroup?
    public var configuration: EdgeAnchorsConfiguration

    public init(_ anchor: EdgeAnchorGroup,
                _ relation: Constraint.Relation,
                _ relatedAnchor: EdgeAnchorGroup?,
                _ configuration: EdgeAnchorsConfiguration = .default) {
        self.anchor = anchor
        self.relation = relation
        self.relatedAnchor = relatedAnchor
        self.configuration = configuration
    }

    public init(_ anchor: EdgeAnchorGroup,
                _ relation: Constraint.Relation,
                _ configuration: EdgeAnchorsConfiguration) {
        self.anchor = anchor
        self.relation = relation
        self.configuration = configuration
    }

    public init(_ anchor: EdgeAnchorGroup,
                _ relation: Constraint.Relation,
                _ relatedExpression: EdgeAnchorGroupExpression) {
        self.init(anchor,
                  relation,
                  relatedExpression.anchor,
                  relatedExpression.coefficients)
    }

    public var constraint: SideConstraints {
        if let relatedAnchor = relatedAnchor {
            return constraintRelated(to: relatedAnchor)
        }

        guard let superview = anchor.top.view?.superview else {
            preconditionFailure("Attempted to create an Edge Achor constraint without a related ")
        }

        return constraintRelated(to: superview.edgeAnchors)
    }

    internal func constraintRelated(to relatedAnchor: EdgeAnchorGroup) -> SideConstraints {
        return constraints(
            .init(anchor.top, relation, relatedAnchor.top, configuration.top) ,
            .init(anchor.leading, relation, relatedAnchor.leading, configuration.leading),
            .init(anchor.bottom, relation, relatedAnchor.bottom, configuration.bottom),
            .init(anchor.trailing, relation, relatedAnchor.trailing, configuration.trailing)
        )
    }

    private func constraints(_ top: LayoutRelationship<YAxisAnchor>,
                             _ leading: LayoutRelationship<XAxisAnchor>,
                             _ bottom: LayoutRelationship<YAxisAnchor>,
                             _ trailing: LayoutRelationship<XAxisAnchor>) -> SideConstraints {

        return SideConstraints(
            top.constraint,
            leading.constraint,
            bottom.constraintInvertedAsInset,
            trailing.constraintInvertedAsInset
        )
    }
}

extension EdgeAnchorGroupRelationship: LinearEquatable {
    public var solution: SideConstraints {
        return constraint
    }
}
