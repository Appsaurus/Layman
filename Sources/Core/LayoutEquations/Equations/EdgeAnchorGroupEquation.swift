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

    public convenience init(_ variable: EdgeAnchorGroup, _ relation: LayoutRelation, _ relativeConstantTuple: RelativeLayoutConstantTuple) {
        self.init(variable, relation, nil)
        coefficients.top.set(relativeConstant: relativeConstantTuple.second)
        coefficients.leading.set(relativeConstant: relativeConstantTuple.first)
        coefficients.bottom.set(relativeConstant: relativeConstantTuple.second)
        coefficients.trailing.set(relativeConstant: relativeConstantTuple.first)
    }

    public convenience init(_ variable: EdgeAnchorGroup, _ relation: LayoutRelation, _ relativeConstant: RelativeLayoutPadding) {
        self.init(variable, relation, nil)
        coefficients.top.set(relativeConstant: relativeConstant.top)
        coefficients.leading.set(relativeConstant: relativeConstant.leading)
        coefficients.bottom.set(relativeConstant: relativeConstant.bottom)
        coefficients.trailing.set(relativeConstant: relativeConstant.trailing)
    }

    public convenience init(_ variable: EdgeAnchorGroup, _ relation: LayoutRelation, _ layoutConstant: LayoutPadding) {
        self.init(variable, relation, nil)
        coefficients.top.set(constant: layoutConstant.top)
        coefficients.leading.set(constant: layoutConstant.leading)
        coefficients.bottom.set(constant: layoutConstant.bottom)
        coefficients.trailing.set(constant: layoutConstant.trailing)
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

extension EdgeAnchorGroupEquation: LinearEquationProtocol {
    public static func inferred(variable: EdgeAnchorGroup, for view: View) -> EdgeAnchorGroup {
        return view.edgeAnchors
    }

    public convenience init(_ view: View, _ relation: LayoutRelation, _ variable: EdgeAnchorGroup) {
        self.init(view.edgeAnchors, relation, variable)
    }

    public typealias Expression = EdgeAnchorGroupExpression

    public var solution: SideConstraints {
        return constraint
    }
}

extension EdgeAnchorGroupEquation: TupleVariableLinearEquation {
    public convenience init(_ variable: EdgeAnchorGroup, _ relation: LayoutRelation, _ coefficients: LayoutCoefficientPair) {
        self.init(variable, relation, Coefficients(coefficients.first, coefficients.second))
    }
}
