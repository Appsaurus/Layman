//
//  Temp.swift
//  UILayoutKit-iOS
//
//  Created by Brian Strobach on 1/18/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

import Foundation

precedencegroup RelationPrecedence {
    associativity: none
    higherThan: ComparisonPrecedence
    lowerThan: AdditionPrecedence
}

infix operator .= : RelationPrecedence

// MARK: Anchor == Anchor
@discardableResult
public func .= (lhs: LayoutDimension, rhs: LayoutDimension) -> Constraint {
    return LayoutRelationship(lhs, .equal, rhs).constraint
}

// MARK: Anchor == Expression
@discardableResult
public func .= (lhs: LayoutDimension, rhs: LayoutDimensionExpression) -> Constraint {
    return LayoutRelationship(lhs, .equal, rhs).constraint
}

// MARK: View == Anchor
@discardableResult
public func .= (lhs: View, rhs: LayoutDimension) -> Constraint {
    return lhs[keyPath: ...rhs] .= rhs
}

// M.RK: View == Anchor
@discardableResult
public func .= (lhs: View, rhs: LayoutDimensionExpression) -> Constraint {
    return lhs[keyPath: ...rhs] .= rhs
}

infix operator .=. : RelationPrecedence

// MARK: Anchor == Anchor
@discardableResult
public func .=. (lhs: LayoutDimension, rhs: LayoutDimension) -> Constraint {
    return LayoutRelationship(lhs, .equal, rhs).constraint
}

// MARK: Anchor == Expression
@discardableResult
public func .=. (lhs: LayoutDimension, rhs: LayoutDimensionExpression) -> Constraint {
    return LayoutRelationship(lhs, .equal, rhs).constraint
}

// MARK: View == Anchor
@discardableResult
public func .=. (lhs: View, rhs: LayoutDimension) -> Constraint {
    return lhs[keyPath: ...rhs] .=. rhs
}

// MARK: View == Anchor
@discardableResult
public func .=. (lhs: View, rhs: LayoutDimensionExpression) -> Constraint {
    return lhs[keyPath: ...rhs] .=. rhs
}

infix operator ≡ : RelationPrecedence

// MARK: Anchor == Anchor
@discardableResult
public func ≡ (lhs: LayoutDimension, rhs: LayoutDimension) -> Constraint {
    return LayoutRelationship(lhs, .equal, rhs).constraint
}

// MARK: Anchor == Expression
@discardableResult
public func ≡ (lhs: LayoutDimension, rhs: LayoutDimensionExpression) -> Constraint {
    return LayoutRelationship(lhs, .equal, rhs).constraint
}

infix operator ≈ : RelationPrecedence

// MARK: Anchor == Anchor
@discardableResult
public func ≈ (lhs: LayoutDimension, rhs: LayoutDimension) -> Constraint {
    return LayoutRelationship(lhs, .equal, rhs).constraint
}

// MARK: Anchor == Expression
@discardableResult
public func ≈ (lhs: LayoutDimension, rhs: LayoutDimensionExpression) -> Constraint {
    return LayoutRelationship(lhs, .equal, rhs).constraint
}

// MARK: View == Anchor
@discardableResult
public func ≈ (lhs: View, rhs: LayoutDimension) -> Constraint {
    return lhs[keyPath: ...rhs] ≈ rhs
}

// MARK: View == Anchor
@discardableResult
public func ≈ (lhs: View, rhs: LayoutDimensionExpression) -> Constraint {
    return lhs[keyPath: ...rhs] ≈ rhs
}

infix operator |=| : RelationPrecedence

// MARK: Anchor == Anchor
@discardableResult
public func |=| (lhs: LayoutDimension, rhs: LayoutDimension) -> Constraint {
    return LayoutRelationship(lhs, .equal, rhs).constraint
}

// MARK: Anchor == Expression
@discardableResult
public func |=| (lhs: LayoutDimension, rhs: LayoutDimensionExpression) -> Constraint {
    return LayoutRelationship(lhs, .equal, rhs).constraint
}

// MARK: View == Anchor
@discardableResult
public func |=| (lhs: View, rhs: LayoutDimension) -> Constraint {
    return lhs[keyPath: ...rhs] |=| rhs
}

// MARK: View == Anchor
@discardableResult
public func |=| (lhs: View, rhs: LayoutDimensionExpression) -> Constraint {
    return lhs[keyPath: ...rhs] |=| rhs
}

infix operator ≤ : RelationPrecedence

infix operator <=> : RelationPrecedence

// MARK: Anchor == Anchor
@discardableResult
public func <=> (lhs: LayoutDimension, rhs: LayoutDimension) -> Constraint {
    return LayoutRelationship(lhs, .equal, rhs).constraint
}

// MARK: Anchor == Expression
@discardableResult
public func <=> (lhs: LayoutDimension, rhs: LayoutDimensionExpression) -> Constraint {
    return LayoutRelationship(lhs, .equal, rhs).constraint
}

// MARK: View == Anchor
@discardableResult
public func <=> (lhs: View, rhs: LayoutDimension) -> Constraint {
    return lhs[keyPath: ...rhs] <=> rhs
}

// MARK: View == Anchor
@discardableResult
public func <=> (lhs: View, rhs: LayoutDimensionExpression) -> Constraint {
    return lhs[keyPath: ...rhs] <=> rhs
}

infix operator <> : RelationPrecedence

// MARK: Anchor == Anchor
@discardableResult
public func <> (lhs: LayoutDimension, rhs: LayoutDimension) -> Constraint {
    return LayoutRelationship(lhs, .equal, rhs).constraint
}

// MARK: Anchor == Expression
@discardableResult
public func <> (lhs: LayoutDimension, rhs: LayoutDimensionExpression) -> Constraint {
    return LayoutRelationship(lhs, .equal, rhs).constraint
}

// MARK: View == Anchor
@discardableResult
public func <> (lhs: View, rhs: LayoutDimension) -> Constraint {
    return lhs[keyPath: ...rhs] <> rhs
}

// MARK: View == Anchor
@discardableResult
public func <> (lhs: View, rhs: LayoutDimensionExpression) -> Constraint {
    return lhs[keyPath: ...rhs] <> rhs
}

precedencegroup OffsetPrecedence {
    associativity: none
    higherThan: AdditionPrecedence
}

infix operator .+ : OffsetPrecedence

@discardableResult
public func .+ (lhs: LayoutDimension, rhs: LayoutConstant) -> LayoutDimensionExpression {
    return LayoutExpression(variable: lhs, coefficients: .constant(rhs))
}

infix operator |+| : OffsetPrecedence

@discardableResult
public func |+| (lhs: LayoutDimension, rhs: LayoutConstant) -> LayoutDimensionExpression {
    return LayoutExpression(variable: lhs, coefficients: .constant(rhs))
}

infix operator .+. : OffsetPrecedence

@discardableResult
public func .+. (lhs: LayoutDimension, rhs: LayoutConstant) -> LayoutDimensionExpression {
    return LayoutExpression(variable: lhs, coefficients: .constant(rhs))
}

infix operator <+> : OffsetPrecedence

@discardableResult
public func <+> (lhs: LayoutDimension, rhs: LayoutConstant) -> LayoutDimensionExpression {
    return LayoutExpression(variable: lhs, coefficients: .constant(rhs))
}

infix operator ~+~ : OffsetPrecedence

@discardableResult
public func ~+~ (lhs: LayoutDimension, rhs: LayoutConstant) -> LayoutDimensionExpression {
    return LayoutExpression(variable: lhs, coefficients: .constant(rhs))
}
