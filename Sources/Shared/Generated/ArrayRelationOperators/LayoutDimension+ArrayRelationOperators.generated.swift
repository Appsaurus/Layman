// Generated using Sourcery 0.15.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

//
//  LayoutDimension+ArrayRelationOperators.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/4/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

// MARK: - Equal

// MARK: Anchor == Anchor Array
@discardableResult
public func == (lhs: LayoutDimension, rhs: LayoutDimensions) -> Constraints {
    return rhs.map({lhs == $0})
}

// MARK: Anchor Array == Anchor
@discardableResult
public func == (lhs: LayoutDimensions, rhs: LayoutDimension) -> Constraints {
    return lhs.map({$0 == rhs})
}

// MARK: Anchor Array == Anchor Array
@discardableResult
public func == (lhs: LayoutDimensions, rhs: LayoutDimensions) -> [Constraints] {
    return lhs.map { element in
        rhs.map { element == $0 }
    }
}

// MARK: Anchor == Expression Array
@discardableResult
public func == (lhs: LayoutDimension, rhs: LayoutDimensionExpressions) -> Constraints {
    return rhs.map({lhs == $0})
}

// MARK: Anchor Array == Expression
@discardableResult
public func == (lhs: LayoutDimensions, rhs: LayoutDimensionExpression) -> Constraints {
    return lhs.map {$0 == rhs }
}

// MARK: Anchor Array == Expression Array
@discardableResult
public func == (lhs: LayoutDimensions, rhs: LayoutDimensionExpressions) -> [Constraints] {
    return lhs.map { element in
        rhs.map { element == $0 }
    }
}

// MARK: - LessThanOrEqual

// MARK: Anchor <= Anchor Array
@discardableResult
public func <= (lhs: LayoutDimension, rhs: LayoutDimensions) -> Constraints {
    return rhs.map({lhs <= $0})
}

// MARK: Anchor Array <= Anchor
@discardableResult
public func <= (lhs: LayoutDimensions, rhs: LayoutDimension) -> Constraints {
    return lhs.map({$0 <= rhs})
}

// MARK: Anchor Array <= Anchor Array
@discardableResult
public func <= (lhs: LayoutDimensions, rhs: LayoutDimensions) -> [Constraints] {
    return lhs.map { element in
        rhs.map { element <= $0 }
    }
}

// MARK: Anchor <= Expression Array
@discardableResult
public func <= (lhs: LayoutDimension, rhs: LayoutDimensionExpressions) -> Constraints {
    return rhs.map({lhs <= $0})
}

// MARK: Anchor Array <= Expression
@discardableResult
public func <= (lhs: LayoutDimensions, rhs: LayoutDimensionExpression) -> Constraints {
    return lhs.map {$0 <= rhs }
}

// MARK: Anchor Array <= Expression Array
@discardableResult
public func <= (lhs: LayoutDimensions, rhs: LayoutDimensionExpressions) -> [Constraints] {
    return lhs.map { element in
        rhs.map { element <= $0 }
    }
}

// MARK: - GreaterThanOrEqual

// MARK: Anchor >= Anchor Array
@discardableResult
public func >= (lhs: LayoutDimension, rhs: LayoutDimensions) -> Constraints {
    return rhs.map({lhs >= $0})
}

// MARK: Anchor Array >= Anchor
@discardableResult
public func >= (lhs: LayoutDimensions, rhs: LayoutDimension) -> Constraints {
    return lhs.map({$0 >= rhs})
}

// MARK: Anchor Array >= Anchor Array
@discardableResult
public func >= (lhs: LayoutDimensions, rhs: LayoutDimensions) -> [Constraints] {
    return lhs.map { element in
        rhs.map { element >= $0 }
    }
}

// MARK: Anchor >= Expression Array
@discardableResult
public func >= (lhs: LayoutDimension, rhs: LayoutDimensionExpressions) -> Constraints {
    return rhs.map({lhs >= $0})
}

// MARK: Anchor Array >= Expression
@discardableResult
public func >= (lhs: LayoutDimensions, rhs: LayoutDimensionExpression) -> Constraints {
    return lhs.map {$0 >= rhs }
}

// MARK: Anchor Array >= Expression Array
@discardableResult
public func >= (lhs: LayoutDimensions, rhs: LayoutDimensionExpressions) -> [Constraints] {
    return lhs.map { element in
        rhs.map { element >= $0 }
    }
}
