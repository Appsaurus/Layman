// Generated using Sourcery 0.15.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

//
//  Layman
//
//  Created by Brian Strobach on 1/22/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//
// MARK: EdgeAnchorGroup <=> EdgeAnchorsGroupCoefficients

// MARK: - Equal

@discardableResult
public func .= (lhs: EdgeAnchorGroup, rhs: EdgeAnchorsGroupCoefficients) -> EdgeAnchorGroup.Solution {
    return lhs.equal(to: rhs)
}

// MARK: - LessThanOrEqual

@discardableResult
public func ≤ (lhs: EdgeAnchorGroup, rhs: EdgeAnchorsGroupCoefficients) -> EdgeAnchorGroup.Solution {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: - GreaterThanOrEqual

@discardableResult
public func ≥ (lhs: EdgeAnchorGroup, rhs: EdgeAnchorsGroupCoefficients) -> EdgeAnchorGroup.Solution {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: - InsetOrEqual
@discardableResult
public func ≥≤ (lhs: EdgeAnchorGroup, rhs: EdgeAnchorsGroupCoefficients) -> EdgeAnchorGroup.Solution {
    return lhs.insetOrEqual(to: rhs)
}

// MARK: - OutsetOrEqual
@discardableResult
public func ≤≥ (lhs: EdgeAnchorGroup, rhs: EdgeAnchorsGroupCoefficients) -> EdgeAnchorGroup.Solution {
    return lhs.outsetOrEqual(to: rhs)
}

// MARK: EdgeAnchorGroup Array <=> EdgeAnchorsGroupCoefficients

// MARK: - Equal

// MARK: Collection == Expression
@discardableResult
public func .= (lhs: [EdgeAnchorGroup], rhs: EdgeAnchorsGroupCoefficients) -> [EdgeAnchorGroup.Solution] {
    return lhs.equal(to: rhs)
}

// MARK: - LessThanOrEqual

// MARK: Collection <= Expression
@discardableResult
public func ≤ (lhs: [EdgeAnchorGroup], rhs: EdgeAnchorsGroupCoefficients) -> [EdgeAnchorGroup.Solution] {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: - GreaterThanOrEqual

// MARK: Collection >= Expression
@discardableResult
public func ≥ (lhs: [EdgeAnchorGroup], rhs: EdgeAnchorsGroupCoefficients) -> [EdgeAnchorGroup.Solution] {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: - InsetOrEqual
@discardableResult
public func ≥≤ (lhs: [EdgeAnchorGroup], rhs: EdgeAnchorsGroupCoefficients) -> [EdgeAnchorGroup.Solution] {
    return lhs.insetOrEqual(to: rhs)
}

// MARK: - OutsetOrEqual
@discardableResult
public func ≤≥ (lhs: [EdgeAnchorGroup], rhs: EdgeAnchorsGroupCoefficients) -> [EdgeAnchorGroup.Solution] {
    return lhs.outsetOrEqual(to: rhs)
}
// MARK: EdgeAnchorGroup <=> LayoutPadding

// MARK: - Equal

@discardableResult
public func .= (lhs: EdgeAnchorGroup, rhs: LayoutPadding) -> EdgeAnchorGroup.Solution {
    return lhs.equal(to: rhs)
}

// MARK: - LessThanOrEqual

@discardableResult
public func ≤ (lhs: EdgeAnchorGroup, rhs: LayoutPadding) -> EdgeAnchorGroup.Solution {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: - GreaterThanOrEqual

@discardableResult
public func ≥ (lhs: EdgeAnchorGroup, rhs: LayoutPadding) -> EdgeAnchorGroup.Solution {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: - InsetOrEqual
@discardableResult
public func ≥≤ (lhs: EdgeAnchorGroup, rhs: LayoutPadding) -> EdgeAnchorGroup.Solution {
    return lhs.insetOrEqual(to: rhs)
}

// MARK: - OutsetOrEqual
@discardableResult
public func ≤≥ (lhs: EdgeAnchorGroup, rhs: LayoutPadding) -> EdgeAnchorGroup.Solution {
    return lhs.outsetOrEqual(to: rhs)
}

// MARK: EdgeAnchorGroup Array <=> LayoutPadding

// MARK: - Equal

// MARK: Collection == Expression
@discardableResult
public func .= (lhs: [EdgeAnchorGroup], rhs: LayoutPadding) -> [EdgeAnchorGroup.Solution] {
    return lhs.equal(to: rhs)
}

// MARK: - LessThanOrEqual

// MARK: Collection <= Expression
@discardableResult
public func ≤ (lhs: [EdgeAnchorGroup], rhs: LayoutPadding) -> [EdgeAnchorGroup.Solution] {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: - GreaterThanOrEqual

// MARK: Collection >= Expression
@discardableResult
public func ≥ (lhs: [EdgeAnchorGroup], rhs: LayoutPadding) -> [EdgeAnchorGroup.Solution] {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: - InsetOrEqual
@discardableResult
public func ≥≤ (lhs: [EdgeAnchorGroup], rhs: LayoutPadding) -> [EdgeAnchorGroup.Solution] {
    return lhs.insetOrEqual(to: rhs)
}

// MARK: - OutsetOrEqual
@discardableResult
public func ≤≥ (lhs: [EdgeAnchorGroup], rhs: LayoutPadding) -> [EdgeAnchorGroup.Solution] {
    return lhs.outsetOrEqual(to: rhs)
}
// MARK: EdgeAnchorGroup <=> RelativeLayoutPadding

// MARK: - Equal

@discardableResult
public func .= (lhs: EdgeAnchorGroup, rhs: RelativeLayoutPadding) -> EdgeAnchorGroup.Solution {
    return lhs.equal(to: rhs)
}

// MARK: - LessThanOrEqual

@discardableResult
public func ≤ (lhs: EdgeAnchorGroup, rhs: RelativeLayoutPadding) -> EdgeAnchorGroup.Solution {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: - GreaterThanOrEqual

@discardableResult
public func ≥ (lhs: EdgeAnchorGroup, rhs: RelativeLayoutPadding) -> EdgeAnchorGroup.Solution {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: - InsetOrEqual
@discardableResult
public func ≥≤ (lhs: EdgeAnchorGroup, rhs: RelativeLayoutPadding) -> EdgeAnchorGroup.Solution {
    return lhs.insetOrEqual(to: rhs)
}

// MARK: - OutsetOrEqual
@discardableResult
public func ≤≥ (lhs: EdgeAnchorGroup, rhs: RelativeLayoutPadding) -> EdgeAnchorGroup.Solution {
    return lhs.outsetOrEqual(to: rhs)
}

// MARK: EdgeAnchorGroup Array <=> RelativeLayoutPadding

// MARK: - Equal

// MARK: Collection == Expression
@discardableResult
public func .= (lhs: [EdgeAnchorGroup], rhs: RelativeLayoutPadding) -> [EdgeAnchorGroup.Solution] {
    return lhs.equal(to: rhs)
}

// MARK: - LessThanOrEqual

// MARK: Collection <= Expression
@discardableResult
public func ≤ (lhs: [EdgeAnchorGroup], rhs: RelativeLayoutPadding) -> [EdgeAnchorGroup.Solution] {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: - GreaterThanOrEqual

// MARK: Collection >= Expression
@discardableResult
public func ≥ (lhs: [EdgeAnchorGroup], rhs: RelativeLayoutPadding) -> [EdgeAnchorGroup.Solution] {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: - InsetOrEqual
@discardableResult
public func ≥≤ (lhs: [EdgeAnchorGroup], rhs: RelativeLayoutPadding) -> [EdgeAnchorGroup.Solution] {
    return lhs.insetOrEqual(to: rhs)
}

// MARK: - OutsetOrEqual
@discardableResult
public func ≤≥ (lhs: [EdgeAnchorGroup], rhs: RelativeLayoutPadding) -> [EdgeAnchorGroup.Solution] {
    return lhs.outsetOrEqual(to: rhs)
}
