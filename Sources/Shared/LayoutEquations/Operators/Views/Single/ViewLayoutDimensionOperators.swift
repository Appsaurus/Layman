//
//  ViewLayoutDimensionOperators.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/16/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

// MARK: - View <-> Single Term
// MARK: - Equal

// MARK: View == Anchor
@discardableResult
public func == (lhs: View, rhs: LayoutDimension) -> Constraint {
    return lhs[keyPath: ...rhs] == rhs
}
// MARK: View == Expression
@discardableResult
public func == (lhs: View, rhs: LayoutDimensionExpression) -> Constraint {
    return lhs[keyPath: ...rhs.anchor] == rhs
}

// MARK: - LessThanOrEqual

// MARK: View <= Anchor
@discardableResult
public func <= (lhs: View, rhs: LayoutDimension) -> Constraint {
    return lhs[keyPath: ...rhs] <= rhs
}
// MARK: View <= Expression
@discardableResult
public func <= (lhs: View, rhs: LayoutDimensionExpression) -> Constraint {
    return lhs[keyPath: ...rhs.anchor] <= rhs
}

// MARK: - GreaterThanOrEqual

// MARK: View >= Anchor
@discardableResult
public func >= (lhs: View, rhs: LayoutDimension) -> Constraint {
    return lhs[keyPath: ...rhs] >= rhs
}
// MARK: View >= Expression
@discardableResult
public func >= (lhs: View, rhs: LayoutDimensionExpression) -> Constraint {
    return lhs[keyPath: ...rhs.anchor] >= rhs
}

// MARK: - Equal

// MARK: View == Anchors
@discardableResult
public func == (lhs: View, rhs: LayoutDimensions) -> Constraints {
    return rhs.map({lhs == $0})
}

// MARK: View == Expressions
@discardableResult
public func == (lhs: View, rhs: LayoutDimensionExpressions) -> Constraints {
    return rhs.map({lhs == $0})
}

// MARK: - LessThanOrEqual

// MARK: View <= Anchors
@discardableResult
public func <= (lhs: View, rhs: LayoutDimensions) -> Constraints {
    return rhs.map({lhs <= $0})
}
// MARK: View <= Expressions
@discardableResult
public func <= (lhs: View, rhs: LayoutDimensionExpressions) -> Constraints {
    return rhs.map({lhs <= $0})
}

// MARK: - GreaterThanOrEqual

// MARK: View >= Anchors
@discardableResult
public func >= (lhs: View, rhs: LayoutDimensions) -> Constraints {
    return rhs.map({lhs >= $0})
}
// MARK: View >= Expressions
@discardableResult
public func >= (lhs: View, rhs: LayoutDimensionExpressions) -> Constraints {
    return rhs.map({lhs >= $0})
}

