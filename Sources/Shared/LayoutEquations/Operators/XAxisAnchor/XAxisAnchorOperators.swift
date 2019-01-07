//
//  XAxisAnchorOperators.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/4/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

//MARK: Equal
//MARK: Anchor == Expression
@discardableResult
public func == (lhs: XAxisAnchor, rhs: LayoutExpression<XAxisAnchor>) -> Constraint{
    return LayoutEquation(lhs, .equal, rhs).constraint
}


//MARK: Anchor == Anchor
@discardableResult
public func == (lhs: XAxisAnchor, rhs: XAxisAnchor) -> Constraint {
    return LayoutEquation(lhs, .equal, rhs).constraint
}

//MARK: LessThanOrEqual
//MARK: Anchor <= Expression
@discardableResult
public func <= (lhs: XAxisAnchor, rhs: LayoutExpression<XAxisAnchor>) -> Constraint{
    return LayoutEquation(lhs, .lessThanOrEqual, rhs).constraint
}


//MARK: Anchor <= Anchor
@discardableResult
public func <= (lhs: XAxisAnchor, rhs: XAxisAnchor) -> Constraint {
    return LayoutEquation(lhs, .lessThanOrEqual, rhs).constraint
}

//MARK: GreaterThanOrEqual
//MARK: Anchor >= Expression
@discardableResult
public func >= (lhs: XAxisAnchor, rhs: LayoutExpression<XAxisAnchor>) -> Constraint{
    return LayoutEquation(lhs, .greaterThanOrEqual, rhs).constraint
}


//MARK: Anchor >= Anchor
@discardableResult
public func >= (lhs: XAxisAnchor, rhs: XAxisAnchor) -> Constraint {
    return LayoutEquation(lhs, .greaterThanOrEqual, rhs).constraint
}
