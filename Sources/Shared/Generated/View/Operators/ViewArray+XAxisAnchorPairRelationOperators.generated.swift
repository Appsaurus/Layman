// Generated using Sourcery 0.15.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

//
//  ViewArray+XAxisAnchorPairRelationOperators.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/4/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

// MARK: [View] == Anchor
@discardableResult
public func == (lhs: [View], rhs: XAxisAnchorPair) -> [ConstraintPair] {
    return lhs.map { $0 == rhs }
}

// MARK: [View] == Anchors
@discardableResult
public func == (lhs: [View], rhs: XAxisAnchorPairs) -> [[ConstraintPair]] {
    return lhs.map { element in
        rhs.map({element == $0})
    }
}

// MARK: [View] == Expression
@discardableResult
public func == (lhs: [View], rhs: XAxisAnchorPairExpression) -> [ConstraintPair] {
    return lhs.map { $0 == rhs }
}

// MARK: [View] == Expressions
@discardableResult
public func == (lhs: [View], rhs: XAxisAnchorPairExpressions) -> [[ConstraintPair]] {
    return lhs.map { element in
        rhs.map({element == $0})
    }
}

// MARK: - LessThanOrEqual

// MARK: [View] <= Anchor
@discardableResult
public func <= (lhs: [View], rhs: XAxisAnchorPair) -> [ConstraintPair] {
    return lhs.map { $0 <= rhs }
}

// MARK: [View] <= Anchors
@discardableResult
public func <= (lhs: [View], rhs: XAxisAnchorPairs) -> [[ConstraintPair]] {
    return lhs.map { element in
        rhs.map({element <= $0})
    }
}

// MARK: [View] <= Expression
@discardableResult
public func <= (lhs: [View], rhs: XAxisAnchorPairExpression) -> [ConstraintPair] {
    return lhs.map { $0 <= rhs }
}

// MARK: [View] <= Expressions
@discardableResult
public func <= (lhs: [View], rhs: XAxisAnchorPairExpressions) -> [[ConstraintPair]] {
    return lhs.map { element in
        rhs.map({element <= $0})
    }
}

// MARK: - GreaterThanOrEqual

// MARK: [View] >= Anchor
@discardableResult
public func >= (lhs: [View], rhs: XAxisAnchorPair) -> [ConstraintPair] {
    return lhs.map { $0 >= rhs }
}

// MARK: [View] >= Anchors
@discardableResult
public func >= (lhs: [View], rhs: XAxisAnchorPairs) -> [[ConstraintPair]] {
    return lhs.map { element in
        rhs.map({element >= $0})
    }
}

// MARK: [View] >= Expression
@discardableResult
public func >= (lhs: [View], rhs: XAxisAnchorPairExpression) -> [ConstraintPair] {
    return lhs.map { $0 >= rhs }
}

// MARK: [View] >= Expressions
@discardableResult
public func >= (lhs: [View], rhs: XAxisAnchorPairExpressions) -> [[ConstraintPair]] {
    return lhs.map { element in
        rhs.map({element >= $0})
    }
}
