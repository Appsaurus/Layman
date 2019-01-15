//
//  EdgeAnchorGroupOperators.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/9/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.

// MARK: Equal
// MARK: Anchor == Expression
@discardableResult
public func == (lhs: EdgeAnchorGroup, rhs: EdgeAnchorGroupExpression) -> SideConstraints {
    let top = lhs.top == rhs.topExpression
    let leading = lhs.leading == rhs.leadingExpression
    let bottom = lhs.bottom == rhs.bottomExpression
    let trailing = lhs.trailing == rhs.trailingExpression
    return SideConstraints(top, leading, bottom, trailing)
}

// MARK: Anchor == Anchor
@discardableResult
public func == (lhs: EdgeAnchorGroup, rhs: EdgeAnchorGroup) -> SideConstraints {
    let top = lhs.top == rhs.top
    let leading = lhs.leading == rhs.leading
    let bottom = lhs.bottom == rhs.bottom
    let trailing = lhs.trailing == rhs.trailing
    return SideConstraints(top, leading, bottom, trailing)
}

// MARK: LessThanOrEqual
// MARK: Anchor <= Expression
@discardableResult
public func <= (lhs: EdgeAnchorGroup, rhs: EdgeAnchorGroupExpression) -> SideConstraints {
    let top = lhs.top <= rhs.topExpression
    let leading = lhs.leading <= rhs.leadingExpression
    let bottom = lhs.bottom <= rhs.bottomExpression
    let trailing = lhs.trailing <= rhs.trailingExpression
    return SideConstraints(top, leading, bottom, trailing)
}

// MARK: Anchor <= Anchor
@discardableResult
public func <= (lhs: EdgeAnchorGroup, rhs: EdgeAnchorGroup) -> SideConstraints {
    let top = lhs.top <= rhs.top
    let leading = lhs.leading <= rhs.leading
    let bottom = lhs.bottom <= rhs.bottom
    let trailing = lhs.trailing <= rhs.trailing
    return SideConstraints(top, leading, bottom, trailing)
}

// MARK: GreaterThanOrEqual
// MARK: Anchor >= Expression
@discardableResult
public func >= (lhs: EdgeAnchorGroup, rhs: EdgeAnchorGroupExpression) -> SideConstraints {
    let top = lhs.top >= rhs.topExpression
    let leading = lhs.leading >= rhs.leadingExpression
    let bottom = lhs.bottom >= rhs.bottomExpression
    let trailing = lhs.trailing >= rhs.trailingExpression
    return SideConstraints(top, leading, bottom, trailing)
}

// MARK: Anchor >= Anchor
@discardableResult
public func >= (lhs: EdgeAnchorGroup, rhs: EdgeAnchorGroup) -> SideConstraints {
    let top = lhs.top >= rhs.top
    let leading = lhs.leading >= rhs.leading
    let bottom = lhs.bottom >= rhs.bottom
    let trailing = lhs.trailing >= rhs.trailing
    return SideConstraints(top, leading, bottom, trailing)
}
