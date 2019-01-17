//
//  EdgeAnchorGroupArray+RelationOperators.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/14/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

// MARK: - Equal

// MARK: Anchor == Anchor Array
@discardableResult
public func == (lhs: EdgeAnchorGroup, rhs: EdgeAnchorGroups) -> [SideConstraints] {
    return rhs.map({lhs == $0})
}

// MARK: Anchor Array == Anchor
@discardableResult
public func == (lhs: EdgeAnchorGroups, rhs: EdgeAnchorGroup) -> [SideConstraints] {
    return lhs.map({$0 == rhs})
}

// MARK: Anchor Array == Anchor Array
@discardableResult
public func == (lhs: EdgeAnchorGroups, rhs: EdgeAnchorGroups) -> [[SideConstraints]] {
    return lhs.map { element in
        rhs.map { element == $0 }
    }
}

// MARK: Anchor == Expression Array
@discardableResult
public func == (lhs: EdgeAnchorGroup, rhs: EdgeAnchorGroupExpressions) -> [SideConstraints] {
    return rhs.map({lhs == $0})
}

// MARK: Anchor Array == Expression
@discardableResult
public func == (lhs: EdgeAnchorGroups, rhs: EdgeAnchorGroupExpression) -> [SideConstraints] {
    return lhs.map {$0 == rhs }
}

// MARK: Anchor Array == Expression Array
@discardableResult
public func == (lhs: EdgeAnchorGroups, rhs: EdgeAnchorGroupExpressions) -> [[SideConstraints]] {
    return lhs.map { element in
        rhs.map { element == $0 }
    }
}

// MARK: - LessThanOrEqual

// MARK: Anchor <= Anchor Array
@discardableResult
public func <= (lhs: EdgeAnchorGroup, rhs: EdgeAnchorGroups) -> [SideConstraints] {
    return rhs.map({lhs <= $0})
}

// MARK: Anchor Array <= Anchor
@discardableResult
public func <= (lhs: EdgeAnchorGroups, rhs: EdgeAnchorGroup) -> [SideConstraints] {
    return lhs.map({$0 <= rhs})
}

// MARK: Anchor Array <= Anchor Array
@discardableResult
public func <= (lhs: EdgeAnchorGroups, rhs: EdgeAnchorGroups) -> [[SideConstraints]] {
    return lhs.map { element in
        rhs.map { element <= $0 }
    }
}

// MARK: Anchor <= Expression Array
@discardableResult
public func <= (lhs: EdgeAnchorGroup, rhs: EdgeAnchorGroupExpressions) -> [SideConstraints] {
    return rhs.map({lhs <= $0})
}

// MARK: Anchor Array <= Expression
@discardableResult
public func <= (lhs: EdgeAnchorGroups, rhs: EdgeAnchorGroupExpression) -> [SideConstraints] {
    return lhs.map {$0 <= rhs }
}

// MARK: Anchor Array <= Expression Array
@discardableResult
public func <= (lhs: EdgeAnchorGroups, rhs: EdgeAnchorGroupExpressions) -> [[SideConstraints]] {
    return lhs.map { element in
        rhs.map { element <= $0 }
    }
}

// MARK: - GreaterThanOrEqual

// MARK: Anchor >= Anchor Array
@discardableResult
public func >= (lhs: EdgeAnchorGroup, rhs: EdgeAnchorGroups) -> [SideConstraints] {
    return rhs.map({lhs >= $0})
}

// MARK: Anchor Array >= Anchor
@discardableResult
public func >= (lhs: EdgeAnchorGroups, rhs: EdgeAnchorGroup) -> [SideConstraints] {
    return lhs.map({$0 >= rhs})
}

// MARK: Anchor Array >= Anchor Array
@discardableResult
public func >= (lhs: EdgeAnchorGroups, rhs: EdgeAnchorGroups) -> [[SideConstraints]] {
    return lhs.map { element in
        rhs.map { element >= $0 }
    }
}

// MARK: Anchor >= Expression Array
@discardableResult
public func >= (lhs: EdgeAnchorGroup, rhs: EdgeAnchorGroupExpressions) -> [SideConstraints] {
    return rhs.map({lhs >= $0})
}

// MARK: Anchor Array >= Expression
@discardableResult
public func >= (lhs: EdgeAnchorGroups, rhs: EdgeAnchorGroupExpression) -> [SideConstraints] {
    return lhs.map {$0 >= rhs }
}

// MARK: Anchor Array >= Expression Array
@discardableResult
public func >= (lhs: EdgeAnchorGroups, rhs: EdgeAnchorGroupExpressions) -> [[SideConstraints]] {
    return lhs.map { element in
        rhs.map { element >= $0 }
    }
}
