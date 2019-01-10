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
    public var configuration: LayoutConfiguration

    public init(_ anchor: LayoutAnchor<A>,
                _ relation: Constraint.Relation,
                _ relatedAnchor: LayoutAnchor<A>?,
                _ configuration: LayoutConfiguration = .default) {
        self.anchor = anchor
        self.relation = relation
        self.relatedAnchor = relatedAnchor
        self.configuration = configuration
    }

    public init(_ anchor: LayoutAnchor<A>,
                _ relation: Constraint.Relation,
                _ relatedExpression: LayoutExpression<A>) {
        self.init(anchor,
                  relation,
                  relatedExpression.anchor,
                  relatedExpression.configuration)
    }


    public var constraint: Constraint{

        if let relatedAnchor = relatedAnchor {
            return constraintRelated(to: relatedAnchor)
        }

        if let anchor = anchor as? LayoutDimension {
            return sizeConstraint(for: anchor)
        }
        preconditionFailure("LayoutRelationship must contain two anchors or one anchor of type LayoutDimension")
    }

    internal func constraintRelated(to relatedAnchor: LayoutAnchor<A>) -> Constraint{
        var constraint: Constraint = {
            switch relation{
            case .lessThanOrEqual:
                return anchor.constraint(lessThanOrEqualTo: relatedAnchor)
            case .equal:
                return anchor.constraint(equalTo: relatedAnchor)
            case .greaterThanOrEqual:
                return anchor.constraint(greaterThanOrEqualTo: relatedAnchor)
            }
        }()

        switch constraint.secondAttribute{
        case .right, .bottom, .trailing, .rightMargin, .bottomMargin, .trailingMargin:
            configuration.constant.negate()
            switch relation{
            case .lessThanOrEqual:
                constraint = anchor.constraint(greaterThanOrEqualTo: relatedAnchor)
            case .greaterThanOrEqual:
                constraint = anchor.constraint(lessThanOrEqualTo: relatedAnchor)
            default: break
            }
        default: break
        }
        return constraint.activated(with: configuration)
    }

    internal func sizeConstraint(for anchor: LayoutDimension) -> Constraint{
        let constraint: Constraint = {
            switch relation{
            case .lessThanOrEqual:
                return anchor.constraint(lessThanOrEqualToConstant: configuration.constant)
            case .equal:
                return anchor.constraint(equalToConstant: configuration.constant)
            case .greaterThanOrEqual:
                return anchor.constraint(greaterThanOrEqualToConstant: configuration.constant)
            }
        }()
        return constraint.activated(with: configuration)
    }
}
