//
//  LayoutAnchorPair+Variable.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/20/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//


public class LayoutAnchorPair<F, S>: MixedLayoutModelReferencePair<LayoutAnchor<F>, LayoutAnchor<S>> where F: AnchorType, S: AnchorType {



}

extension LayoutAnchorPair: Variable {

    public typealias E = LayoutPairExpression<F, S>

    public func times(_ multiplier: LayoutMultiplier) -> LayoutPairExpression<F, S> {
        return LayoutPairExpression(anchor: self, configuration: LayoutPairConfiguration(.multiplier(multiplier), .multiplier(multiplier)))
    }

    public func plus(_ constant: LayoutConstant) -> LayoutPairExpression<F, S> {
        return LayoutPairExpression(anchor: self, configuration: LayoutPairConfiguration(.constant(constant), .constant(constant)))
    }

}

extension LayoutAnchorPair: LeftHandExpression {
    public func relation(_ relation: Constraint.Relation, _ rhs: LayoutAnchorPair<F, S>) -> LayoutPairRelationship<LayoutAnchor<F>, LayoutAnchor<S>> {
        return LayoutPairRelationship<LayoutAnchor<F>, LayoutAnchor<S>>(self, relation, rhs)
    }

    public func relation(_ relation: Constraint.Relation, _ rhs: LayoutPairExpression<LayoutAnchor<F>, LayoutAnchor<S>>) -> LayoutPairRelationship<LayoutAnchor<F>, LayoutAnchor<S>> {

    }

    public typealias LinearEquation = LayoutPairRelationship<F, S>


}
