//
//  YAxisAnchorImpliedRelationOperators.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/16/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

// MARK: - Equal

// MARK: View == Anchors
@discardableResult
public func == (lhs: View, rhs: YAxisAnchors) -> Constraints {
     return rhs.map({lhs == $0})
}

// MARK: View == Expressions
@discardableResult
public func == (lhs: View, rhs: YAxisAnchorExpressions) -> Constraints {
    return rhs.map({lhs == $0})
}

// MARK: - LessThanOrEqual

// MARK: View <= Anchors
@discardableResult
public func <= (lhs: View, rhs: YAxisAnchors) -> Constraints {
    return rhs.map({lhs == $0})
}
// MARK: View <= Expressions
@discardableResult
public func <= (lhs: View, rhs: YAxisAnchorExpressions) -> Constraints {
    return rhs.map({lhs == $0})
}

// MARK: - GreaterThanOrEqual

// MARK: View >= Anchors
@discardableResult
public func >= (lhs: View, rhs: YAxisAnchors) -> Constraints {
    return rhs.map({lhs == $0})
}
// MARK: View >= Expressions
@discardableResult
public func >= (lhs: View, rhs: YAxisAnchorExpressions) -> Constraints {
    return rhs.map({lhs == $0})
}

// MARK: - View Arrays

// MARK: [View] == Anchors
@discardableResult
public func == (lhs: [View], rhs: YAxisAnchors) -> [Constraints] {
    return lhs.map { element in
        rhs.map({element == $0})
    }
}

// MARK: [View] == Expressions
@discardableResult
public func == (lhs: [View], rhs: YAxisAnchorExpressions) -> [Constraints] {
    return lhs.map { element in
        rhs.map({element == $0})
    }
}

// MARK: - LessThanOrEqual

// MARK: [View] <= Anchors
@discardableResult
public func <= (lhs: [View], rhs: YAxisAnchors) -> [Constraints] {
    return lhs.map { element in
        rhs.map({element == $0})
    }
}
// MARK: [View] <= Expressions
@discardableResult
public func <= (lhs: [View], rhs: YAxisAnchorExpressions) -> [Constraints] {
    return lhs.map { element in
        rhs.map({element == $0})
    }
}

// MARK: - GreaterThanOrEqual

// MARK: [View] >= Anchors
@discardableResult
public func >= (lhs: [View], rhs: YAxisAnchors) -> [Constraints] {
    return lhs.map { element in
        rhs.map({element == $0})
    }
}
// MARK: [View] >= Expressions
@discardableResult
public func >= (lhs: [View], rhs: YAxisAnchorExpressions) -> [Constraints] {
    return lhs.map { element in
        rhs.map({element == $0})
    }
}
