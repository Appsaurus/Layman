// Generated using Sourcery 0.15.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

//
//  EdgeAnchorGroup+InsetArithmeticOperators.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/10/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.

// MARK: UIEdgeInset Constant
@discardableResult
public func .+ (lhs: EdgeAnchorGroup, rhs: LayoutInset) -> EdgeAnchorGroupExpression {
    return lhs.plus(inset: rhs)
}

@discardableResult
public func .- (lhs: EdgeAnchorGroup, rhs: LayoutInset) -> EdgeAnchorGroupExpression {
    return lhs.minus(inset: rhs)
}

extension EdgeAnchorGroupExpression {
    var topExpression: YAxisAnchorExpression { return top .+ coefficients.top }
    var leadingExpression: XAxisAnchorExpression { return leading .+ coefficients.leading }
    var bottomExpression: YAxisAnchorExpression { return bottom .+ coefficients.bottom }
    var trailingExpression: XAxisAnchorExpression { return trailing .+ coefficients.trailing }
}
@discardableResult
private func .+ (lhs: XAxisAnchor, rhs: LayoutCoefficient) -> XAxisAnchorExpression {
    return XAxisAnchorExpression(variable: lhs, coefficients: rhs)
}

@discardableResult
private func .+ (lhs: YAxisAnchor, rhs: LayoutCoefficient) -> YAxisAnchorExpression {
    return YAxisAnchorExpression(variable: lhs, coefficients: rhs)
}

@discardableResult
private func .+ (lhs: LayoutDimension, rhs: LayoutCoefficient) -> LayoutDimensionExpression {
    return LayoutDimensionExpression(variable: lhs, coefficients: rhs)
}
