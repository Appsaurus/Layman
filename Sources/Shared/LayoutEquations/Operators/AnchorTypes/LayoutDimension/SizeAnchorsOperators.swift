//
//  SizeAnchorsOperators.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/6/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

public typealias SizeAnchorsExpression = LayoutPairExpression<LayoutDimension, LayoutDimension>

//MARK: Equal
//MARK: Anchors == Expression
@discardableResult
public func == (lhs: SizeAnchors, rhs: SizeAnchorsExpression) -> ConstraintPair{
    return LayoutPairRelationship(lhs, .equal, rhs).constraints
}

//MARK: Anchors == Anchors
@discardableResult
public func == (lhs: SizeAnchors, rhs: SizeAnchors) -> ConstraintPair {
    return LayoutPairRelationship(lhs, .equal, rhs).constraints
}

//MARK: LessThanOrEqual
//MARK: Anchors <= Expression
@discardableResult
public func <= (lhs: SizeAnchors, rhs: SizeAnchorsExpression) -> ConstraintPair{
     return LayoutPairRelationship(lhs, .lessThanOrEqual, rhs).constraints
}


//MARK: Anchors <= Anchors
@discardableResult
public func <= (lhs: SizeAnchors, rhs: SizeAnchors) -> ConstraintPair {
    return LayoutPairRelationship(lhs, .lessThanOrEqual, rhs).constraints
}

//MARK: GreaterThanOrEqual
//MARK: Anchors >= Expression
@discardableResult
public func >= (lhs: SizeAnchors, rhs: SizeAnchorsExpression) -> ConstraintPair{
    return LayoutPairRelationship(lhs, .greaterThanOrEqual, rhs).constraints
}


//MARK: Anchors >= Anchors
@discardableResult
public func >= (lhs: SizeAnchors, rhs: SizeAnchors) -> ConstraintPair {
    return LayoutPairRelationship(lhs, .greaterThanOrEqual, rhs).constraints
}
