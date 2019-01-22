// Generated using Sourcery 0.15.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

//
//  YAxisAnchorPair+InferredRelationOperators.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/4/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

// MARK: - Equal

// MARK: View == Anchor
@discardableResult
public func == (lhs: View, rhs: YAxisAnchorPair) -> ConstraintPair {
    return lhs[keyPath: ...rhs] == rhs
}
// MARK: View == Expression
@discardableResult
public func == (lhs: View, rhs: YAxisAnchorPairExpression) -> ConstraintPair {
    return lhs[keyPath: ...rhs] == rhs
}

// MARK: - LessThanOrEqual

// MARK: View <= Anchor
@discardableResult
public func <= (lhs: View, rhs: YAxisAnchorPair) -> ConstraintPair {
    return lhs[keyPath: ...rhs] <= rhs
}
// MARK: View <= Expression
@discardableResult
public func <= (lhs: View, rhs: YAxisAnchorPairExpression) -> ConstraintPair {
    return lhs[keyPath: ...rhs] <= rhs
}

// MARK: - GreaterThanOrEqual

// MARK: View >= Anchor
@discardableResult
public func >= (lhs: View, rhs: YAxisAnchorPair) -> ConstraintPair {
    return lhs[keyPath: ...rhs] >= rhs
}
// MARK: View >= Expression
@discardableResult
public func >= (lhs: View, rhs: YAxisAnchorPairExpression) -> ConstraintPair {
    return lhs[keyPath: ...rhs] >= rhs
}

// MARK: - rhs collection -

// MARK: - Equal

// MARK: View == Anchors
@discardableResult
public func == (lhs: View, rhs: YAxisAnchorPairs) -> ConstraintPairs {
    return rhs.map({lhs == $0})
}

// MARK: View == Expressions
@discardableResult
public func == (lhs: View, rhs: YAxisAnchorPairExpressions) -> ConstraintPairs {
    return rhs.map({lhs == $0})
}

// MARK: - LessThanOrEqual

// MARK: View <= Anchors
@discardableResult
public func <= (lhs: View, rhs: YAxisAnchorPairs) -> ConstraintPairs {
    return rhs.map({lhs <= $0})
}
// MARK: View <= Expressions
@discardableResult
public func <= (lhs: View, rhs: YAxisAnchorPairExpressions) -> ConstraintPairs {
    return rhs.map({lhs <= $0})
}

// MARK: - GreaterThanOrEqual

// MARK: View >= Anchors
@discardableResult
public func >= (lhs: View, rhs: YAxisAnchorPairs) -> ConstraintPairs {
    return rhs.map({lhs >= $0})
}
// MARK: View >= Expressions
@discardableResult
public func >= (lhs: View, rhs: YAxisAnchorPairExpressions) -> ConstraintPairs {
    return rhs.map({lhs >= $0})
}
