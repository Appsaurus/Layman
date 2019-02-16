//
//  EdgeAnchorGroupEquation.swift
//  Layman
//
//  Created by Brian Strobach on 1/22/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

public final class EdgeAnchorGroupEquation {

    public var variable: EdgeAnchorGroup
    public var relation: LayoutRelation
    public var relatedVariable: EdgeAnchorGroup?
    public var coefficients: EdgeAnchorsGroupCoefficients

    public init(_ variable: EdgeAnchorGroup,
                _ relation: LayoutRelation,
                _ relatedVariable: EdgeAnchorGroup?,
                _ coefficients: EdgeAnchorsGroupCoefficients = .default) {
        self.variable = variable
        self.relation = relation
        self.relatedVariable = relatedVariable
        self.coefficients = coefficients
    }

    public convenience init(_ variable: EdgeAnchorGroup, _ relation: LayoutRelation, _ relativeConstant: RelativeLayoutConstant) {
        self.init(variable, relation, nil, Coefficients().with(relativeConstant: relativeConstant))
    }

    public var constraint: SideConstraints {
        guard let relatedVariable = relatedVariable ?? variable.top.view?.superview?.edgeAnchors else {
            preconditionFailure("Attempted to create an Edge Anchor constraint without a related view.")
        }
        return constraintRelated(to: relatedVariable)
    }

    internal func constraintRelated(to relatedVariable: EdgeAnchorGroup) -> SideConstraints {
        return SideConstraints(
            variable.top.relation(relation, relatedVariable.top).with(coefficients: coefficients.top).constraint,
            variable.leading.relation(relation, relatedVariable.leading).with(coefficients: coefficients.leading).constraint,
            variable.bottom.relation(relation, relatedVariable.bottom).with(coefficients: coefficients.bottom).constraint,
            variable.trailing.relation(relation, relatedVariable.trailing).with(coefficients: coefficients.trailing).constraint
        )
    }

}

extension EdgeAnchorGroupExpression {
    var topExpression: YAxisAnchorExpression { return YAxisAnchorExpression(variable: top, coefficients: coefficients.top)}
    var leadingExpression: XAxisAnchorExpression { return XAxisAnchorExpression(variable: leading, coefficients: coefficients.leading) }
    var bottomExpression: YAxisAnchorExpression { return YAxisAnchorExpression(variable: bottom, coefficients: coefficients.bottom) }
    var trailingExpression: XAxisAnchorExpression { return XAxisAnchorExpression(variable: trailing, coefficients: coefficients.trailing) }
}

extension EdgeAnchorGroupEquation: LinearEquation {

    public typealias Expression = EdgeAnchorGroupExpression

    public var solution: SideConstraints {
        return constraint
    }
}
