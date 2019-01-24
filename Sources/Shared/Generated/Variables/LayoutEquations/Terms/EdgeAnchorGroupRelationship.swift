//
//  EdgeAnchorGroupRelationship.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/22/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

public final class EdgeAnchorGroupRelationship {

    public var variable: EdgeAnchorGroup
    public var relation: Constraint.Relation
    public var relatedAnchor: EdgeAnchorGroup?
    public var coefficients: EdgeAnchorsConfiguration

    public init(_ variable: EdgeAnchorGroup,
                _ relation: Constraint.Relation,
                _ relatedAnchor: EdgeAnchorGroup?,
                _ coefficients: EdgeAnchorsConfiguration = .default) {
        self.variable = variable
        self.relation = relation
        self.relatedAnchor = relatedAnchor
        self.coefficients = coefficients
    }

    public var constraint: SideConstraints {
        if let relatedAnchor = relatedAnchor {
            return constraintRelated(to: relatedAnchor)
        }

        guard let superview = variable.top.view?.superview else {
            preconditionFailure("Attempted to create an Edge Achor constraint without a related ")
        }

        return constraintRelated(to: superview.edgeAnchors)
    }

    internal func constraintRelated(to relatedAnchor: EdgeAnchorGroup) -> SideConstraints {
        return SideConstraints(
            variable.top.relation(relation, relatedAnchor.top).with(coefficients: coefficients.top).constraint,
            variable.leading.relation(relation, relatedAnchor.leading).with(coefficients: coefficients.leading).constraint,
            variable.bottom.relation(relation, relatedAnchor.bottom).with(coefficients: coefficients.bottom).constraintInvertedAsInset,
            variable.trailing.relation(relation, relatedAnchor.trailing).with(coefficients: coefficients.trailing).constraintInvertedAsInset
        )
    }
}

extension EdgeAnchorGroupRelationship: LinearEquation {
    public typealias E = EdgeAnchorGroupExpression

    public var solution: SideConstraints {
        return constraint
    }
}
