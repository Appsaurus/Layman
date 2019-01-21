// Generated using Sourcery 0.15.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

//
//  XAxisAnchor+ArrayRelationOperators.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/4/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

// MARK: - Equal

// MARK: Anchor == Anchor Array
@discardableResult
public func == (lhs: XAxisAnchor, rhs: XAxisAnchors) -> Constraints {
    return lhs.equal(to: rhs)
}

// MARK: Anchor Array == Anchor
@discardableResult
public func == (lhs: XAxisAnchors, rhs: XAxisAnchor) -> Constraints {
    return lhs.equal(to: rhs)
}

// MARK: Anchor Array == Anchor Array
@discardableResult
public func == (lhs: XAxisAnchors, rhs: XAxisAnchors) -> [Constraints] {
    return lhs.equal(to: rhs)
}

// MARK: Anchor == Expression Array
@discardableResult
public func == (lhs: XAxisAnchor, rhs: XAxisAnchorExpressions) -> Constraints {
    return lhs.equal(to: rhs)
}

// MARK: Anchor Array == Expression
@discardableResult
public func == (lhs: XAxisAnchors, rhs: XAxisAnchorExpression) -> Constraints {
    return lhs.equal(to: rhs)
}

// MARK: Anchor Array == Expression Array
@discardableResult
public func == (lhs: XAxisAnchors, rhs: XAxisAnchorExpressions) -> [Constraints] {
    return lhs.equal(to: rhs)
}

// MARK: - LessThanOrEqual

// MARK: Anchor <= Anchor Array
@discardableResult
public func <= (lhs: XAxisAnchor, rhs: XAxisAnchors) -> Constraints {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: Anchor Array <= Anchor
@discardableResult
public func <= (lhs: XAxisAnchors, rhs: XAxisAnchor) -> Constraints {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: Anchor Array <= Anchor Array
@discardableResult
public func <= (lhs: XAxisAnchors, rhs: XAxisAnchors) -> [Constraints] {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: Anchor <= Expression Array
@discardableResult
public func <= (lhs: XAxisAnchor, rhs: XAxisAnchorExpressions) -> Constraints {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: Anchor Array <= Expression
@discardableResult
public func <= (lhs: XAxisAnchors, rhs: XAxisAnchorExpression) -> Constraints {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: Anchor Array <= Expression Array
@discardableResult
public func <= (lhs: XAxisAnchors, rhs: XAxisAnchorExpressions) -> [Constraints] {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: - GreaterThanOrEqual

// MARK: Anchor >= Anchor Array
@discardableResult
public func >= (lhs: XAxisAnchor, rhs: XAxisAnchors) -> Constraints {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: Anchor Array >= Anchor
@discardableResult
public func >= (lhs: XAxisAnchors, rhs: XAxisAnchor) -> Constraints {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: Anchor Array >= Anchor Array
@discardableResult
public func >= (lhs: XAxisAnchors, rhs: XAxisAnchors) -> [Constraints] {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: Anchor >= Expression Array
@discardableResult
public func >= (lhs: XAxisAnchor, rhs: XAxisAnchorExpressions) -> Constraints {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: Anchor Array >= Expression
@discardableResult
public func >= (lhs: XAxisAnchors, rhs: XAxisAnchorExpression) -> Constraints {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: Anchor Array >= Expression Array
@discardableResult
public func >= (lhs: XAxisAnchors, rhs: XAxisAnchorExpressions) -> [Constraints] {
    return lhs.greaterThanOrEqual(to: rhs)
}
