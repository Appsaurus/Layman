//
//  EdgeAnchorGroup+RelationOperators.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/9/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
// MARK: Anchor == Anchor
@discardableResult
public func == (lhs: EdgeAnchorGroup, rhs: EdgeAnchorGroup) -> SideConstraints {
    return constraints(
        .init(lhs.top, .equal, rhs.top),
        .init(lhs.leading, .equal, rhs.leading),
        .init(lhs.bottom, .equal, rhs.bottom),
        .init(lhs.trailing, .equal, rhs.trailing)
    )
}

// MARK: Equal
// MARK: Anchor == Expression
@discardableResult
public func == (lhs: EdgeAnchorGroup, rhs: EdgeAnchorGroupExpression) -> SideConstraints {
    return constraints(
        .init(lhs.top, .equal, rhs.topExpression),
        .init(lhs.leading, .equal, rhs.leadingExpression),
        .init(lhs.bottom, .equal, rhs.bottomExpression),
        .init(lhs.trailing, .equal, rhs.trailingExpression)
    )
}

    // MARK: Anchor <= Anchor
    @discardableResult
    public func <= (lhs: EdgeAnchorGroup, rhs: EdgeAnchorGroup) -> SideConstraints {
        return constraints(
            .init(lhs.top, .lessThanOrEqual, rhs.top),
            .init(lhs.leading, .lessThanOrEqual, rhs.leading),
            .init(lhs.bottom, .lessThanOrEqual, rhs.bottom),
            .init(lhs.trailing, .lessThanOrEqual, rhs.trailing)
        )
    }

// MARK: LessThanOrEqual
// MARK: Anchor <= Expression
@discardableResult
public func <= (lhs: EdgeAnchorGroup, rhs: EdgeAnchorGroupExpression) -> SideConstraints {
    return constraints(
        .init(lhs.top, .lessThanOrEqual, rhs.topExpression),
        .init(lhs.leading, .lessThanOrEqual, rhs.leadingExpression),
        .init(lhs.bottom, .lessThanOrEqual, rhs.bottomExpression),
        .init(lhs.trailing, .lessThanOrEqual, rhs.trailingExpression)
    )
}

    // MARK: Anchor >= Anchor
    @discardableResult
    public func >= (lhs: EdgeAnchorGroup, rhs: EdgeAnchorGroup) -> SideConstraints {
        return constraints(
            .init(lhs.top, .greaterThanOrEqual, rhs.top),
            .init(lhs.leading, .greaterThanOrEqual, rhs.leading),
            .init(lhs.bottom, .greaterThanOrEqual, rhs.bottom),
            .init(lhs.trailing, .greaterThanOrEqual, rhs.trailing)
        )
    }

// MARK: GreaterThanOrEqual
// MARK: Anchor >= Expression
@discardableResult
public func >= (lhs: EdgeAnchorGroup, rhs: EdgeAnchorGroupExpression) -> SideConstraints {
    return constraints(
        .init(lhs.top, .greaterThanOrEqual, rhs.topExpression),
        .init(lhs.leading, .greaterThanOrEqual, rhs.leadingExpression),
        .init(lhs.bottom, .greaterThanOrEqual, rhs.bottomExpression),
        .init(lhs.trailing, .greaterThanOrEqual, rhs.trailingExpression)
    )
}

public func constraints(_ top: LayoutRelationship<YAxisAnchor>,
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
