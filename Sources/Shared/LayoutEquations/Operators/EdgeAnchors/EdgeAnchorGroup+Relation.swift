//
//  EdgeAnchorGroup+Relation.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/19/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

extension EdgeAnchorGroup {
    // MARK: Anchor == Anchor
    @discardableResult
    public func equal(to rhs: EdgeAnchorGroup) -> SideConstraints {
        return constraints(.equal, rhs)
    }

    // MARK: Equal
    // MARK: Anchor == Expression
    @discardableResult
    public func equal(to rhs: EdgeAnchorGroupExpression) -> SideConstraints {
        return constraints(.equal, rhs)
    }

    // MARK: Anchor <= Anchor
    @discardableResult
    public func lessThanOrEqual(to rhs: EdgeAnchorGroup) -> SideConstraints {
        return constraints(.lessThanOrEqual, rhs)
    }

    // MARK: LessThanOrEqual
    // MARK: Anchor <= Expression
    @discardableResult
    public func lessThanOrEqual(to rhs: EdgeAnchorGroupExpression) -> SideConstraints {
        return constraints(.lessThanOrEqual, rhs)
    }

    // MARK: Anchor >= Anchor
    @discardableResult
    public func greaterThanOrEqual(to rhs: EdgeAnchorGroup) -> SideConstraints {
        return constraints(.greaterThanOrEqual, rhs)
    }

    // MARK: GreaterThanOrEqual
    // MARK: Anchor >= Expression
    @discardableResult
    public func greaterThanOrEqual(to rhs: EdgeAnchorGroupExpression) -> SideConstraints {
        return constraints(.greaterThanOrEqual, rhs)
    }

    private func constraints(_ relation: Constraint.Relation,
                             _ rhs: EdgeAnchorGroup) -> SideConstraints {
        return constraints(
            .init(top, relation, rhs.top),
            .init(leading, relation, rhs.leading),
            .init(bottom, relation, rhs.bottom),
            .init(trailing, relation, rhs.trailing)
        )
    }

    private func constraints(_ relation: Constraint.Relation,
                             _ rhs: EdgeAnchorGroupExpression) -> SideConstraints {
        return constraints(
            .init(top, relation, rhs.topExpression),
            .init(leading, relation, rhs.leadingExpression),
            .init(bottom, relation, rhs.bottomExpression),
            .init(trailing, relation, rhs.trailingExpression)
        )
    }
    private func constraints(_ top: LayoutRelationship<YAxisAnchor>,
                             _ leading: LayoutRelationship<XAxisAnchor>,
                             _ bottom: LayoutRelationship<YAxisAnchor>,
                             _ trailing: LayoutRelationship<XAxisAnchor>) -> SideConstraints {

        return SideConstraints(
            top.constraint,
            leading.constraint,
            bottom.constraintInvertedAsInset,
            trailing.constraintInvertedAsInset
        )
    }
}
