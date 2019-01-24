//
//  LayoutAnchorPair+Variable.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/23/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

// MARK: - Anchor Pair
extension LayoutAnchorPair: Variable {

    // MARK: Variable
    public typealias RightHandExpression = LayoutPairExpression<FA, SA>

    public func plus(_ constant: LayoutConstant) -> RightHandExpression {
        let config = LayoutConfigurationPair(.constant(constant))
        return RightHandExpression(variable: self, coefficients: config)
    }

    public func times(_ multiplier: LayoutMultiplier) -> RightHandExpression {
        let config = LayoutConfigurationPair(.multiplier(multiplier))
        return RightHandExpression(variable: self, coefficients: config)
    }
}
