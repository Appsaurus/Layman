//
//  LayoutAnchorPair+LeftHandExpression.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/20/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

// MARK: - Anchor Pair
public class LayoutAnchorPair<FA: AnchorType, SA: AnchorType>: MixedLayoutModelReferencePair<LayoutAnchor<FA>, LayoutAnchor<SA>>, PairVairiable {

    // MARK: Variable
    public typealias Expression = LayoutPairExpression<FA, SA>

    public func plus(_ constant: LayoutConstant) -> Expression {
        let config = LayoutPairConfiguration(.constant(constant))
        return Expression(anchor: self, configuration: config)
    }

    public func times(_ multiplier: LayoutMultiplier) -> Expression {
        let config = LayoutPairConfiguration(.multiplier(multiplier))
        return Expression(anchor: self, configuration: config)
    }
}

public protocol PairVairiable: Variable where Expression == LayoutPairExpression<FA, SA> {
    associatedtype FA: AnchorType
    associatedtype SA: AnchorType

}

extension LayoutAnchorPair: LeftHandPairExpression {
    public typealias LinearEquation = LayoutPairRelationship<FA, SA>

    public func relation(_ relation: Constraint.Relation, _ rhs: LayoutAnchorPair<FA, SA>) -> LinearEquation {
        return LinearEquation(self, relation, rhs)
    }

    public func relation(_ relation: Constraint.Relation, _ rhs: Expression ) -> LinearEquation {
        return LinearEquation(self, relation, rhs)
    }
}

public protocol LeftHandPairExpression: LeftHandExpression where LinearEquation == LayoutPairRelationship<FA, SA> {
    associatedtype FA: AnchorType
    associatedtype SA: AnchorType
}
