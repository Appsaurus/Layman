//
//  SizeAnchorPairsOperators.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/15/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

// MARK: - Equal

// MARK: Anchor == Anchor Array
@discardableResult
public func == (lhs: SizeAnchorPair, rhs: SizeAnchorPairs) -> [ConstraintPair] {
    return rhs.map({lhs == $0})
}

// MARK: Anchor Array == Anchor
@discardableResult
public func == (lhs: SizeAnchorPairs, rhs: SizeAnchorPair) -> [ConstraintPair] {
    return lhs.map({$0 == rhs})
}

// MARK: Anchor Array == Anchor Array
@discardableResult
public func == (lhs: SizeAnchorPairs, rhs: SizeAnchorPairs) -> [[ConstraintPair]] {
    return lhs.map { element in
        rhs.map { element == $0 }
    }
}

// MARK: Anchor == Expression Array
@discardableResult
public func == (lhs: SizeAnchorPair, rhs: SizeAnchorExpressions) -> [ConstraintPair] {
    return rhs.map({lhs == $0})
}

// MARK: Anchor Array == Expression
@discardableResult
public func == (lhs: SizeAnchorPairs, rhs: SizeAnchorExpression) -> [ConstraintPair] {
    return lhs.map {$0 == rhs }
}

// MARK: Anchor Array == Expression Array
@discardableResult
public func == (lhs: SizeAnchorPairs, rhs: SizeAnchorExpressions) -> [[ConstraintPair]] {
    return lhs.map { element in
        rhs.map { element == $0 }
    }
}

// MARK: - LessThanOrEqual

// MARK: Anchor <= Anchor Array
@discardableResult
public func <= (lhs: SizeAnchorPair, rhs: SizeAnchorPairs) -> [ConstraintPair] {
    return rhs.map({lhs <= $0})
}

// MARK: Anchor Array <= Anchor
@discardableResult
public func <= (lhs: SizeAnchorPairs, rhs: SizeAnchorPair) -> [ConstraintPair] {
    return lhs.map({$0 <= rhs})
}

// MARK: Anchor Array <= Anchor Array
@discardableResult
public func <= (lhs: SizeAnchorPairs, rhs: SizeAnchorPairs) -> [[ConstraintPair]] {
    return lhs.map { element in
        rhs.map { element <= $0 }
    }
}

// MARK: Anchor <= Expression Array
@discardableResult
public func <= (lhs: SizeAnchorPair, rhs: SizeAnchorExpressions) -> [ConstraintPair] {
    return rhs.map({lhs <= $0})
}

// MARK: Anchor Array <= Expression
@discardableResult
public func <= (lhs: SizeAnchorPairs, rhs: SizeAnchorExpression) -> [ConstraintPair] {
    return lhs.map {$0 <= rhs }
}

// MARK: Anchor Array <= Expression Array
@discardableResult
public func <= (lhs: SizeAnchorPairs, rhs: SizeAnchorExpressions) -> [[ConstraintPair]] {
    return lhs.map { element in
        rhs.map { element <= $0 }
    }
}

// MARK: - GreaterThanOrEqual

// MARK: Anchor >= Anchor Array
@discardableResult
public func >= (lhs: SizeAnchorPair, rhs: SizeAnchorPairs) -> [ConstraintPair] {
    return rhs.map({lhs >= $0})
}

// MARK: Anchor Array >= Anchor
@discardableResult
public func >= (lhs: SizeAnchorPairs, rhs: SizeAnchorPair) -> [ConstraintPair] {
    return lhs.map({$0 >= rhs})
}

// MARK: Anchor Array >= Anchor Array
@discardableResult
public func >= (lhs: SizeAnchorPairs, rhs: SizeAnchorPairs) -> [[ConstraintPair]] {
    return lhs.map { element in
        rhs.map { element >= $0 }
    }
}

// MARK: Anchor >= Expression Array
@discardableResult
public func >= (lhs: SizeAnchorPair, rhs: SizeAnchorExpressions) -> [ConstraintPair] {
    return rhs.map({lhs >= $0})
}

// MARK: Anchor Array >= Expression
@discardableResult
public func >= (lhs: SizeAnchorPairs, rhs: SizeAnchorExpression) -> [ConstraintPair] {
    return lhs.map {$0 >= rhs }
}

// MARK: Anchor Array >= Expression Array
@discardableResult
public func >= (lhs: SizeAnchorPairs, rhs: SizeAnchorExpressions) -> [[ConstraintPair]] {
    return lhs.map { element in
        rhs.map { element >= $0 }
    }
}
