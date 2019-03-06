// Generated using Sourcery 0.15.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

//
//  Layman
//
//  Created by Brian Strobach on 1/22/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//
// MARK: View <=> LayoutCoefficientTuple

// MARK: - Equal

@discardableResult
public func .= (lhs: View, rhs: LayoutCoefficientTuple) -> View.Solution {
    return lhs.equal(to: rhs)
}

// MARK: - LessThanOrEqual

@discardableResult
public func ≤ (lhs: View, rhs: LayoutCoefficientTuple) -> View.Solution {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: - GreaterThanOrEqual

@discardableResult
public func ≥ (lhs: View, rhs: LayoutCoefficientTuple) -> View.Solution {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: - InsetOrEqual
@discardableResult
public func ≥≤ (lhs: View, rhs: LayoutCoefficientTuple) -> View.Solution {
    return lhs.insetOrEqual(to: rhs)
}

// MARK: - OutsetOrEqual
@discardableResult
public func ≤≥ (lhs: View, rhs: LayoutCoefficientTuple) -> View.Solution {
    return lhs.outsetOrEqual(to: rhs)
}

// MARK: View Array <=> LayoutCoefficientTuple

// MARK: - Equal

// MARK: Collection == Expression
@discardableResult
public func .= (lhs: [View], rhs: LayoutCoefficientTuple) -> [View.Solution] {
    return lhs.equal(to: rhs)
}

// MARK: - LessThanOrEqual

// MARK: Collection <= Expression
@discardableResult
public func ≤ (lhs: [View], rhs: LayoutCoefficientTuple) -> [View.Solution] {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: - GreaterThanOrEqual

// MARK: Collection >= Expression
@discardableResult
public func ≥ (lhs: [View], rhs: LayoutCoefficientTuple) -> [View.Solution] {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: - InsetOrEqual
@discardableResult
public func ≥≤ (lhs: [View], rhs: LayoutCoefficientTuple) -> [View.Solution] {
    return lhs.insetOrEqual(to: rhs)
}

// MARK: - OutsetOrEqual
@discardableResult
public func ≤≥ (lhs: [View], rhs: LayoutCoefficientTuple) -> [View.Solution] {
    return lhs.outsetOrEqual(to: rhs)
}
// MARK: View <=> LayoutConstantTuple

// MARK: - Equal

@discardableResult
public func .= (lhs: View, rhs: LayoutConstantTuple) -> View.Solution {
    return lhs.equal(to: rhs)
}

// MARK: - LessThanOrEqual

@discardableResult
public func ≤ (lhs: View, rhs: LayoutConstantTuple) -> View.Solution {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: - GreaterThanOrEqual

@discardableResult
public func ≥ (lhs: View, rhs: LayoutConstantTuple) -> View.Solution {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: - InsetOrEqual
@discardableResult
public func ≥≤ (lhs: View, rhs: LayoutConstantTuple) -> View.Solution {
    return lhs.insetOrEqual(to: rhs)
}

// MARK: - OutsetOrEqual
@discardableResult
public func ≤≥ (lhs: View, rhs: LayoutConstantTuple) -> View.Solution {
    return lhs.outsetOrEqual(to: rhs)
}

// MARK: View Array <=> LayoutConstantTuple

// MARK: - Equal

// MARK: Collection == Expression
@discardableResult
public func .= (lhs: [View], rhs: LayoutConstantTuple) -> [View.Solution] {
    return lhs.equal(to: rhs)
}

// MARK: - LessThanOrEqual

// MARK: Collection <= Expression
@discardableResult
public func ≤ (lhs: [View], rhs: LayoutConstantTuple) -> [View.Solution] {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: - GreaterThanOrEqual

// MARK: Collection >= Expression
@discardableResult
public func ≥ (lhs: [View], rhs: LayoutConstantTuple) -> [View.Solution] {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: - InsetOrEqual
@discardableResult
public func ≥≤ (lhs: [View], rhs: LayoutConstantTuple) -> [View.Solution] {
    return lhs.insetOrEqual(to: rhs)
}

// MARK: - OutsetOrEqual
@discardableResult
public func ≤≥ (lhs: [View], rhs: LayoutConstantTuple) -> [View.Solution] {
    return lhs.outsetOrEqual(to: rhs)
}
// MARK: View <=> RelativeLayoutConstantTuple

// MARK: - Equal

@discardableResult
public func .= (lhs: View, rhs: RelativeLayoutConstantTuple) -> View.Solution {
    return lhs.equal(to: rhs)
}

// MARK: - LessThanOrEqual

@discardableResult
public func ≤ (lhs: View, rhs: RelativeLayoutConstantTuple) -> View.Solution {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: - GreaterThanOrEqual

@discardableResult
public func ≥ (lhs: View, rhs: RelativeLayoutConstantTuple) -> View.Solution {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: - InsetOrEqual
@discardableResult
public func ≥≤ (lhs: View, rhs: RelativeLayoutConstantTuple) -> View.Solution {
    return lhs.insetOrEqual(to: rhs)
}

// MARK: - OutsetOrEqual
@discardableResult
public func ≤≥ (lhs: View, rhs: RelativeLayoutConstantTuple) -> View.Solution {
    return lhs.outsetOrEqual(to: rhs)
}

// MARK: View Array <=> RelativeLayoutConstantTuple

// MARK: - Equal

// MARK: Collection == Expression
@discardableResult
public func .= (lhs: [View], rhs: RelativeLayoutConstantTuple) -> [View.Solution] {
    return lhs.equal(to: rhs)
}

// MARK: - LessThanOrEqual

// MARK: Collection <= Expression
@discardableResult
public func ≤ (lhs: [View], rhs: RelativeLayoutConstantTuple) -> [View.Solution] {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: - GreaterThanOrEqual

// MARK: Collection >= Expression
@discardableResult
public func ≥ (lhs: [View], rhs: RelativeLayoutConstantTuple) -> [View.Solution] {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: - InsetOrEqual
@discardableResult
public func ≥≤ (lhs: [View], rhs: RelativeLayoutConstantTuple) -> [View.Solution] {
    return lhs.insetOrEqual(to: rhs)
}

// MARK: - OutsetOrEqual
@discardableResult
public func ≤≥ (lhs: [View], rhs: RelativeLayoutConstantTuple) -> [View.Solution] {
    return lhs.outsetOrEqual(to: rhs)
}
