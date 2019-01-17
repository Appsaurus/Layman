// Generated using Sourcery 0.15.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

//
//  XAxisAnchorPair+ArrayRelationOperators.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/4/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

// MARK: - Equal

// MARK: Anchor == Anchor Array
@discardableResult
public func == (lhs: XAxisAnchorPair, rhs: XAxisAnchorPairs) -> [ConstraintPair] {
    return rhs.map({lhs == $0})
}

// MARK: Anchor Array == Anchor
@discardableResult
public func == (lhs: XAxisAnchorPairs, rhs: XAxisAnchorPair) -> [ConstraintPair] {
    return lhs.map({$0 == rhs})
}

// MARK: Anchor Array == Anchor Array
@discardableResult
public func == (lhs: XAxisAnchorPairs, rhs: XAxisAnchorPairs) -> [[ConstraintPair]] {
    return lhs.map { element in
        rhs.map { element == $0 }
    }
}

// MARK: Anchor == Expression Array
@discardableResult
public func == (lhs: XAxisAnchorPair, rhs: XAxisAnchorPairExpressions) -> [ConstraintPair] {
    return rhs.map({lhs == $0})
}

// MARK: Anchor Array == Expression
@discardableResult
public func == (lhs: XAxisAnchorPairs, rhs: XAxisAnchorPairExpression) -> [ConstraintPair] {
    return lhs.map {$0 == rhs }
}

// MARK: Anchor Array == Expression Array
@discardableResult
public func == (lhs: XAxisAnchorPairs, rhs: XAxisAnchorPairExpressions) -> [[ConstraintPair]] {
    return lhs.map { element in
        rhs.map { element == $0 }
    }
}

// MARK: - LessThanOrEqual

// MARK: Anchor <= Anchor Array
@discardableResult
public func <= (lhs: XAxisAnchorPair, rhs: XAxisAnchorPairs) -> [ConstraintPair] {
    return rhs.map({lhs <= $0})
}

// MARK: Anchor Array <= Anchor
@discardableResult
public func <= (lhs: XAxisAnchorPairs, rhs: XAxisAnchorPair) -> [ConstraintPair] {
    return lhs.map({$0 <= rhs})
}

// MARK: Anchor Array <= Anchor Array
@discardableResult
public func <= (lhs: XAxisAnchorPairs, rhs: XAxisAnchorPairs) -> [[ConstraintPair]] {
    return lhs.map { element in
        rhs.map { element <= $0 }
    }
}

// MARK: Anchor <= Expression Array
@discardableResult
public func <= (lhs: XAxisAnchorPair, rhs: XAxisAnchorPairExpressions) -> [ConstraintPair] {
    return rhs.map({lhs <= $0})
}

// MARK: Anchor Array <= Expression
@discardableResult
public func <= (lhs: XAxisAnchorPairs, rhs: XAxisAnchorPairExpression) -> [ConstraintPair] {
    return lhs.map {$0 <= rhs }
}

// MARK: Anchor Array <= Expression Array
@discardableResult
public func <= (lhs: XAxisAnchorPairs, rhs: XAxisAnchorPairExpressions) -> [[ConstraintPair]] {
    return lhs.map { element in
        rhs.map { element <= $0 }
    }
}

// MARK: - GreaterThanOrEqual

// MARK: Anchor >= Anchor Array
@discardableResult
public func >= (lhs: XAxisAnchorPair, rhs: XAxisAnchorPairs) -> [ConstraintPair] {
    return rhs.map({lhs >= $0})
}

// MARK: Anchor Array >= Anchor
@discardableResult
public func >= (lhs: XAxisAnchorPairs, rhs: XAxisAnchorPair) -> [ConstraintPair] {
    return lhs.map({$0 >= rhs})
}

// MARK: Anchor Array >= Anchor Array
@discardableResult
public func >= (lhs: XAxisAnchorPairs, rhs: XAxisAnchorPairs) -> [[ConstraintPair]] {
    return lhs.map { element in
        rhs.map { element >= $0 }
    }
}

// MARK: Anchor >= Expression Array
@discardableResult
public func >= (lhs: XAxisAnchorPair, rhs: XAxisAnchorPairExpressions) -> [ConstraintPair] {
    return rhs.map({lhs >= $0})
}

// MARK: Anchor Array >= Expression
@discardableResult
public func >= (lhs: XAxisAnchorPairs, rhs: XAxisAnchorPairExpression) -> [ConstraintPair] {
    return lhs.map {$0 >= rhs }
}

// MARK: Anchor Array >= Expression Array
@discardableResult
public func >= (lhs: XAxisAnchorPairs, rhs: XAxisAnchorPairExpressions) -> [[ConstraintPair]] {
    return lhs.map { element in
        rhs.map { element >= $0 }
    }
}
