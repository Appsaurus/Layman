// Generated using Sourcery 0.15.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

//
//  LayoutDimension+ArrayInferredRelationOperators.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/4/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//
// MARK: [View] == Anchor
@discardableResult
public func == (lhs: [View], rhs: LayoutDimension) -> Constraints {
    return lhs.map { $0 == rhs }
}

// MARK: [View] == Anchors
@discardableResult
public func == (lhs: [View], rhs: LayoutDimensions) -> [Constraints] {
    return lhs.map { element in
        rhs.map({element == $0})
    }
}

// MARK: [View] == Expression
@discardableResult
public func == (lhs: [View], rhs: LayoutDimensionExpression) -> Constraints {
    return lhs.map { $0 == rhs }
}

// MARK: [View] == Expressions
@discardableResult
public func == (lhs: [View], rhs: LayoutDimensionExpressions) -> [Constraints] {
    return lhs.map { element in
        rhs.map({element == $0})
    }
}

// MARK: - LessThanOrEqual

// MARK: [View] <= Anchor
@discardableResult
public func <= (lhs: [View], rhs: LayoutDimension) -> Constraints {
    return lhs.map { $0 <= rhs }
}

// MARK: [View] <= Anchors
@discardableResult
public func <= (lhs: [View], rhs: LayoutDimensions) -> [Constraints] {
    return lhs.map { element in
        rhs.map({element <= $0})
    }
}

// MARK: [View] <= Expression
@discardableResult
public func <= (lhs: [View], rhs: LayoutDimensionExpression) -> Constraints {
    return lhs.map { $0 <= rhs }
}

// MARK: [View] <= Expressions
@discardableResult
public func <= (lhs: [View], rhs: LayoutDimensionExpressions) -> [Constraints] {
    return lhs.map { element in
        rhs.map({element <= $0})
    }
}

// MARK: - GreaterThanOrEqual

// MARK: [View] >= Anchor
@discardableResult
public func >= (lhs: [View], rhs: LayoutDimension) -> Constraints {
    return lhs.map { $0 >= rhs }
}

// MARK: [View] >= Anchors
@discardableResult
public func >= (lhs: [View], rhs: LayoutDimensions) -> [Constraints] {
    return lhs.map { element in
        rhs.map({element >= $0})
    }
}

// MARK: [View] >= Expression
@discardableResult
public func >= (lhs: [View], rhs: LayoutDimensionExpression) -> Constraints {
    return lhs.map { $0 >= rhs }
}

// MARK: [View] >= Expressions
@discardableResult
public func >= (lhs: [View], rhs: LayoutDimensionExpressions) -> [Constraints] {
    return lhs.map { element in
        rhs.map({element >= $0})
    }
}
