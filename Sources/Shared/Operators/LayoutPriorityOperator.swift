//
//  LayoutPriorityOperator.swift
//  UILayoutKit
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

@discardableResult
public func ~ (lhs: LayoutConstant, rhs: LayoutPriority) -> LayoutCoefficient {
    return LayoutCoefficient().with(constant: lhs).priority(rhs)
}

@discardableResult
public func ~ (lhs: LayoutMultiplier, rhs: LayoutPriority) -> LayoutCoefficient {
    return LayoutCoefficient().times(lhs).priority(rhs)
}

@discardableResult
public func ~ (lhs: LayoutSize, rhs: LayoutPriority) -> LayoutCoefficientPair {
    return LayoutCoefficientPair(
        LayoutCoefficient().with(constant: lhs.width).priority(rhs),
        LayoutCoefficient().with(constant: lhs.height).priority(rhs)
    )
}

public func ~ (lhs: LayoutAspectRatio, rhs: LayoutPriority) -> LayoutAspectRatioConfiguration {
    return LayoutAspectRatioConfiguration(lhs, rhs)
}

@discardableResult
public func ~ (lhs: LayoutInset, rhs: LayoutPriority) -> EdgeAnchorsGroupCoefficients {
    return lhs.priority(rhs)
}

// MARK: Equality
public func == (lhs: LayoutPriority, rhs: LayoutPriority) -> Bool {
    return lhs.rawValue == rhs.rawValue
}
