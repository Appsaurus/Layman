//
//  LayoutRelationship.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/10/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

public struct LayoutRelationship<A: AnchorType> {

    public var anchor: LayoutAnchor<A>
    public var relation: Constraint.Relation
    public var relatedAnchor: LayoutAnchor<A>?
    public var coefficients: LayoutConfiguration

    public init(_ anchor: LayoutAnchor<A>,
                _ relation: Constraint.Relation,
                _ relatedAnchor: LayoutAnchor<A>?,
                _ coefficients: LayoutConfiguration = .default) {
        self.anchor = anchor
        self.relation = relation
        self.relatedAnchor = relatedAnchor
        self.coefficients = coefficients
    }

    public init(_ anchor: LayoutAnchor<A>,
                _ relation: Constraint.Relation,
                _ coefficients: LayoutConfiguration) {
        self.anchor = anchor
        self.relation = relation
        self.coefficients = coefficients
    }

    public init(_ anchor: LayoutAnchor<A>,
                _ relation: Constraint.Relation,
                _ relatedExpression: LayoutExpression<A>) {
        self.init(anchor,
                  relation,
                  relatedExpression.anchor,
                  relatedExpression.coefficients)
    }

    public var constraint: Constraint {
        guard coefficients.active else { return inactiveConstraint }
        return inactiveConstraint.activated()
    }

    public var constraintInvertedAsInset: Constraint {
        let invertestConstraint = inactiveConstraint.invertedAsInset
        guard coefficients.active else { return invertestConstraint }
        return invertestConstraint.activated()

    }

    internal var inactiveConstraint: Constraint {
        if let relatedAnchor = relatedAnchor {
            return constraintRelated(to: relatedAnchor).configured(with: coefficients)
        }

        if let anchor = anchor as? LayoutDimension {
            return sizeConstraint(for: anchor).configured(with: coefficients)
        }
        preconditionFailure("LayoutRelationship must contain two anchors or one anchor of type LayoutDimension")
    }

    internal func constraintRelated(to relatedAnchor: LayoutAnchor<A>) -> Constraint {
        switch relation {
        case .lessThanOrEqual:
            return anchor.constraint(lessThanOrEqualTo: relatedAnchor)
        case .equal:
            return anchor.constraint(equalTo: relatedAnchor)
        case .greaterThanOrEqual:
            return anchor.constraint(greaterThanOrEqualTo: relatedAnchor)
        }
    }

    internal func sizeConstraint(for anchor: LayoutDimension) -> Constraint {
        let constraint: Constraint = {
            switch relation {
            case .lessThanOrEqual:
                return anchor.constraint(lessThanOrEqualToConstant: coefficients.constant)
            case .equal:
                return anchor.constraint(equalToConstant: coefficients.constant)
            case .greaterThanOrEqual:
                return anchor.constraint(greaterThanOrEqualToConstant: coefficients.constant)
            }
        }()
        return constraint
    }
}
