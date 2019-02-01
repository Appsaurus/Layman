//
//  LayoutLinearEquation.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/23/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

extension CoefficientMutating where Multiplier == LayoutMultiplier {
    public func with(divisor: LayoutDivisor) -> Self {
        return with(multiplier: (1.0 / divisor))
    }
}

public protocol LinearEquationTyped {
    associatedtype LinearEquation: UILayoutKit.LinearEquation
    typealias RightHandExpression = LinearEquation.E
    typealias Solution = LinearEquation.Solution
    typealias Variable = LinearEquation.V
    typealias Relation = LinearEquation.Relation
    typealias Expression = LinearEquation.E
    typealias Coefficient = Expression.C
    typealias Constant = Coefficient.Constant
}

extension LeftHandSizeRelatableExpression {
    public typealias LayoutSize = UILayoutKit.LayoutSize
    public typealias LayoutConfigurationPair = UILayoutKit.LayoutConfigurationPair
    public typealias LayoutConstant = UILayoutKit.LayoutConstant
}


extension LeftHandLayoutExpression where Variable == Self {
    public func relation(_ relation: Relation, _ rhs: Self) -> LinearEquation {
        return LinearEquation(self, relation, rhs)
    }

    public func relation(_ relation: Relation, _ rhs: RightHandExpression) -> LinearEquation {
        return LinearEquation(self, relation, rhs)
    }
}

//extension LeftHandConstantRelatableExpression where Variable == Self {
//
//    public func relation(_ relation: Relation, _ rhs: Constant) -> LinearEquation {
//        return LinearEquation(self, relation, rhs)
//    }
//
//    public func relation(_ relation: Relation, _ rhs: Coefficient) -> LinearEquation {
//        return LinearEquation(self, relation, rhs)
//    }
//}
