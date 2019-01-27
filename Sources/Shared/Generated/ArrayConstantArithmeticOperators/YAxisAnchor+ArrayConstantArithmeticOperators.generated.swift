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
    return lhs.plus(rhs)
}

@discardableResult
public func - (lhs: YAxisAnchors, rhs: LayoutConstant) -> YAxisAnchorExpressions {
    return lhs.minus(rhs)
}

@discardableResult
public func * (lhs: YAxisAnchors, rhs: LayoutMultiplier) -> YAxisAnchorExpressions {
    return lhs.times(rhs)
}

@discardableResult
public func * (lhs: LayoutMultiplier, rhs: YAxisAnchors ) -> YAxisAnchorExpressions {
    return rhs.times(lhs)
}

@discardableResult
public func / (lhs: YAxisAnchors, rhs: LayoutDivisor) -> YAxisAnchorExpressions {
    return lhs.divided(by: rhs)
}

// MARK: Expressions

@discardableResult
public func + (lhs: YAxisAnchorExpressions, rhs: LayoutConstant) -> YAxisAnchorExpressions {
    return lhs.map { $0.with(constant: rhs) }
}

@discardableResult
public func - (lhs: YAxisAnchorExpressions, rhs: LayoutConstant) -> YAxisAnchorExpressions {
    return lhs.map { $0.with(constant: -rhs) }
}

@discardableResult
public func * (lhs: YAxisAnchorExpressions, rhs: LayoutMultiplier) -> YAxisAnchorExpressions {
    return lhs.map { $0.with(multiplier: rhs) }
}

@discardableResult
public func * (lhs: LayoutMultiplier, rhs: YAxisAnchorExpressions ) -> YAxisAnchorExpressions {
    return rhs * lhs
}

@discardableResult
public func / (lhs: YAxisAnchorExpressions, rhs: LayoutDivisor) -> YAxisAnchorExpressions {
    return lhs * (1.0 / rhs)
}
