//
//  LayoutAnchorPair+LeftHandExpression.swift
//  Layman
//
//  Created by Brian Strobach on 1/20/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

extension LayoutAnchorPair: LeftHandLayoutExpression, CoefficientEquatable {
    public typealias LinearEquation = LayoutAnchorPairEquation<FA, SA>
}
//extension LayoutAnchorPair: ViewLayoutExpression {
//    public func relation(_ relation: LayoutRelation, _ rhs: View) -> LayoutAnchorPairEquation<FA, SA> {
//        return self.relation(relation, rhs[keyPath: ...self])
//    }
//}
