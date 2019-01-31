//
//  LayoutConstantRelationship.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/10/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

public final class LayoutConstantRelationship<A: LayoutAnchor<LayoutDimension>> {

    public var variable: LayoutAnchor<A>
    public var relation: Constraint.Relation
    public var coefficients: LayoutConfiguration

    public init(_ variable: LayoutAnchor<A>,
                _ relation: Constraint.Relation,
                _ coefficients: LayoutConfiguration = .default) {
        self.variable = variable
        self.relation = relation
        self.coefficients = coefficients
    }

    public var constraint: Constraint {
        // swiftlint:disable:next force_cast
        let dimension = variable as! LayoutDimension
        let constraint: Constraint = {
            switch relation {
            case .lessThanOrEqual:
                return dimension.constraint(lessThanOrEqualToConstant: coefficients.constant)
            case .equal:
                return dimension.constraint(equalToConstant: coefficients.constant)
            case .greaterThanOrEqual:
                return dimension.constraint(greaterThanOrEqualToConstant: coefficients.constant)
            }
        }()
        return constraint.configured(with: coefficients)

    }

}

extension LayoutConstantRelationship: SingleVariableLinearEquation {
    public var solution: Constraint {
        return constraint
    }
}
