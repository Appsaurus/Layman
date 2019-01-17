//
//  SizeAnchorsConstantArithmeticOperators.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/8/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

import CoreGraphics


// MARK: CGSize Constant
@discardableResult
public func + (lhs: LayoutDimensionPair, rhs: CGSize) -> LayoutDimensionPairExpression {
    let configurations = LayoutPairConfiguration(.constant(rhs.width), .constant(rhs.height))
    return LayoutDimensionPairExpression(anchors: lhs, configurations: configurations)
}

@discardableResult
public func - (lhs: LayoutDimensionPair, rhs: CGSize) -> LayoutDimensionPairExpression {
    return lhs + CGSize(width: -rhs.width, height: -rhs.height)
}

@discardableResult
public func ~ (lhs: CGSize, rhs: LayoutPriority) -> LayoutPairConfiguration {
    return LayoutPairConfiguration(
        lhs.width ~ rhs,
        lhs.height ~ rhs
    )
}
