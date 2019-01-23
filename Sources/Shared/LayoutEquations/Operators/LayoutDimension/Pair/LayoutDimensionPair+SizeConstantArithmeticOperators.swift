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
    let coefficients = LayoutConfigurationPair(.constant(rhs.width), .constant(rhs.height))
    return LayoutDimensionPairExpression(anchor: lhs, coefficients: coefficients)
}

@discardableResult
public func - (lhs: LayoutDimensionPair, rhs: LayoutSize) -> LayoutDimensionPairExpression {
    return lhs + LayoutSize(width: -rhs.width, height: -rhs.height)
}

@discardableResult
public func ~ (lhs: LayoutSize, rhs: LayoutPriority) -> LayoutConfigurationPair {
    return LayoutConfigurationPair(
        LayoutConfiguration().with(constant: lhs.width).with(priority: rhs),
        LayoutConfiguration().with(constant: lhs.height).with(priority: rhs)
    )
}
