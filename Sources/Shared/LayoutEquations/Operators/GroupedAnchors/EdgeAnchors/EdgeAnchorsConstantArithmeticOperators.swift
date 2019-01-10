//
//  EdgeAnchorsConstantArithmeticOperators.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/10/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//
//
//  EdgeAnchorsConstantArithmeticOperators.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/8/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//


//MARK: AnchorPairs + Constant Arithmetic
@discardableResult
public func + (lhs: EdgeAnchors, rhs: LayoutConstant) -> EdgeAnchorsExpression {
    return lhs + LayoutInset(padding: rhs)
}

@discardableResult
public func - (lhs: EdgeAnchors, rhs: LayoutConstant) -> EdgeAnchorsExpression {
    return lhs + (-1 * rhs)
}

@discardableResult
public func * (lhs: EdgeAnchors, rhs: LayoutConstant) -> EdgeAnchorsExpression {
    return EdgeAnchorsExpression(anchors: lhs, configurations: EdgeAnchorsConfiguration(.multiplier(rhs)))
}

@discardableResult
public func / (lhs: EdgeAnchors, rhs: LayoutConstant) -> EdgeAnchorsExpression {
    return lhs * (1.0 / rhs)
}

@discardableResult
public func / (lhs: EdgeAnchorsExpression, rhs: LayoutConstant) -> EdgeAnchorsExpression {
    return lhs.with(multiplier: (1.0 / rhs))
}


//MARK: UIEdgeInset Constant
@discardableResult
public func + (lhs: EdgeAnchors, rhs: LayoutInset) -> EdgeAnchorsExpression{

    let configuration = EdgeAnchorsConfiguration(
        .constant(rhs.top),
        .constant(rhs.left),
        .constant(rhs.bottom),
        .constant(rhs.right)
    )
    return EdgeAnchorsExpression(lhs).configured(with: configuration)
}
