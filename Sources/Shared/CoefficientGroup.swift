//
//  CoefficientGroup.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 2/5/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

extension LeftHandLayoutConfigurationRelatableExpression {
    public typealias CoefficientGroupElement = LayoutConfiguration
}

extension Expression where C: Coeficient, C.Multiplier == LayoutMultiplier {
    public func set(divisor: LayoutDivisor) {
        coefficients.set(divisor: divisor)
    }
}

//extension Collection where Element: LayoutExpression, Element.C: Coeficient, Element.C.Multiplier == LayoutMultiplier {
//    public func divided(by divisor: LayoutDivisor) -> Self {
//        forEach { $0.coefficients.set(divisor: divisor) }
//        return self
//    }
//}

// MARK: LayoutAnchorPair
extension LayoutAnchorPair: LeftHandLayoutConfigurationRelatableExpression {
    public func relation(_ relation: Relation, _ rhs: LayoutConfiguration) -> LinearEquation {
        return LinearEquation(self, relation, LayoutConfigurationPair(rhs.copy()))
    }
}

// MARK: EdgeAnchorGroup
extension EdgeAnchorGroup: LeftHandLayoutConfigurationRelatableExpression {
    public func relation(_ relation: Relation, _ rhs: LayoutConfiguration) -> LinearEquation {
        return LinearEquation (self, relation, EdgeAnchorsConfiguration(rhs.copy()))
    }
}

extension LayoutConfiguration {
    internal func copy() -> LayoutConfiguration {
        let config = LayoutConfiguration()
        config.active = active
        config.constant = constant
        config.multiplier = multiplier
        config.priority = priority
        return config
    }
}
