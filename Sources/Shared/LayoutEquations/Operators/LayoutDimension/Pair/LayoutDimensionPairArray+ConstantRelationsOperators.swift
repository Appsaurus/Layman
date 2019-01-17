//
//  LayoutDimensionPairArray+ConstantRelationsOperators.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/15/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

// MARK: Anchor Array == LayoutConstant
@discardableResult
public func == (lhs: LayoutDimensionPairs, rhs: LayoutConstant) -> ConstraintPairs {
    return lhs.map({$0 == rhs})
}

// MARK: Anchor Array == LayoutPairConfiguration
@discardableResult
public func == (lhs: LayoutDimensionPairs, rhs: LayoutPairConfiguration) -> ConstraintPairs {
    return lhs.map({$0 == rhs})
}

// MARK: Anchor Array <= LayoutConstant
@discardableResult
public func <= (lhs: LayoutDimensionPairs, rhs: LayoutConstant) -> ConstraintPairs {
    return lhs.map({$0 <= rhs})
}

// MARK: Anchor Array <= LayoutPairConfiguration
@discardableResult
public func <= (lhs: LayoutDimensionPairs, rhs: LayoutPairConfiguration) -> ConstraintPairs {
    return lhs.map({$0 <= rhs})
}

// MARK: Anchor Array >= LayoutConstant
@discardableResult
public func >= (lhs: LayoutDimensionPairs, rhs: LayoutConstant) -> ConstraintPairs {
    return lhs.map({$0 >= rhs})
}

// MARK: Anchor Array >= LayoutConstant
@discardableResult
public func >= (lhs: LayoutDimensionPairs, rhs: LayoutPairConfiguration) -> ConstraintPairs {
    return lhs.map({$0 >= rhs})
}

// MARK: LayoutSize Constants
@discardableResult
public func == (lhs: LayoutDimensionPairs, rhs: LayoutSize) -> ConstraintPairs {
    return lhs.map({$0 == rhs})
}

@discardableResult
public func <= (lhs: LayoutDimensionPairs, rhs: LayoutSize) -> ConstraintPairs {
    return lhs.map({$0 <= rhs})
}

@discardableResult
public func >= (lhs: LayoutDimensionPairs, rhs: LayoutSize) -> ConstraintPairs {
    return lhs.map({$0 >= rhs})
}
