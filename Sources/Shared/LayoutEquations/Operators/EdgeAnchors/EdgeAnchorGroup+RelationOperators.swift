//
//  EdgeAnchorGroup+RelationOperators.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/9/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
// MARK: Anchor == Anchor
@discardableResult
public func == (lhs: EdgeAnchorGroup, rhs: EdgeAnchorGroup) -> SideConstraints {
    return constraints(lhs, .equal, rhs)
}

// MARK: Equal
// MARK: Anchor == Expression
@discardableResult
public func == (lhs: EdgeAnchorGroup, rhs: EdgeAnchorGroupExpression) -> SideConstraints {
    return constraints(lhs, .equal, rhs)
}

// MARK: Anchor <= Anchor
@discardableResult
public func <= (lhs: EdgeAnchorGroup, rhs: EdgeAnchorGroup) -> SideConstraints {
    return constraints(lhs, .lessThanOrEqual, rhs)
}

// MARK: LessThanOrEqual
// MARK: Anchor <= Expression
@discardableResult
public func <= (lhs: EdgeAnchorGroup, rhs: EdgeAnchorGroupExpression) -> SideConstraints {
    return constraints(lhs, .lessThanOrEqual, rhs)
}

// MARK: Anchor >= Anchor
@discardableResult
public func >= (lhs: EdgeAnchorGroup, rhs: EdgeAnchorGroup) -> SideConstraints {
    return constraints(lhs, .greaterThanOrEqual, rhs)
}

// MARK: GreaterThanOrEqual
// MARK: Anchor >= Expression
@discardableResult
public func >= (lhs: EdgeAnchorGroup, rhs: EdgeAnchorGroupExpression) -> SideConstraints {
    return constraints(lhs, .greaterThanOrEqual, rhs)
}

private func constraints(_ lhs: EdgeAnchorGroup,
                        _ relation: Constraint.Relation,
                        _ rhs: EdgeAnchorGroup) -> SideConstraints {
    return constraints(
        .init(lhs.top, relation, rhs.top),
        .init(lhs.leading, relation, rhs.leading),
        .init(lhs.bottom, relation, rhs.bottom),
        .init(lhs.trailing, relation, rhs.trailing)
    )
}

private func constraints(_ lhs: EdgeAnchorGroup,
                        _ relation: Constraint.Relation,
                        _ rhs: EdgeAnchorGroupExpression) -> SideConstraints {
    return constraints(
        .init(lhs.top, relation, rhs.topExpression),
        .init(lhs.leading, relation, rhs.leadingExpression),
        .init(lhs.bottom, relation, rhs.bottomExpression),
        .init(lhs.trailing, relation, rhs.trailingExpression)
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
