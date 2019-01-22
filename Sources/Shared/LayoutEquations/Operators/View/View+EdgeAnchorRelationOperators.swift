//
//  View+EdgeAnchorRelationOperators.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/17/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

// MARK: - Equal

// MARK: View == Anchor
@discardableResult
public func == (lhs: View, rhs: EdgeAnchorGroup) -> SideConstraints {
    return lhs[keyPath: ...rhs].equal(to: rhs)
}
// MARK: View == Expression
@discardableResult
public func == (lhs: View, rhs: EdgeAnchorGroupExpression) -> SideConstraints {
    return lhs[keyPath: ...rhs].equal(to: rhs)
}

// MARK: - LessThanOrEqual

// MARK: View <= Anchor
@discardableResult
public func <= (lhs: View, rhs: EdgeAnchorGroup) -> SideConstraints {
    return lhs[keyPath: ...rhs].lessThanOrEqual(to: rhs)
}
// MARK: View <= Expression
@discardableResult
public func <= (lhs: View, rhs: EdgeAnchorGroupExpression) -> SideConstraints {
    return lhs[keyPath: ...rhs].lessThanOrEqual(to: rhs)
}

// MARK: - GreaterThanOrEqual

// MARK: View >= Anchor
@discardableResult
public func >= (lhs: View, rhs: EdgeAnchorGroup) -> SideConstraints {
    return lhs[keyPath: ...rhs].greaterThanOrEqual(to: rhs)
}
// MARK: View >= Expression
@discardableResult
public func >= (lhs: View, rhs: EdgeAnchorGroupExpression) -> SideConstraints {
    return lhs[keyPath: ...rhs].greaterThanOrEqual(to: rhs)
}

// MARK: - rhs collection -

// MARK: View == Anchors
@discardableResult
public func == (lhs: View, rhs: EdgeAnchorGroups) -> [SideConstraints] {
    return rhs.map({lhs == $0})
}

// MARK: View == Expressions
@discardableResult
public func == (lhs: View, rhs: EdgeAnchorGroupExpressions) -> [SideConstraints] {
    return rhs.map({lhs == $0})
}

// MARK: - LessThanOrEqual

// MARK: View <= Anchors
@discardableResult
public func <= (lhs: View, rhs: EdgeAnchorGroups) -> [SideConstraints] {
    return rhs.map({lhs <= $0})
}
// MARK: View <= Expressions
@discardableResult
public func <= (lhs: View, rhs: EdgeAnchorGroupExpressions) -> [SideConstraints] {
    return rhs.map({lhs <= $0})
}

// MARK: - GreaterThanOrEqual

// MARK: View >= Anchors
@discardableResult
public func >= (lhs: View, rhs: EdgeAnchorGroups) -> [SideConstraints] {
    return rhs.map({lhs >= $0})
}
// MARK: View >= Expressions
@discardableResult
public func >= (lhs: View, rhs: EdgeAnchorGroupExpressions) -> [SideConstraints] {
    return rhs.map({lhs >= $0})
}
