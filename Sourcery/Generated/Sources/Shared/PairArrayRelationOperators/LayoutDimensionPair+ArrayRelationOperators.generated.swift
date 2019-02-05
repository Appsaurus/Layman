// Generated using Sourcery 0.15.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

//
//  LayoutDimensionPair+ArrayRelationOperators.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/4/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

// MARK: - Equal

// MARK: Anchor == Anchor Array
@discardableResult
public func .= (lhs: LayoutDimensionPair, rhs: LayoutDimensionPairs) -> [LayoutDimensionPair.Solution] {
    return rhs.map({lhs .= $0})
}

// MARK: Anchor Array == Anchor
@discardableResult
public func .= (lhs: LayoutDimensionPairs, rhs: LayoutDimensionPair) -> [LayoutDimensionPair.Solution] {
    return lhs.map({$0 .= rhs})
}

// MARK: Anchor Array == Anchor Array
@discardableResult
public func .= (lhs: LayoutDimensionPairs, rhs: LayoutDimensionPairs) -> [[LayoutDimensionPair.Solution]] {
    return lhs.map { element in
        rhs.map { element .= $0 }
    }
}

// MARK: Anchor == Expression Array
@discardableResult
public func .= (lhs: LayoutDimensionPair, rhs: LayoutDimensionPairExpressions) -> [LayoutDimensionPair.Solution] {
    return rhs.map({lhs .= $0})
}

// MARK: Anchor Array == Expression
@discardableResult
public func .= (lhs: LayoutDimensionPairs, rhs: LayoutDimensionPairExpression) -> [LayoutDimensionPair.Solution] {
    return lhs.map {$0 .= rhs }
}

// MARK: Anchor Array == Expression Array
@discardableResult
public func .= (lhs: LayoutDimensionPairs, rhs: LayoutDimensionPairExpressions) -> [[LayoutDimensionPair.Solution]] {
    return lhs.map { element in
        rhs.map { element .= $0 }
    }
}

// MARK: - LessThanOrEqual

// MARK: Anchor <= Anchor Array
@discardableResult
public func ≤ (lhs: LayoutDimensionPair, rhs: LayoutDimensionPairs) -> [LayoutDimensionPair.Solution] {
    return rhs.map({lhs ≤ $0})
}

// MARK: Anchor Array <= Anchor
@discardableResult
public func ≤ (lhs: LayoutDimensionPairs, rhs: LayoutDimensionPair) -> [LayoutDimensionPair.Solution] {
    return lhs.map({$0 ≤ rhs})
}

// MARK: Anchor Array <= Anchor Array
@discardableResult
public func ≤ (lhs: LayoutDimensionPairs, rhs: LayoutDimensionPairs) -> [[LayoutDimensionPair.Solution]] {
    return lhs.map { element in
        rhs.map { element ≤ $0 }
    }
}

// MARK: Anchor <= Expression Array
@discardableResult
public func ≤ (lhs: LayoutDimensionPair, rhs: LayoutDimensionPairExpressions) -> [LayoutDimensionPair.Solution] {
    return rhs.map({lhs ≤ $0})
}

// MARK: Anchor Array <= Expression
@discardableResult
public func ≤ (lhs: LayoutDimensionPairs, rhs: LayoutDimensionPairExpression) -> [LayoutDimensionPair.Solution] {
    return lhs.map {$0 ≤ rhs }
}

// MARK: Anchor Array <= Expression Array
@discardableResult
public func ≤ (lhs: LayoutDimensionPairs, rhs: LayoutDimensionPairExpressions) -> [[LayoutDimensionPair.Solution]] {
    return lhs.map { element in
        rhs.map { element ≤ $0 }
    }
}

// MARK: - GreaterThanOrEqual

// MARK: Anchor >= Anchor Array
@discardableResult
public func ≥ (lhs: LayoutDimensionPair, rhs: LayoutDimensionPairs) -> [LayoutDimensionPair.Solution] {
    return rhs.map({lhs ≥ $0})
}

// MARK: Anchor Array >= Anchor
@discardableResult
public func ≥ (lhs: LayoutDimensionPairs, rhs: LayoutDimensionPair) -> [LayoutDimensionPair.Solution] {
    return lhs.map({$0 ≥ rhs})
}

// MARK: Anchor Array >= Anchor Array
@discardableResult
public func ≥ (lhs: LayoutDimensionPairs, rhs: LayoutDimensionPairs) -> [[LayoutDimensionPair.Solution]] {
    return lhs.map { element in
        rhs.map { element ≥ $0 }
    }
}

// MARK: Anchor >= Expression Array
@discardableResult
public func ≥ (lhs: LayoutDimensionPair, rhs: LayoutDimensionPairExpressions) -> [LayoutDimensionPair.Solution] {
    return rhs.map({lhs ≥ $0})
}

// MARK: Anchor Array >= Expression
@discardableResult
public func ≥ (lhs: LayoutDimensionPairs, rhs: LayoutDimensionPairExpression) -> [LayoutDimensionPair.Solution] {
    return lhs.map {$0 ≥ rhs }
}

// MARK: Anchor Array >= Expression Array
@discardableResult
public func ≥ (lhs: LayoutDimensionPairs, rhs: LayoutDimensionPairExpressions) -> [[LayoutDimensionPair.Solution]] {
    return lhs.map { element in
        rhs.map { element ≥ $0 }
    }
}
