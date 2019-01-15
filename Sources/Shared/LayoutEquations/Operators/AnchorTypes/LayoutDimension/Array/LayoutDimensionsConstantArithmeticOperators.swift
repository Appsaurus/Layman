//
//  LayoutDimensionsConstantArithmeticOperators.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/14/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

// MARK: LayoutDimension Array Constant Arithmetic
@discardableResult
public func + (lhs: LayoutDimensions, rhs: LayoutConstant) -> LayoutDimensionExpressions {
    return lhs.map { $0 + rhs }
}

@discardableResult
public func - (lhs: LayoutDimensions, rhs: LayoutConstant) -> LayoutDimensionExpressions {
    return lhs.map { $0 - rhs }
}

@discardableResult
public func * (lhs: LayoutDimensions, rhs: LayoutConstant) -> LayoutDimensionExpressions {
    return lhs.map { $0 * rhs }
}

@discardableResult
public func / (lhs: LayoutDimensions, rhs: LayoutConstant) -> LayoutDimensionExpressions {
    return lhs.map { $0 / rhs }
}

@discardableResult
public func / (lhs: LayoutDimensionExpressions, rhs: LayoutConstant) -> LayoutDimensionExpressions {
    return lhs.map { $0 / rhs }
}
