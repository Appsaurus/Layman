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

    public var constraint: Constraint {
        return inactiveConstraint.activated()
    }

    public var constraintInvertedAsInset: Constraint {
        return inactiveConstraint.invertedAsInset.activated()

    }

    internal var inactiveConstraint: Constraint {
        if let relatedAnchor = relatedAnchor {
            return constraintRelated(to: relatedAnchor).configured(with: configuration)
        }

        if let anchor = anchor as? LayoutDimension {
            return sizeConstraint(for: anchor).configured(with: configuration)
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
                return anchor.constraint(lessThanOrEqualToConstant: configuration.constant)
            case .equal:
                return anchor.constraint(equalToConstant: configuration.constant)
            case .greaterThanOrEqual:
                return anchor.constraint(greaterThanOrEqualToConstant: configuration.constant)
            }
        }()
        return constraint
    }
}

extension ConstraintAttribute {
    public var isTrailingType: Bool {
        return self.equalToAny(of: [.right, .bottom, .trailing, .rightMargin, .bottomMargin, .trailingMargin])

    }
}
extension Constraint.Relation {
    public var inverted: Constraint.Relation {
        switch self {
        case .lessThanOrEqual:
            return .greaterThanOrEqual
        case .greaterThanOrEqual:
            return .lessThanOrEqual
        default:
            return self
        }
    }
}
extension Constraint {

    public func invertConstant() -> Constraint {
        return self.set(constant: -constant)
    }
    public func set(constant: LayoutConstant) -> Constraint {
        self.constant = constant
        return self
    }
    
    public var withInvertedRelationship: Constraint {
        return with(relation: relation.inverted)
    }

    public func with(relation: Constraint.Relation) -> Constraint {
        return Constraint(item: firstItem as Any,
                          attribute: firstAttribute,
                          relatedBy: relation,
                          toItem: secondItem,
                          attribute: secondAttribute,
                          multiplier: multiplier,
                          constant: constant).with(priority: priority)
    }
    public var invertedAsInset: Constraint {
        guard firstAttribute.isTrailingType, secondAttribute.isTrailingType else { return self }
        return self.withInvertedRelationship.invertConstant()
    }
}
