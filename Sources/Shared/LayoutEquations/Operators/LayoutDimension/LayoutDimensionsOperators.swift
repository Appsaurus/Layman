//
//  LayoutDimensionsOperators.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/6/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//


//MARK: Equal
//MARK: Anchors == Expression
@discardableResult
public func == (lhs: LayoutDimensions, rhs: MultiTermLayoutExpression<LayoutDimension, LayoutDimension>) -> ConstraintPair{
    return MultiTermLayoutEquation(lhs, .equal, rhs).constraints
}


//MARK: Anchors == Anchors
@discardableResult
public func == (lhs: LayoutDimensions, rhs: LayoutDimensions) -> ConstraintPair {
    return MultiTermLayoutEquation(lhs, .equal, rhs).constraints
}

//MARK: LessThanOrEqual
//MARK: Anchors <= Expression
@discardableResult
public func <= (lhs: LayoutDimensions, rhs: MultiTermLayoutExpression<LayoutDimension, LayoutDimension>) -> ConstraintPair{
     return MultiTermLayoutEquation(lhs, .lessThanOrEqual, rhs).constraints
}


//MARK: Anchors <= Anchors
@discardableResult
public func <= (lhs: LayoutDimensions, rhs: LayoutDimensions) -> ConstraintPair {
    return MultiTermLayoutEquation(lhs, .lessThanOrEqual, rhs).constraints
}

//MARK: GreaterThanOrEqual
//MARK: Anchors >= Expression
@discardableResult
public func >= (lhs: LayoutDimensions, rhs: MultiTermLayoutExpression<LayoutDimension, LayoutDimension>) -> ConstraintPair{
    return MultiTermLayoutEquation(lhs, .greaterThanOrEqual, rhs).constraints
}


//MARK: Anchors >= Anchors
@discardableResult
public func >= (lhs: LayoutDimensions, rhs: LayoutDimensions) -> ConstraintPair {
    return MultiTermLayoutEquation(lhs, .greaterThanOrEqual, rhs).constraints
}
