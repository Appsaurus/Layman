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
    let configurations = LayoutPairConfiguration(.constant(rhs.width), .constant(rhs.height))
    return LayoutDimensionPairExpression(anchors: lhs, configurations: configurations)
}

@discardableResult
public func - (lhs: LayoutDimensionPair, rhs: LayoutSize) -> LayoutDimensionPairExpression {
    return lhs + LayoutSize(width: -rhs.width, height: -rhs.height)
}

@discardableResult
public func ~ (lhs: LayoutSize, rhs: LayoutPriority) -> LayoutPairConfiguration {
    return LayoutPairConfiguration(
        LayoutConfiguration(constant: lhs.width, priority: rhs),
        LayoutConfiguration(constant: lhs.height, priority: rhs)
    )
}
