//
//  LayoutAnchorPairEquation.swift
//  Layman
//
//  Created by Brian Strobach on 1/10/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

public final class LayoutAnchorPairEquation<F: AnchorVariable, S: AnchorVariable> {

    public var variable: LayoutAnchorPair<F, S>
    public var relation: LayoutRelation
    public var relatedVariable: LayoutAnchorPair<F, S>?
    public var coefficients: LayoutCoefficientPair

    public init(_ variable: LayoutAnchorPair<F, S>,
                _ relation: LayoutRelation,
                _ relatedVariable: LayoutAnchorPair<F, S>?,
                _ coefficients: LayoutCoefficientPair = .default) {
        self.variable = variable
        self.relation = relation
        self.relatedVariable = relatedVariable
        self.coefficients = coefficients
    }

    public convenience init(_ variable: LayoutAnchorPair<F, S>, _ relation: LayoutRelation, _ relativeConstant: RelativeLayoutConstant) {
        self.init(variable, relation, .constant(relativeConstant))
    }

    public var solution: ConstraintPair {
        let relationships = layoutRelationships
        return ConstraintPair(relationships.0.constraint, relationships.1.constraint)
    }

    private var layoutRelationships: (LayoutAnchorEquation<F>, LayoutAnchorEquation<S>) {
        return (LayoutAnchorEquation(variable.first, relation, relatedVariable?.first, coefficients.first),
                LayoutAnchorEquation(variable.second, relation, relatedVariable?.second, coefficients.second))
    }

}

extension LayoutAnchorPairEquation: LinearEquationProtocol, TupleVariableLinearEquation {
    public static func inferred(variable: LayoutAnchorPair<F, S>, for view: View) -> LayoutAnchorPair<F, S> {
        return view[keyPath: ...variable]
    }

    public typealias Expression = LayoutAnchorPairExpression<F, S>
}
