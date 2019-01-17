//
//  XAxisAnchorImpliedRelationOperators.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/16/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

// MARK: - Equal

// MARK: View == Anchor
@discardableResult
public func == (lhs: View, rhs: XAxisAnchor) -> Constraint {
    return lhs[keyPath: ...rhs] == rhs
}
// MARK: View == Expression
@discardableResult
public func == (lhs: View, rhs: XAxisAnchorExpression) -> Constraint {
    return lhs[keyPath: ...rhs.anchor] == rhs
}

// MARK: - LessThanOrEqual

// MARK: View <= Anchor
@discardableResult
public func <= (lhs: View, rhs: XAxisAnchor) -> Constraint {
    return lhs[keyPath: ...rhs] <= rhs
}
// MARK: View <= Expression
@discardableResult
public func <= (lhs: View, rhs: XAxisAnchorExpression) -> Constraint {
    return lhs[keyPath: ...rhs.anchor] <= rhs
}

// MARK: - GreaterThanOrEqual

// MARK: View >= Anchor
@discardableResult
public func >= (lhs: View, rhs: XAxisAnchor) -> Constraint {
    return lhs[keyPath: ...rhs] >= rhs
}
// MARK: View >= Expression
@discardableResult
public func >= (lhs: View, rhs: XAxisAnchorExpression) -> Constraint {
    return lhs[keyPath: ...rhs.anchor] >= rhs
}
