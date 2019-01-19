// Generated using Sourcery 0.15.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

//
//  XAxisAnchor+ArrayConstantArithmeticOperators.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/4/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

@discardableResult
public func + (lhs: XAxisAnchors, rhs: LayoutConstant) -> XAxisAnchorExpressions {
    return lhs.map { $0 + rhs }
}

@discardableResult
public func - (lhs: XAxisAnchors, rhs: LayoutConstant) -> XAxisAnchorExpressions {
    return lhs.map { $0 - rhs }
}

@discardableResult
public func * (lhs: XAxisAnchors, rhs: LayoutMultiplier) -> XAxisAnchorExpressions {
    return lhs.map { $0 * rhs }
}

@discardableResult
public func / (lhs: XAxisAnchors, rhs: LayoutDivisor) -> XAxisAnchorExpressions {
    return lhs.map { $0 / rhs }
}

@discardableResult
public func / (lhs: XAxisAnchorExpressions, rhs: LayoutDivisor) -> XAxisAnchorExpressions {
    return lhs.map { $0 / rhs }
}
