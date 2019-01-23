//
//  LayoutConstantRelationship.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/10/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

public struct LayoutConstantRelationship<A: LayoutAnchor<LayoutDimension>> {

    public var anchor: LayoutAnchor<A>
    public var relation: Constraint.Relation
    public var coefficients: LayoutConfiguration

    public init(_ anchor: LayoutAnchor<A>,
                _ relation: Constraint.Relation,
                _ coefficients: LayoutConfiguration = .default) {
        self.anchor = anchor
        self.relation = relation
        self.coefficients = coefficients
    }

    public init(_ anchor: LayoutAnchor<A>,
                _ relation: Constraint.Relation,
                _ relatedExpression: LayoutExpression<A>) {
        self.init(anchor,
                  relation,
                  relatedExpression.coefficients)
    }

    public var constraint: Constraint {
        // swiftlint:disable:next force_cast
        let dimension = anchor as! LayoutDimension
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

extension LayoutConstantRelationship: LinearEquatable {
    public var solution: Constraint {
        return constraint
    }
}
