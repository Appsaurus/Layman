// Generated using Sourcery 0.15.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

//
//  EdgeAnchorGroup+ArrayConstantArithmeticOperators.swift
//  Layman
//
//  Created by Brian Strobach on 1/4/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

@discardableResult
public func .+ (lhs: EdgeAnchorGroups, rhs: LayoutConstant) -> EdgeAnchorGroupExpressions {
    return lhs.plus(rhs)
}

@discardableResult
public func .- (lhs: EdgeAnchorGroups, rhs: LayoutConstant) -> EdgeAnchorGroupExpressions {
    return lhs.minus(rhs)
}

@discardableResult
public func .* (lhs: EdgeAnchorGroups, rhs: LayoutConstant) -> EdgeAnchorGroupExpressions {
    return lhs.times(rhs)
}

@discardableResult
public func .* (lhs: LayoutConstant, rhs: EdgeAnchorGroups ) -> EdgeAnchorGroupExpressions {
    return rhs.times(lhs)
}

@discardableResult
public func .* (lhs: EdgeAnchorGroups, rhs: LayoutMultiplier) -> EdgeAnchorGroupExpressions {
    return lhs.times(rhs)
}

@discardableResult
public func .* (lhs: LayoutMultiplier, rhs: EdgeAnchorGroups ) -> EdgeAnchorGroupExpressions {
    return rhs.times(lhs)
}

@discardableResult
public func ./ (lhs: EdgeAnchorGroups, rhs: LayoutDivisor) -> EdgeAnchorGroupExpressions {
    return lhs.divided(by: rhs)
}

// MARK: Expressions

@discardableResult
public func .+ (lhs: EdgeAnchorGroupExpressions, rhs: LayoutConstant) -> EdgeAnchorGroupExpressions {
    return lhs.map { $0.with(constant: rhs) }
}

@discardableResult
public func .- (lhs: EdgeAnchorGroupExpressions, rhs: LayoutConstant) -> EdgeAnchorGroupExpressions {
    return lhs.map { $0.with(constant: -rhs) }
}

@discardableResult
public func .* (lhs: EdgeAnchorGroupExpressions, rhs: LayoutConstant) -> EdgeAnchorGroupExpressions {
    return lhs.map { $0.times(rhs) }
}

@discardableResult
public func .* (lhs: LayoutConstant, rhs: EdgeAnchorGroupExpressions) -> EdgeAnchorGroupExpressions {
    return rhs .* lhs
}

@discardableResult
public func .* (lhs: EdgeAnchorGroupExpressions, rhs: LayoutMultiplier) -> EdgeAnchorGroupExpressions {
    return lhs.map { $0.times(rhs) }
}

@discardableResult
public func .* (lhs: LayoutMultiplier, rhs: EdgeAnchorGroupExpressions) -> EdgeAnchorGroupExpressions {
    return rhs .* lhs
}

@discardableResult
public func ./ (lhs: EdgeAnchorGroupExpressions, rhs: LayoutDivisor) -> EdgeAnchorGroupExpressions {
        return lhs.map { $0.divided(by: rhs) }
}
