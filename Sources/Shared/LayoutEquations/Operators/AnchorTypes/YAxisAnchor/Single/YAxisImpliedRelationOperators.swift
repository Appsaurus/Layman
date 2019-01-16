//
//  YAxisImpliedRelationOperators.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/16/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

// MARK: - Equal

// MARK: View == Anchor
@discardableResult
public func == (lhs: View, rhs: YAxisAnchor) -> Constraint {
    return lhs[keyPath: ...rhs] == rhs
}
// MARK: View == Expression
@discardableResult
public func == (lhs: View, rhs: YAxisAnchorExpression) -> Constraint {
    return lhs[keyPath: ...rhs.anchor] == rhs
}

// MARK: - LessThanOrEqual

// MARK: View <= Anchor
@discardableResult
public func <= (lhs: View, rhs: YAxisAnchor) -> Constraint {
    return lhs[keyPath: ...rhs] <= rhs
}
// MARK: View <= Expression
@discardableResult
public func <= (lhs: View, rhs: YAxisAnchorExpression) -> Constraint {
    return lhs[keyPath: ...rhs.anchor] <= rhs
}

// MARK: - GreaterThanOrEqual

// MARK: View >= Anchor
@discardableResult
public func >= (lhs: View, rhs: YAxisAnchor) -> Constraint {
    return lhs[keyPath: ...rhs] >= rhs
}
// MARK: View >= Expression
@discardableResult
public func >= (lhs: View, rhs: YAxisAnchorExpression) -> Constraint {
    return lhs[keyPath: ...rhs.anchor] >= rhs
}
