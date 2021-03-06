//
//  LayoutPriorityOperator.swift
//  Layman
//
//  Created by Brian Strobach on 1/3/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

precedencegroup PriorityPrecedence {
    associativity: none
    higherThan: RelationPrecedence
    lowerThan: AdditionPrecedence
}

infix operator ~ : PriorityPrecedence

// MARK: Equality
public func == (lhs: LayoutPriority, rhs: LayoutPriority) -> Bool {
    return lhs.rawValue == rhs.rawValue
}

@discardableResult
public func ~ (lhs: LayoutConstant, rhs: LayoutPriority) -> LayoutCoefficient {
    return LayoutCoefficient().with(constant: lhs).priority(rhs)
}

@discardableResult
public func ~ (lhs: RelativeLayoutConstant, rhs: LayoutPriority) -> LayoutCoefficient {
    return LayoutCoefficient().with(relativeConstant: lhs).priority(rhs)
}

@discardableResult
public func ~ (lhs: LayoutMultiplier, rhs: LayoutPriority) -> LayoutCoefficient {
    return LayoutCoefficient().times(lhs).priority(rhs)
}

@discardableResult
public func ~ (lhs: LayoutSize, rhs: LayoutPriority) -> LayoutCoefficientPair {
    return (lhs.width, lhs.height) ~ rhs
}

@discardableResult
public func ~ (lhs: LayoutConstantTuple, rhs: LayoutPriority) -> LayoutCoefficientPair {
    return LayoutCoefficientPair(
        LayoutCoefficient().with(constant: lhs.first).priority(rhs),
        LayoutCoefficient().with(constant: lhs.second).priority(rhs)
    )
}

public func ~ (lhs: LayoutAspectRatio, rhs: LayoutPriority) -> LayoutAspectRatioConfiguration {
    return LayoutAspectRatioConfiguration(lhs, rhs)
}

@discardableResult
public func ~ (lhs: LayoutPadding, rhs: LayoutPriority) -> EdgeAnchorsGroupCoefficients {
    return lhs.priority(rhs)
}

@discardableResult
public func ~ (lhs: RelativeLayoutPadding, rhs: LayoutPriority) -> EdgeAnchorsGroupCoefficients {
    return lhs.priority(rhs)
}

@discardableResult
public func ~ (lhs: ContentSizeAnchor, rhs: LayoutPriority) -> View {
    return lhs.priority(rhs)
}

@discardableResult
public func ~ (lhs: [ContentSizeAnchor], rhs: LayoutPriority) -> [View] {
    return lhs.map { $0.priority(rhs) }
}

// MARK: Constraints

@discardableResult
public func ~ (lhs: Constraint, rhs: LayoutPriority) -> Constraint {
    return lhs.priority(rhs)
}

@discardableResult
public func ~ (lhs: Constraints, rhs: LayoutPriority) -> Constraints {
    return lhs.map { $0.priority(rhs) }
}

@discardableResult
public func ~ (lhs: ConstraintPair, rhs: LayoutPriority) -> ConstraintPair {
    return lhs.priority(rhs)
}

@discardableResult
public func ~ (lhs: ConstraintPairs, rhs: LayoutPriority) -> ConstraintPairs {
    return lhs.map { $0.priority(rhs) }
}

@discardableResult
public func ~ (lhs: SideConstraints, rhs: LayoutPriority) -> SideConstraints {
    return lhs.priority(rhs)
}

@discardableResult
public func ~ (lhs: [SideConstraints], rhs: LayoutPriority) -> [SideConstraints] {
    return lhs.map { $0.priority(rhs) }
}
