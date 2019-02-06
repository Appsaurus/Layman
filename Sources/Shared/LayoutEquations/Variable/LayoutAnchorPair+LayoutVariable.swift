//
//  LayoutAnchorPair+LayoutVariable.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/23/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

// MARK: - Anchor Pair
extension LayoutAnchorPair: LayoutVariable {

    // MARK: LayoutVariable
    public typealias RightHandExpression = LayoutAnchorPairExpression<FA, SA>

    public func plus(_ constant: LayoutConstant) -> RightHandExpression {
        let config = LayoutCoefficientPair(.constant(constant))
        return RightHandExpression(variable: self, coefficients: config)
    }

    public func times(_ multiplier: LayoutMultiplier) -> RightHandExpression {
        let config = LayoutCoefficientPair(.multiplier(multiplier))
        return RightHandExpression(variable: self, coefficients: config)
    }
}
