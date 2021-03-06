// Generated using Sourcery 0.15.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

//
//  Layman
//
//  Created by Brian Strobach on 1/22/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//
// MARK: XAxisAnchor <=> LayoutConstant

// MARK: - Equal

@discardableResult
public func .= (lhs: XAxisAnchor, rhs: LayoutConstant) -> XAxisAnchor.Solution {
    return lhs.equal(to: rhs)
}

// MARK: - LessThanOrEqual

@discardableResult
public func ≤ (lhs: XAxisAnchor, rhs: LayoutConstant) -> XAxisAnchor.Solution {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: - GreaterThanOrEqual

@discardableResult
public func ≥ (lhs: XAxisAnchor, rhs: LayoutConstant) -> XAxisAnchor.Solution {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: - InsetOrEqual
@discardableResult
public func ≥≤ (lhs: XAxisAnchor, rhs: LayoutConstant) -> XAxisAnchor.Solution {
    return lhs.insetOrEqual(to: rhs)
}

// MARK: - OutsetOrEqual
@discardableResult
public func ≤≥ (lhs: XAxisAnchor, rhs: LayoutConstant) -> XAxisAnchor.Solution {
    return lhs.outsetOrEqual(to: rhs)
}

// MARK: XAxisAnchor Array <=> LayoutConstant

// MARK: - Equal

// MARK: Collection == Expression
@discardableResult
public func .= (lhs: [XAxisAnchor], rhs: LayoutConstant) -> [XAxisAnchor.Solution] {
    return lhs.equal(to: rhs)
}

// MARK: - LessThanOrEqual

// MARK: Collection <= Expression
@discardableResult
public func ≤ (lhs: [XAxisAnchor], rhs: LayoutConstant) -> [XAxisAnchor.Solution] {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: - GreaterThanOrEqual

// MARK: Collection >= Expression
@discardableResult
public func ≥ (lhs: [XAxisAnchor], rhs: LayoutConstant) -> [XAxisAnchor.Solution] {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: - InsetOrEqual
@discardableResult
public func ≥≤ (lhs: [XAxisAnchor], rhs: LayoutConstant) -> [XAxisAnchor.Solution] {
    return lhs.insetOrEqual(to: rhs)
}

// MARK: - OutsetOrEqual
@discardableResult
public func ≤≥ (lhs: [XAxisAnchor], rhs: LayoutConstant) -> [XAxisAnchor.Solution] {
    return lhs.outsetOrEqual(to: rhs)
}
// MARK: XAxisAnchor <=> LayoutCoefficient

// MARK: - Equal

@discardableResult
public func .= (lhs: XAxisAnchor, rhs: LayoutCoefficient) -> XAxisAnchor.Solution {
    return lhs.equal(to: rhs)
}

// MARK: - LessThanOrEqual

@discardableResult
public func ≤ (lhs: XAxisAnchor, rhs: LayoutCoefficient) -> XAxisAnchor.Solution {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: - GreaterThanOrEqual

@discardableResult
public func ≥ (lhs: XAxisAnchor, rhs: LayoutCoefficient) -> XAxisAnchor.Solution {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: - InsetOrEqual
@discardableResult
public func ≥≤ (lhs: XAxisAnchor, rhs: LayoutCoefficient) -> XAxisAnchor.Solution {
    return lhs.insetOrEqual(to: rhs)
}

// MARK: - OutsetOrEqual
@discardableResult
public func ≤≥ (lhs: XAxisAnchor, rhs: LayoutCoefficient) -> XAxisAnchor.Solution {
    return lhs.outsetOrEqual(to: rhs)
}

// MARK: XAxisAnchor Array <=> LayoutCoefficient

// MARK: - Equal

// MARK: Collection == Expression
@discardableResult
public func .= (lhs: [XAxisAnchor], rhs: LayoutCoefficient) -> [XAxisAnchor.Solution] {
    return lhs.equal(to: rhs)
}

// MARK: - LessThanOrEqual

// MARK: Collection <= Expression
@discardableResult
public func ≤ (lhs: [XAxisAnchor], rhs: LayoutCoefficient) -> [XAxisAnchor.Solution] {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: - GreaterThanOrEqual

// MARK: Collection >= Expression
@discardableResult
public func ≥ (lhs: [XAxisAnchor], rhs: LayoutCoefficient) -> [XAxisAnchor.Solution] {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: - InsetOrEqual
@discardableResult
public func ≥≤ (lhs: [XAxisAnchor], rhs: LayoutCoefficient) -> [XAxisAnchor.Solution] {
    return lhs.insetOrEqual(to: rhs)
}

// MARK: - OutsetOrEqual
@discardableResult
public func ≤≥ (lhs: [XAxisAnchor], rhs: LayoutCoefficient) -> [XAxisAnchor.Solution] {
    return lhs.outsetOrEqual(to: rhs)
}
// MARK: XAxisAnchor <=> LayoutMultiplier

// MARK: - Equal

@discardableResult
public func .= (lhs: XAxisAnchor, rhs: LayoutMultiplier) -> XAxisAnchor.Solution {
    return lhs.equal(to: rhs)
}

// MARK: - LessThanOrEqual

@discardableResult
public func ≤ (lhs: XAxisAnchor, rhs: LayoutMultiplier) -> XAxisAnchor.Solution {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: - GreaterThanOrEqual

@discardableResult
public func ≥ (lhs: XAxisAnchor, rhs: LayoutMultiplier) -> XAxisAnchor.Solution {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: - InsetOrEqual
@discardableResult
public func ≥≤ (lhs: XAxisAnchor, rhs: LayoutMultiplier) -> XAxisAnchor.Solution {
    return lhs.insetOrEqual(to: rhs)
}

// MARK: - OutsetOrEqual
@discardableResult
public func ≤≥ (lhs: XAxisAnchor, rhs: LayoutMultiplier) -> XAxisAnchor.Solution {
    return lhs.outsetOrEqual(to: rhs)
}

// MARK: XAxisAnchor Array <=> LayoutMultiplier

// MARK: - Equal

// MARK: Collection == Expression
@discardableResult
public func .= (lhs: [XAxisAnchor], rhs: LayoutMultiplier) -> [XAxisAnchor.Solution] {
    return lhs.equal(to: rhs)
}

// MARK: - LessThanOrEqual

// MARK: Collection <= Expression
@discardableResult
public func ≤ (lhs: [XAxisAnchor], rhs: LayoutMultiplier) -> [XAxisAnchor.Solution] {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: - GreaterThanOrEqual

// MARK: Collection >= Expression
@discardableResult
public func ≥ (lhs: [XAxisAnchor], rhs: LayoutMultiplier) -> [XAxisAnchor.Solution] {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: - InsetOrEqual
@discardableResult
public func ≥≤ (lhs: [XAxisAnchor], rhs: LayoutMultiplier) -> [XAxisAnchor.Solution] {
    return lhs.insetOrEqual(to: rhs)
}

// MARK: - OutsetOrEqual
@discardableResult
public func ≤≥ (lhs: [XAxisAnchor], rhs: LayoutMultiplier) -> [XAxisAnchor.Solution] {
    return lhs.outsetOrEqual(to: rhs)
}
// MARK: XAxisAnchor <=> RelativeLayoutConstant

// MARK: - Equal

@discardableResult
public func .= (lhs: XAxisAnchor, rhs: RelativeLayoutConstant) -> XAxisAnchor.Solution {
    return lhs.equal(to: rhs)
}

// MARK: - LessThanOrEqual

@discardableResult
public func ≤ (lhs: XAxisAnchor, rhs: RelativeLayoutConstant) -> XAxisAnchor.Solution {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: - GreaterThanOrEqual

@discardableResult
public func ≥ (lhs: XAxisAnchor, rhs: RelativeLayoutConstant) -> XAxisAnchor.Solution {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: - InsetOrEqual
@discardableResult
public func ≥≤ (lhs: XAxisAnchor, rhs: RelativeLayoutConstant) -> XAxisAnchor.Solution {
    return lhs.insetOrEqual(to: rhs)
}

// MARK: - OutsetOrEqual
@discardableResult
public func ≤≥ (lhs: XAxisAnchor, rhs: RelativeLayoutConstant) -> XAxisAnchor.Solution {
    return lhs.outsetOrEqual(to: rhs)
}

// MARK: XAxisAnchor Array <=> RelativeLayoutConstant

// MARK: - Equal

// MARK: Collection == Expression
@discardableResult
public func .= (lhs: [XAxisAnchor], rhs: RelativeLayoutConstant) -> [XAxisAnchor.Solution] {
    return lhs.equal(to: rhs)
}

// MARK: - LessThanOrEqual

// MARK: Collection <= Expression
@discardableResult
public func ≤ (lhs: [XAxisAnchor], rhs: RelativeLayoutConstant) -> [XAxisAnchor.Solution] {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: - GreaterThanOrEqual

// MARK: Collection >= Expression
@discardableResult
public func ≥ (lhs: [XAxisAnchor], rhs: RelativeLayoutConstant) -> [XAxisAnchor.Solution] {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: - InsetOrEqual
@discardableResult
public func ≥≤ (lhs: [XAxisAnchor], rhs: RelativeLayoutConstant) -> [XAxisAnchor.Solution] {
    return lhs.insetOrEqual(to: rhs)
}

// MARK: - OutsetOrEqual
@discardableResult
public func ≤≥ (lhs: [XAxisAnchor], rhs: RelativeLayoutConstant) -> [XAxisAnchor.Solution] {
    return lhs.outsetOrEqual(to: rhs)
}
