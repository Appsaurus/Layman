// Generated using Sourcery 0.15.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

//
//  YAxisAnchor+ArrayConstantArithmeticOperators.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/4/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

@discardableResult
public func + (lhs: YAxisAnchors, rhs: LayoutConstant) -> YAxisAnchorExpressions {
    return lhs.map { $0 + rhs }
}

@discardableResult
public func - (lhs: YAxisAnchors, rhs: LayoutConstant) -> YAxisAnchorExpressions {
    return lhs.map { $0 - rhs }
}

@discardableResult
public func * (lhs: YAxisAnchors, rhs: LayoutMultiplier) -> YAxisAnchorExpressions {
    return lhs.map { $0 * rhs }
}

@discardableResult
public func / (lhs: YAxisAnchors, rhs: LayoutDivisor) -> YAxisAnchorExpressions {
    return lhs.map { $0 / rhs }
}

@discardableResult
public func / (lhs: YAxisAnchorExpressions, rhs: LayoutDivisor) -> YAxisAnchorExpressions {
    return lhs.map { $0 / rhs }
}
