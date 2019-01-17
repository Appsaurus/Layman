//
//  LayoutDimensionPairArray+SizeConstantArithmeticOperators.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/17/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

// MARK: Array +/- LayoutSize Constant
@discardableResult
public func + (lhs: LayoutDimensionPairs, rhs: LayoutSize) -> LayoutDimensionPairExpressions {
    return lhs.map { $0 + rhs }
}

@discardableResult
public func - (lhs: LayoutDimensionPairs, rhs: LayoutSize) -> LayoutDimensionPairExpressions {
    return lhs.map { $0 - rhs }
}
