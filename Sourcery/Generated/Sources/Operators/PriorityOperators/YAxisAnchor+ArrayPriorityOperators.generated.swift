// Generated using Sourcery 0.15.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

//
//  YAxisAnchor+ArrayPriorityOperators.swift
//  Layman
//
//  Created by Brian Strobach on 1/4/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

@discardableResult
public func ~ (lhs: YAxisAnchors, rhs: LayoutPriority) -> YAxisAnchorExpressions {
    return lhs.map { YAxisAnchorExpression(variable: $0).priority(rhs) }
}

@discardableResult
public func ~ (lhs: YAxisAnchorExpressions, rhs: LayoutPriority) -> YAxisAnchorExpressions {
    lhs.forEach { $0.coefficients.set(priority: rhs) }
    return lhs
}
