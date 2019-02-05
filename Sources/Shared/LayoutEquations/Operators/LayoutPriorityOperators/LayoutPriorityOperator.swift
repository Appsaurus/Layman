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
public func ~ (lhs: LayoutConstant, rhs: LayoutPriority) -> LayoutConfiguration {
    return LayoutConfiguration().with(constant: lhs).priority(rhs)
}

@discardableResult
public func ~ (lhs: LayoutMultiplier, rhs: LayoutPriority) -> LayoutConfiguration {
    return LayoutConfiguration().times(lhs).priority(rhs)
}

@discardableResult
public func ~ (lhs: LayoutSize, rhs: LayoutPriority) -> LayoutConfigurationPair {
    return LayoutConfigurationPair(
        LayoutConfiguration().with(constant: lhs.width).priority(rhs),
        LayoutConfiguration().with(constant: lhs.height).priority(rhs)
    )
}

public func == (lhs: LayoutPriority, rhs: LayoutPriority) -> Bool {
    return lhs.rawValue == rhs.rawValue
}
