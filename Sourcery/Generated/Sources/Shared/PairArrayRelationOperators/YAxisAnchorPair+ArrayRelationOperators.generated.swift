// Generated using Sourcery 0.15.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

//
//  YAxisAnchorPair+ArrayRelationOperators.swift
//  Layman
//
//  Created by Brian Strobach on 1/4/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

// MARK: - Equal

// MARK: Anchor == Anchor Array
@discardableResult
public func .= (lhs: YAxisAnchorPair, rhs: YAxisAnchorPairs) -> [YAxisAnchorPair.Solution] {
    return rhs.map({lhs .= $0})
}

// MARK: Anchor Array == Anchor
@discardableResult
public func .= (lhs: YAxisAnchorPairs, rhs: YAxisAnchorPair) -> [YAxisAnchorPair.Solution] {
    return lhs.map({$0 .= rhs})
}

// MARK: Anchor Array == Anchor Array
@discardableResult
public func .= (lhs: YAxisAnchorPairs, rhs: YAxisAnchorPairs) -> [[YAxisAnchorPair.Solution]] {
    return lhs.map { element in
        rhs.map { element .= $0 }
    }
}

// MARK: Anchor == Expression Array
@discardableResult
public func .= (lhs: YAxisAnchorPair, rhs: YAxisAnchorPairExpressions) -> [YAxisAnchorPair.Solution] {
    return rhs.map({lhs .= $0})
}

// MARK: Anchor Array == Expression
@discardableResult
public func .= (lhs: YAxisAnchorPairs, rhs: YAxisAnchorPairExpression) -> [YAxisAnchorPair.Solution] {
    return lhs.map {$0 .= rhs }
}

// MARK: Anchor Array == Expression Array
@discardableResult
public func .= (lhs: YAxisAnchorPairs, rhs: YAxisAnchorPairExpressions) -> [[YAxisAnchorPair.Solution]] {
    return lhs.map { element in
        rhs.map { element .= $0 }
    }
}

// MARK: - LessThanOrEqual

// MARK: Anchor <= Anchor Array
@discardableResult
public func ≤ (lhs: YAxisAnchorPair, rhs: YAxisAnchorPairs) -> [YAxisAnchorPair.Solution] {
    return rhs.map({lhs ≤ $0})
}

// MARK: Anchor Array <= Anchor
@discardableResult
public func ≤ (lhs: YAxisAnchorPairs, rhs: YAxisAnchorPair) -> [YAxisAnchorPair.Solution] {
    return lhs.map({$0 ≤ rhs})
}

// MARK: Anchor Array <= Anchor Array
@discardableResult
public func ≤ (lhs: YAxisAnchorPairs, rhs: YAxisAnchorPairs) -> [[YAxisAnchorPair.Solution]] {
    return lhs.map { element in
        rhs.map { element ≤ $0 }
    }
}

// MARK: Anchor <= Expression Array
@discardableResult
public func ≤ (lhs: YAxisAnchorPair, rhs: YAxisAnchorPairExpressions) -> [YAxisAnchorPair.Solution] {
    return rhs.map({lhs ≤ $0})
}

// MARK: Anchor Array <= Expression
@discardableResult
public func ≤ (lhs: YAxisAnchorPairs, rhs: YAxisAnchorPairExpression) -> [YAxisAnchorPair.Solution] {
    return lhs.map {$0 ≤ rhs }
}

// MARK: Anchor Array <= Expression Array
@discardableResult
public func ≤ (lhs: YAxisAnchorPairs, rhs: YAxisAnchorPairExpressions) -> [[YAxisAnchorPair.Solution]] {
    return lhs.map { element in
        rhs.map { element ≤ $0 }
    }
}

// MARK: - GreaterThanOrEqual

// MARK: Anchor >= Anchor Array
@discardableResult
public func ≥ (lhs: YAxisAnchorPair, rhs: YAxisAnchorPairs) -> [YAxisAnchorPair.Solution] {
    return rhs.map({lhs ≥ $0})
}

// MARK: Anchor Array >= Anchor
@discardableResult
public func ≥ (lhs: YAxisAnchorPairs, rhs: YAxisAnchorPair) -> [YAxisAnchorPair.Solution] {
    return lhs.map({$0 ≥ rhs})
}

// MARK: Anchor Array >= Anchor Array
@discardableResult
public func ≥ (lhs: YAxisAnchorPairs, rhs: YAxisAnchorPairs) -> [[YAxisAnchorPair.Solution]] {
    return lhs.map { element in
        rhs.map { element ≥ $0 }
    }
}

// MARK: Anchor >= Expression Array
@discardableResult
public func ≥ (lhs: YAxisAnchorPair, rhs: YAxisAnchorPairExpressions) -> [YAxisAnchorPair.Solution] {
    return rhs.map({lhs ≥ $0})
}

// MARK: Anchor Array >= Expression
@discardableResult
public func ≥ (lhs: YAxisAnchorPairs, rhs: YAxisAnchorPairExpression) -> [YAxisAnchorPair.Solution] {
    return lhs.map {$0 ≥ rhs }
}

// MARK: Anchor Array >= Expression Array
@discardableResult
public func ≥ (lhs: YAxisAnchorPairs, rhs: YAxisAnchorPairExpressions) -> [[YAxisAnchorPair.Solution]] {
    return lhs.map { element in
        rhs.map { element ≥ $0 }
    }
}
