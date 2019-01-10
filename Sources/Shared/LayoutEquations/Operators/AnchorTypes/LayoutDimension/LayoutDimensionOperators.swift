//
//  LayoutDimensionOperators.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/4/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

//MARK: Equal
//MARK: Anchor == Expression
@discardableResult
public func == (lhs: LayoutDimension, rhs: LayoutDimensionExpression) -> Constraint{
    return LayoutRelationship(lhs, .equal, rhs).constraint
}


//MARK: Anchor == Anchor
@discardableResult
public func == (lhs: LayoutDimension, rhs: LayoutDimension) -> Constraint {
    return LayoutRelationship(lhs, .equal, rhs).constraint
}

//MARK: LessThanOrEqual
//MARK: Anchor <= Expression
@discardableResult
public func <= (lhs: LayoutDimension, rhs: LayoutDimensionExpression) -> Constraint{
    return LayoutRelationship(lhs, .lessThanOrEqual, rhs).constraint
}


//MARK: Anchor <= Anchor
@discardableResult
public func <= (lhs: LayoutDimension, rhs: LayoutDimension) -> Constraint {
    return LayoutRelationship(lhs, .lessThanOrEqual, rhs).constraint
}

//MARK: GreaterThanOrEqual
//MARK: Anchor >= Expression
@discardableResult
public func >= (lhs: LayoutDimension, rhs: LayoutDimensionExpression) -> Constraint{
    return LayoutRelationship(lhs, .greaterThanOrEqual, rhs).constraint
}


//MARK: Anchor >= Anchor
@discardableResult
public func >= (lhs: LayoutDimension, rhs: LayoutDimension) -> Constraint {
    return LayoutRelationship(lhs, .greaterThanOrEqual, rhs).constraint
}


//MARK: Constants

//MARK: LayoutDimension == Constant
@discardableResult
public func == (lhs: LayoutDimension, rhs: LayoutConstant) -> Constraint {
    return lhs == LayoutConfiguration.constant(rhs)
}

@discardableResult
public func == (lhs: LayoutDimension, rhs: LayoutConfiguration) -> Constraint {
    return LayoutRelationship(lhs, .equal, nil, rhs).constraint
}

//MARK: LayoutAnchor<LayoutDimension> == Constant
//@discardableResult
//public func == (lhs: LayoutAnchor<LayoutDimension>, rhs: LayoutConstant) -> Constraint {
//    return lhs == LayoutConfiguration.constant(rhs)
//}
//
//@discardableResult
//public func == (lhs: LayoutAnchor<LayoutDimension>, rhs: LayoutConfiguration) -> Constraint {
//    return LayoutRelationship(lhs, .equal, nil, rhs).constraint
//}

//MARK: LayoutDimension <= Constant
@discardableResult
public func <= (lhs: LayoutDimension, rhs: LayoutConstant) -> Constraint {
    return lhs <= LayoutConfiguration.constant(rhs)
}

@discardableResult
public func <= (lhs: LayoutDimension, rhs: LayoutConfiguration) -> Constraint {
    return LayoutRelationship(lhs, .lessThanOrEqual, nil, rhs).constraint
}

//MARK: LayoutDimension >= Constant
@discardableResult
public func >= (lhs: LayoutDimension, rhs: LayoutConstant) -> Constraint {
    return lhs >= LayoutConfiguration.constant(rhs)
}

@discardableResult
public func >= (lhs: LayoutDimension, rhs: LayoutConfiguration) -> Constraint {
    return LayoutRelationship(lhs, .greaterThanOrEqual, nil, rhs).constraint
}
