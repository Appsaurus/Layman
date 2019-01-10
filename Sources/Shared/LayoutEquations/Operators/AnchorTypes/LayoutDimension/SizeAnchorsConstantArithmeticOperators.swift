//
//  SizeAnchorsConstantArithmeticOperators.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/8/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

import CoreGraphics

@discardableResult
public func + (lhs: SizeAnchors, rhs: CGSize) -> SizeAnchorsExpression {
    return SizeAnchorsExpression(anchors: lhs,
                                configurations: LayoutPairConfiguration(.constant(rhs.width), .constant(rhs.height)))
}

@discardableResult
public func - (lhs: SizeAnchors, rhs: CGSize) -> SizeAnchorsExpression {
    return lhs + CGSize(width: -rhs.width, height: -rhs.height)
}

@discardableResult
public func ~ (lhs: CGSize, rhs: LayoutPriority) -> LayoutPairConfiguration {
    return LayoutPairConfiguration(
        lhs.width ~ rhs,
        lhs.height ~ rhs
    )
}

