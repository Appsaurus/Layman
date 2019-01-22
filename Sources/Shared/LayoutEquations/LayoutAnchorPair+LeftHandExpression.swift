//
//  LayoutAnchorPair+LeftHandExpression.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/20/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

// MARK: - Anchor Pair
public class LayoutAnchorPair<FA: AnchorType, SA: AnchorType>: MixedLayoutModelReferencePair<LayoutAnchor<FA>, LayoutAnchor<SA>>, Variable {

    // MARK: Variable
    public typealias RightHandExpression = LayoutPairExpression<FA, SA>

    public func plus(_ constant: LayoutConstant) -> RightHandExpression {
        let config = LayoutConfigurationPair(.constant(constant))
        return RightHandExpression(anchor: self, configuration: config)
    }

    public func times(_ multiplier: LayoutMultiplier) -> RightHandExpression {
        let config = LayoutConfigurationPair(.multiplier(multiplier))
        return RightHandExpression(anchor: self, configuration: config)
    }
}

//public protocol PairVairiable: Variable where RightHandExpression == LayoutPairExpression<FA, SA> {
//    associatedtype FA: AnchorType
//    associatedtype SA: AnchorType

//}

extension LayoutAnchorPair: LeftHandExpression {
    public typealias LinearEquation = LayoutPairRelationship<FA, SA>

    public func relation(_ relation: Constraint.Relation, _ rhs: LayoutAnchorPair<FA, SA>) -> LinearEquation {
        return LinearEquation(self, relation, rhs)
    }

    public func relation(_ relation: Constraint.Relation, _ rhs: RightHandExpression ) -> LinearEquation {
        return LinearEquation(self, relation, rhs)
    }
}

//public protocol LeftHandPairExpression: LeftHandExpression where LinearEquation == LayoutPairRelationship<FA, SA> {
//    associatedtype FA: AnchorType
//    associatedtype SA: AnchorType
//}
