//
//  LayoutDimensionPair+SizeConstantArithmeticOperators.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/8/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

// MARK: LayoutSize Constant
@discardableResult
public func + (lhs: LayoutDimensionPair, rhs: LayoutSize) -> LayoutDimensionPairExpression {
    let configuration = LayoutConfigurationPair(.constant(rhs.width), .constant(rhs.height))
    return LayoutDimensionPairExpression(anchor: lhs, configuration: configuration)
}

@discardableResult
public func - (lhs: LayoutDimensionPair, rhs: LayoutSize) -> LayoutDimensionPairExpression {
    return lhs + LayoutSize(width: -rhs.width, height: -rhs.height)
}

@discardableResult
public func ~ (lhs: LayoutSize, rhs: LayoutPriority) -> LayoutConfigurationPair {
    return LayoutConfigurationPair(
        LayoutConfiguration(constant: lhs.width, priority: rhs),
        LayoutConfiguration(constant: lhs.height, priority: rhs)
    )
}
