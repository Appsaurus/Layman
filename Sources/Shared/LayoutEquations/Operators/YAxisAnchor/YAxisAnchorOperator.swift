//
//  YAxisAnchorOperator.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/4/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

//MARK: Equal
//MARK: Anchor == Expression
@discardableResult
public func == (lhs: YAxisAnchor, rhs: LayoutExpression<YAxisAnchor>) -> Constraint{
    return LayoutEquation(lhs, .equal, rhs).constraint
}


//MARK: Anchor == Anchor
@discardableResult
public func == (lhs: YAxisAnchor, rhs: YAxisAnchor) -> Constraint {
    return LayoutEquation(lhs, .equal, rhs).constraint
}

//MARK: LessThanOrEqual
//MARK: Anchor <= Expression
@discardableResult
public func <= (lhs: YAxisAnchor, rhs: LayoutExpression<YAxisAnchor>) -> Constraint{
    return LayoutEquation(lhs, .lessThanOrEqual, rhs).constraint
}


//MARK: Anchor <= Anchor
@discardableResult
public func <= (lhs: YAxisAnchor, rhs: YAxisAnchor) -> Constraint {
    return LayoutEquation(lhs, .lessThanOrEqual, rhs).constraint
}

//MARK: GreaterThanOrEqual
//MARK: Anchor >= Expression
@discardableResult
public func >= (lhs: YAxisAnchor, rhs: LayoutExpression<YAxisAnchor>) -> Constraint{
    return LayoutEquation(lhs, .greaterThanOrEqual, rhs).constraint
}


//MARK: Anchor >= Anchor
@discardableResult
public func >= (lhs: YAxisAnchor, rhs: YAxisAnchor) -> Constraint {
    return LayoutEquation(lhs, .greaterThanOrEqual, rhs).constraint
}
