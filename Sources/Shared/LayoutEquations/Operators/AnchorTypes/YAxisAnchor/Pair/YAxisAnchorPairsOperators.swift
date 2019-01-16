//
//  YAxisAnchorPairsOperators.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/15/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

// MARK: - Equal

// MARK: Anchor == Anchor Array
@discardableResult
public func == (lhs: YAxisAnchorPair, rhs: YAxisAnchorPairs) -> [ConstraintPair] {
    return rhs.map({lhs == $0})
}

// MARK: Anchor Array == Anchor
@discardableResult
public func == (lhs: YAxisAnchorPairs, rhs: YAxisAnchorPair) -> [ConstraintPair] {
    return lhs.map({$0 == rhs})
}

// MARK: Anchor Array == Anchor Array
@discardableResult
public func == (lhs: YAxisAnchorPairs, rhs: YAxisAnchorPairs) -> [[ConstraintPair]] {
    return lhs.map { element in
        rhs.map { element == $0 }
    }
}

// MARK: Anchor == Expression Array
@discardableResult
public func == (lhs: YAxisAnchorPair, rhs: YAxisAnchorPairExpressions) -> [ConstraintPair] {
    return rhs.map({lhs == $0})
}

// MARK: Anchor Array == Expression
@discardableResult
public func == (lhs: YAxisAnchorPairs, rhs: YAxisAnchorPairExpression) -> [ConstraintPair] {
    return lhs.map {$0 == rhs }
}

// MARK: Anchor Array == Expression Array
@discardableResult
public func == (lhs: YAxisAnchorPairs, rhs: YAxisAnchorPairExpressions) -> [[ConstraintPair]] {
    return lhs.map { element in
        rhs.map { element == $0 }
    }
}

// MARK: - LessThanOrEqual

// MARK: Anchor <= Anchor Array
@discardableResult
public func <= (lhs: YAxisAnchorPair, rhs: YAxisAnchorPairs) -> [ConstraintPair] {
    return rhs.map({lhs <= $0})
}

// MARK: Anchor Array <= Anchor
@discardableResult
public func <= (lhs: YAxisAnchorPairs, rhs: YAxisAnchorPair) -> [ConstraintPair] {
    return lhs.map({$0 <= rhs})
}

// MARK: Anchor Array <= Anchor Array
@discardableResult
public func <= (lhs: YAxisAnchorPairs, rhs: YAxisAnchorPairs) -> [[ConstraintPair]] {
    return lhs.map { element in
        rhs.map { element <= $0 }
    }
}

// MARK: Anchor <= Expression Array
@discardableResult
public func <= (lhs: YAxisAnchorPair, rhs: YAxisAnchorPairExpressions) -> [ConstraintPair] {
    return rhs.map({lhs <= $0})
}

// MARK: Anchor Array <= Expression
@discardableResult
public func <= (lhs: YAxisAnchorPairs, rhs: YAxisAnchorPairExpression) -> [ConstraintPair] {
    return lhs.map {$0 <= rhs }
}

// MARK: Anchor Array <= Expression Array
@discardableResult
public func <= (lhs: YAxisAnchorPairs, rhs: YAxisAnchorPairExpressions) -> [[ConstraintPair]] {
    return lhs.map { element in
        rhs.map { element <= $0 }
    }
}

// MARK: - GreaterThanOrEqual

// MARK: Anchor >= Anchor Array
@discardableResult
public func >= (lhs: YAxisAnchorPair, rhs: YAxisAnchorPairs) -> [ConstraintPair] {
    return rhs.map({lhs >= $0})
}

// MARK: Anchor Array >= Anchor
@discardableResult
public func >= (lhs: YAxisAnchorPairs, rhs: YAxisAnchorPair) -> [ConstraintPair] {
    return lhs.map({$0 >= rhs})
}

// MARK: Anchor Array >= Anchor Array
@discardableResult
public func >= (lhs: YAxisAnchorPairs, rhs: YAxisAnchorPairs) -> [[ConstraintPair]] {
    return lhs.map { element in
        rhs.map { element >= $0 }
    }
}

// MARK: Anchor >= Expression Array
@discardableResult
public func >= (lhs: YAxisAnchorPair, rhs: YAxisAnchorPairExpressions) -> [ConstraintPair] {
    return rhs.map({lhs >= $0})
}

// MARK: Anchor Array >= Expression
@discardableResult
public func >= (lhs: YAxisAnchorPairs, rhs: YAxisAnchorPairExpression) -> [ConstraintPair] {
    return lhs.map {$0 >= rhs }
}

// MARK: Anchor Array >= Expression Array
@discardableResult
public func >= (lhs: YAxisAnchorPairs, rhs: YAxisAnchorPairExpressions) -> [[ConstraintPair]] {
    return lhs.map { element in
        rhs.map { element >= $0 }
    }
}
