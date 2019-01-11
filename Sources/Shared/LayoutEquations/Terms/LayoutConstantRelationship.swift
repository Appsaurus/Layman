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
    public var configuration: LayoutConfiguration

    public init(_ anchor: LayoutAnchor<A>,
                _ relation: Constraint.Relation,
                _ configuration: LayoutConfiguration = .default) {
        self.anchor = anchor
        self.relation = relation
        self.configuration = configuration
    }

    public init(_ anchor: LayoutAnchor<A>,
                _ relation: Constraint.Relation,
                _ relatedExpression: LayoutExpression<A>) {
        self.init(anchor,
                  relation,
                  relatedExpression.configuration)
    }

    public var constraint: Constraint {
        // swiftlint:disable:next force_cast
        let dimension = anchor as! LayoutDimension
        let constraint: Constraint = {
            switch relation {
            case .lessThanOrEqual:
                return dimension.constraint(lessThanOrEqualToConstant: configuration.constant)
            case .equal:
                return dimension.constraint(equalToConstant: configuration.constant)
            case .greaterThanOrEqual:
                return dimension.constraint(greaterThanOrEqualToConstant: configuration.constant)
            }
        }()
        return constraint.configured(with: configuration)

    }
}
