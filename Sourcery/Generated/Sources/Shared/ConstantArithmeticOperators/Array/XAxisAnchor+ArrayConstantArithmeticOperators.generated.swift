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
public func .+ (lhs: XAxisAnchors, rhs: LayoutConstant) -> XAxisAnchorExpressions {
    return lhs.plus(rhs)
}

@discardableResult
public func .- (lhs: XAxisAnchors, rhs: LayoutConstant) -> XAxisAnchorExpressions {
    return lhs.minus(rhs)
}

@discardableResult
public func .* (lhs: XAxisAnchors, rhs: LayoutConstant) -> XAxisAnchorExpressions {
    return lhs.times(rhs)
}

@discardableResult
public func .* (lhs: LayoutConstant, rhs: XAxisAnchors ) -> XAxisAnchorExpressions {
    return rhs.times(lhs)
}

@discardableResult
public func .* (lhs: XAxisAnchors, rhs: LayoutMultiplier) -> XAxisAnchorExpressions {
    return lhs.times(rhs)
}

@discardableResult
public func .* (lhs: LayoutMultiplier, rhs: XAxisAnchors ) -> XAxisAnchorExpressions {
    return rhs.times(lhs)
}

@discardableResult
public func ./ (lhs: XAxisAnchors, rhs: LayoutDivisor) -> XAxisAnchorExpressions {
    return lhs.divided(by: rhs)
}

// MARK: Expressions

@discardableResult
public func .+ (lhs: XAxisAnchorExpressions, rhs: LayoutConstant) -> XAxisAnchorExpressions {
    return lhs.map { $0.with(constant: rhs) }
}

@discardableResult
public func .- (lhs: XAxisAnchorExpressions, rhs: LayoutConstant) -> XAxisAnchorExpressions {
    return lhs.map { $0.with(constant: -rhs) }
}

@discardableResult
public func .* (lhs: XAxisAnchorExpressions, rhs: LayoutConstant) -> XAxisAnchorExpressions {
    return lhs.map { $0.times(rhs) }
}

@discardableResult
public func .* (lhs: LayoutConstant, rhs: XAxisAnchorExpressions) -> XAxisAnchorExpressions {
    return rhs .* lhs
}

@discardableResult
public func .* (lhs: XAxisAnchorExpressions, rhs: LayoutMultiplier) -> XAxisAnchorExpressions {
    return lhs.map { $0.times(rhs) }
}

@discardableResult
public func .* (lhs: LayoutMultiplier, rhs: XAxisAnchorExpressions) -> XAxisAnchorExpressions {
    return rhs .* lhs
}

@discardableResult
public func ./ (lhs: XAxisAnchorExpressions, rhs: LayoutDivisor) -> XAxisAnchorExpressions {
        return lhs.map { $0.divided(by: rhs) }
}
