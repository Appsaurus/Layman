//
//  ViewArray+SizeConstantOperators.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/17/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

// MARK: View == Constant
@discardableResult
public func == (lhs: [View], rhs: LayoutSize) -> [ConstraintPair] {
    return lhs.map {$0.sizeAnchors == rhs}
}

@discardableResult
public func == (lhs: [View], rhs: LayoutConfigurationPair) -> [ConstraintPair] {
    return lhs.map {$0.sizeAnchors == rhs}
}

// MARK: View <= Constant
@discardableResult
public func <= (lhs: [View], rhs: LayoutSize) -> [ConstraintPair] {
    return lhs.map {$0.sizeAnchors <= rhs}
}

@discardableResult
public func <= (lhs: [View], rhs: LayoutConfigurationPair) -> [ConstraintPair] {
    return lhs.map {$0.sizeAnchors <= rhs}
}

// MARK: View >= Constant
@discardableResult
public func >= (lhs: [View], rhs: LayoutSize) -> [ConstraintPair] {
    return lhs.map {$0.sizeAnchors >= rhs}
}

@discardableResult
public func >= (lhs: [View], rhs: LayoutConfigurationPair) -> [ConstraintPair] {
    return lhs.map {$0.sizeAnchors >= rhs}
}
