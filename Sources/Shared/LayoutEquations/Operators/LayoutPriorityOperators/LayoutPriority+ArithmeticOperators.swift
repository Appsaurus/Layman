//
//  LayoutPriority+ArithmeticOperators.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/4/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

public func .+ (lhs: LayoutPriority, rhs: LayoutConstant) -> LayoutPriority {
    return lhs.plus(rhs)
}

public func .- (lhs: LayoutPriority, rhs: LayoutConstant) -> LayoutPriority {
    return lhs.minus(rhs)
}
