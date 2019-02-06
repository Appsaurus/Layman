//
//  CoefficientGroup.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 2/5/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

extension LeftHandLayoutCoefficientRelatableExpression {
    public typealias CoefficientGroupElement = LayoutCoefficient
}

//extension Expression where C: CoefficientReferencing, C.Multiplier == LayoutMultiplier {
//    @discardableResult
//    public func divided(by divisor: LayoutDivisor) -> Self {
//        coefficients.set(divisor: divisor)
//        return self
//    }
//}

//extension Collection where Element: LayoutExpression, Element.C: CoefficientReferencing, Element.C.Multiplier == LayoutMultiplier {
//    public func divided(by divisor: LayoutDivisor) -> Self {
//        forEach { $0.coefficients.set(divisor: divisor) }
//        return self
//    }
//}

// MARK: LayoutAnchorPair
extension LayoutAnchorPair: LeftHandLayoutCoefficientRelatableExpression {
    public func relation(_ relation: Relation, _ rhs: LayoutCoefficient) -> LinearEquation {
        return LinearEquation(self, relation, LayoutCoefficientPair(rhs.copy()))
    }
}

// MARK: EdgeAnchorGroup
extension EdgeAnchorGroup: LeftHandLayoutCoefficientRelatableExpression {
    public func relation(_ relation: Relation, _ rhs: LayoutCoefficient) -> LinearEquation {
        return LinearEquation (self, relation, EdgeAnchorsGroupCoefficients(rhs.copy()))
    }
}

extension LayoutCoefficient {
    internal func copy() -> LayoutCoefficient {
        let config = LayoutCoefficient()
        config.active = active
        config.constant = constant
        config.multiplier = multiplier
        config.priority = priority
        return config
    }
}
