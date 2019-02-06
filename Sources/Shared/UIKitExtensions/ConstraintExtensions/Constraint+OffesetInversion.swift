//
//  Constraint+OffesetInversion.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 2/6/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

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
                          constant: constant).priority(priority)
    }
    public var invertedAsInset: Constraint {
        guard firstAttribute.isCategory(.trailing), secondAttribute.isCategory(.trailing) else { return self }
        return self.withInvertedRelationship.invertConstant()
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
