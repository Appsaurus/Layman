//
//  LayoutAnchorPair+LayoutVariable.swift
//  Layman
//
//  Created by Brian Strobach on 1/23/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

// MARK: - Anchor Pair
extension LayoutAnchorPair: LayoutVariable {

    public typealias RightHandExpression = LayoutAnchorPairExpression<FA, SA>
//
//    public func times(_ multiplier: LayoutConstant) -> RightHandExpression {
//        return times(LayoutMultiplier(multiplier))
//    }

    public func times(_ multiplier: LayoutMultiplier) -> RightHandExpression {
        let coefficients = LayoutCoefficientPair(.multiplier(multiplier))
        return RightHandExpression(variable: self).with(coefficients: coefficients)
    }

}
