// Generated using Sourcery 0.15.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

//
//  XAxisAnchor+ArrayPriorityOperators.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/4/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

@discardableResult
public func ~ (lhs: XAxisAnchors, rhs: LayoutPriority) -> XAxisAnchorExpressions {
    return lhs.map { XAxisAnchorExpression(variable: $0).priority(rhs) }
}

@discardableResult
public func ~ (lhs: XAxisAnchorExpressions, rhs: LayoutPriority) -> XAxisAnchorExpressions {
    lhs.forEach { $0.coefficients.set(priority: rhs) }
    return lhs
}
