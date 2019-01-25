// Generated using Sourcery 0.15.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

//
//  EdgeAnchorGroup+ArrayConstantArithmeticOperators.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/4/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

@discardableResult
public func + (lhs: EdgeAnchorGroups, rhs: LayoutConstant) -> EdgeAnchorGroupExpressions {
    return lhs.plus(rhs)
}

@discardableResult
public func - (lhs: EdgeAnchorGroups, rhs: LayoutConstant) -> EdgeAnchorGroupExpressions {
    return lhs.minus(rhs)
}

@discardableResult
public func * (lhs: EdgeAnchorGroups, rhs: LayoutMultiplier) -> EdgeAnchorGroupExpressions {
    return lhs.times(rhs)
}

@discardableResult
public func * (lhs: LayoutMultiplier, rhs: EdgeAnchorGroups ) -> EdgeAnchorGroupExpressions {
    return rhs.times(lhs)
}

@discardableResult
public func / (lhs: EdgeAnchorGroups, rhs: LayoutDivisor) -> EdgeAnchorGroupExpressions {
    return lhs.divided(by: rhs)
}

@discardableResult
public func / (lhs: EdgeAnchorGroupExpressions, rhs: LayoutDivisor) -> EdgeAnchorGroupExpressions {
    return lhs.map { $0.with(multiplier: (1.0 / rhs)) }
}
