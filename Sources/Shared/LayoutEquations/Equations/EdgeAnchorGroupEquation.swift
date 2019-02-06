//
//  EdgeAnchorGroupEquation.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/22/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

public final class EdgeAnchorGroupEquation {

    public var variable: EdgeAnchorGroup
    public var relation: Constraint.Relation
    public var relatedVariable: EdgeAnchorGroup?
    public var coefficients: EdgeAnchorsGroupCoefficients

    public init(_ variable: EdgeAnchorGroup,
                _ relation: Constraint.Relation,
                _ relatedVariable: EdgeAnchorGroup?,
                _ coefficients: EdgeAnchorsGroupCoefficients = .default) {
        self.variable = variable
        self.relation = relation
        self.relatedVariable = relatedVariable
        self.coefficients = coefficients
    }

    public var constraint: SideConstraints {
        if let relatedVariable = relatedVariable {
            return constraintRelated(to: relatedVariable)
        }

        guard let superview = variable.top.view?.superview else {
            preconditionFailure("Attempted to create an Edge Achor constraint without a related ")
        }

        return constraintRelated(to: superview.edgeAnchors)
    }

    internal func constraintRelated(to relatedVariable: EdgeAnchorGroup) -> SideConstraints {
        return SideConstraints(
            variable.top.relation(relation, relatedVariable.top).with(coefficients: coefficients.top).constraint,
            variable.leading.relation(relation, relatedVariable.leading).with(coefficients: coefficients.leading).constraint,
            variable.bottom.relation(relation, relatedVariable.bottom).with(coefficients: coefficients.bottom).constraintInvertedAsInset,
            variable.trailing.relation(relation, relatedVariable.trailing).with(coefficients: coefficients.trailing).constraintInvertedAsInset
        )
    }

}

extension EdgeAnchorGroupEquation: LinearEquation {

    public typealias Expression = EdgeAnchorGroupExpression

    public var solution: SideConstraints {
        return constraint
    }
}
