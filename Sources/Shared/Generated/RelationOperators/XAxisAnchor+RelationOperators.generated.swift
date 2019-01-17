// Generated using Sourcery 0.15.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

//
//  XAxisAnchor_RelationOperators.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/4/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

// MARK: - Equal

// MARK: Anchor == Anchor
@discardableResult
public func == (lhs: XAxisAnchor, rhs: XAxisAnchor) -> Constraint {
    return LayoutRelationship(lhs, .equal, rhs).constraint
}

// MARK: Anchor == Expression
@discardableResult
public func == (lhs: XAxisAnchor, rhs: XAxisAnchorExpression) -> Constraint {
    return LayoutRelationship(lhs, .equal, rhs).constraint
}

// MARK: - LessThanOrEqual

// MARK: Anchor <= Anchor
@discardableResult
public func <= (lhs: XAxisAnchor, rhs: XAxisAnchor) -> Constraint {
    return LayoutRelationship(lhs, .lessThanOrEqual, rhs).constraint
}

// MARK: Anchor <= Expression
@discardableResult
public func <= (lhs: XAxisAnchor, rhs: XAxisAnchorExpression) -> Constraint {
    return LayoutRelationship(lhs, .lessThanOrEqual, rhs).constraint
}

// MARK: - GreaterThanOrEqual

// MARK: Anchor >= Anchor
@discardableResult
public func >= (lhs: XAxisAnchor, rhs: XAxisAnchor) -> Constraint {
    return LayoutRelationship(lhs, .greaterThanOrEqual, rhs).constraint
}

// MARK: Anchor >= Expression
@discardableResult
public func >= (lhs: XAxisAnchor, rhs: XAxisAnchorExpression) -> Constraint {
    return LayoutRelationship(lhs, .greaterThanOrEqual, rhs).constraint
}
