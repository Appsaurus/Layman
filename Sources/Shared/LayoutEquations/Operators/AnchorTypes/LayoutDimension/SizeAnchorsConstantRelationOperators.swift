//
//  SizeAnchorsConstantRelationOperators.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/8/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

import CoreGraphics

// MARK: SizeAnchors == Constant
@discardableResult
public func == (lhs: SizeAnchors, rhs: LayoutConstant) -> ConstraintPair {
    return lhs == CGSize(side: rhs)
}

@discardableResult
public func == (lhs: SizeAnchors, rhs: CGSize) -> ConstraintPair {
    return lhs == LayoutPairConfiguration(.constant(rhs.width), .constant(rhs.height))
}

@discardableResult
public func == (lhs: SizeAnchors, rhs: LayoutPairConfiguration) -> ConstraintPair {
    return (LayoutRelationship(lhs.first, .equal, nil, rhs.first).constraint,
            LayoutRelationship(lhs.second, .equal, nil, rhs.second).constraint)
}

// MARK: SizeAnchors <= Constant
@discardableResult
public func <= (lhs: SizeAnchors, rhs: LayoutConstant) -> ConstraintPair {
    return lhs <= CGSize(side: rhs)
}

@discardableResult
public func <= (lhs: SizeAnchors, rhs: CGSize) -> ConstraintPair {
    return lhs <= LayoutPairConfiguration(.constant(rhs.width), .constant(rhs.height))
}

@discardableResult
public func <= (lhs: SizeAnchors, rhs: LayoutPairConfiguration) -> ConstraintPair {
    return (LayoutRelationship(lhs.first, .lessThanOrEqual, nil, rhs.first).constraint,
            LayoutRelationship(lhs.second, .lessThanOrEqual, nil, rhs.second).constraint)
}

// MARK: SizeAnchors >= Constant
@discardableResult
public func >= (lhs: SizeAnchors, rhs: LayoutConstant) -> ConstraintPair {
    return lhs <= CGSize(side: rhs)
}
@discardableResult
public func >= (lhs: SizeAnchors, rhs: CGSize) -> ConstraintPair {
    return lhs >= LayoutPairConfiguration(.constant(rhs.width), .constant(rhs.height))
}

@discardableResult
public func >= (lhs: SizeAnchors, rhs: LayoutPairConfiguration) -> ConstraintPair {
    return (LayoutRelationship(lhs.first, .greaterThanOrEqual, nil, rhs.first).constraint,
            LayoutRelationship(lhs.second, .greaterThanOrEqual, nil, rhs.second).constraint)
}
