// Generated using Sourcery 0.15.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

//
//  Layman
//
//  Created by Brian Strobach on 1/22/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//
// MARK: View <=> LayoutConstant

// MARK: - Equal

@discardableResult
public func .= (lhs: View, rhs: LayoutConstant) -> View.Solution {
    return lhs.equal(to: rhs)
}

@discardableResult
public func .= (lhs: View, rhs: [LayoutConstant]) -> [View.Solution] {
    return lhs.equal(to: rhs)
}

// MARK: - LessThanOrEqual

@discardableResult
public func ≤ (lhs: View, rhs: LayoutConstant) -> View.Solution {
    return lhs.lessThanOrEqual(to: rhs)
}

@discardableResult
public func ≤ (lhs: View, rhs: [LayoutConstant]) -> [View.Solution] {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: - GreaterThanOrEqual

@discardableResult
public func ≥ (lhs: View, rhs: LayoutConstant) -> View.Solution {
    return lhs.greaterThanOrEqual(to: rhs)
}

@discardableResult
public func ≥ (lhs: View, rhs: [LayoutConstant]) -> [View.Solution] {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: View Array <=> LayoutConstant

// MARK: - Equal

// MARK: Collection == Expression
@discardableResult
public func .= (lhs: [View], rhs: LayoutConstant) -> [View.Solution] {
    return lhs.map { $0.equal(to: rhs) }
}

// MARK: Collection == Expression Array
@discardableResult
public func .= (lhs: [View], rhs: [LayoutConstant]) -> [[View.Solution]] {
    return lhs.map { $0.equal(to: rhs) }
}

// MARK: - LessThanOrEqual

// MARK: Collection <= Expression
@discardableResult
public func ≤ (lhs: [View], rhs: LayoutConstant) -> [View.Solution] {
    return lhs.map { $0.lessThanOrEqual(to: rhs) }
}

// MARK: Collection <= Expression Array
@discardableResult
public func ≤ (lhs: [View], rhs: [LayoutConstant]) -> [[View.Solution]] {
    return lhs.map { $0.lessThanOrEqual(to: rhs) }
}

// MARK: - GreaterThanOrEqual

// MARK: Collection >= Expression
@discardableResult
public func ≥ (lhs: [View], rhs: LayoutConstant) -> [View.Solution] {
    return lhs.map { $0.greaterThanOrEqual(to: rhs) }
}

// MARK: Collection >= Expression Array
@discardableResult
public func ≥ (lhs: [View], rhs: [LayoutConstant]) -> [[View.Solution]] {
    return lhs.map { $0.greaterThanOrEqual(to: rhs) }
}
// MARK: View <=> LayoutCoefficient

// MARK: - Equal

@discardableResult
public func .= (lhs: View, rhs: LayoutCoefficient) -> View.Solution {
    return lhs.equal(to: rhs)
}

@discardableResult
public func .= (lhs: View, rhs: [LayoutCoefficient]) -> [View.Solution] {
    return lhs.equal(to: rhs)
}

// MARK: - LessThanOrEqual

@discardableResult
public func ≤ (lhs: View, rhs: LayoutCoefficient) -> View.Solution {
    return lhs.lessThanOrEqual(to: rhs)
}

@discardableResult
public func ≤ (lhs: View, rhs: [LayoutCoefficient]) -> [View.Solution] {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: - GreaterThanOrEqual

@discardableResult
public func ≥ (lhs: View, rhs: LayoutCoefficient) -> View.Solution {
    return lhs.greaterThanOrEqual(to: rhs)
}

@discardableResult
public func ≥ (lhs: View, rhs: [LayoutCoefficient]) -> [View.Solution] {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: View Array <=> LayoutCoefficient

// MARK: - Equal

// MARK: Collection == Expression
@discardableResult
public func .= (lhs: [View], rhs: LayoutCoefficient) -> [View.Solution] {
    return lhs.map { $0.equal(to: rhs) }
}

// MARK: Collection == Expression Array
@discardableResult
public func .= (lhs: [View], rhs: [LayoutCoefficient]) -> [[View.Solution]] {
    return lhs.map { $0.equal(to: rhs) }
}

// MARK: - LessThanOrEqual

// MARK: Collection <= Expression
@discardableResult
public func ≤ (lhs: [View], rhs: LayoutCoefficient) -> [View.Solution] {
    return lhs.map { $0.lessThanOrEqual(to: rhs) }
}

// MARK: Collection <= Expression Array
@discardableResult
public func ≤ (lhs: [View], rhs: [LayoutCoefficient]) -> [[View.Solution]] {
    return lhs.map { $0.lessThanOrEqual(to: rhs) }
}

// MARK: - GreaterThanOrEqual

// MARK: Collection >= Expression
@discardableResult
public func ≥ (lhs: [View], rhs: LayoutCoefficient) -> [View.Solution] {
    return lhs.map { $0.greaterThanOrEqual(to: rhs) }
}

// MARK: Collection >= Expression Array
@discardableResult
public func ≥ (lhs: [View], rhs: [LayoutCoefficient]) -> [[View.Solution]] {
    return lhs.map { $0.greaterThanOrEqual(to: rhs) }
}
// MARK: View <=> LayoutMultiplier

// MARK: - Equal

@discardableResult
public func .= (lhs: View, rhs: LayoutMultiplier) -> View.Solution {
    return lhs.equal(to: rhs)
}

@discardableResult
public func .= (lhs: View, rhs: [LayoutMultiplier]) -> [View.Solution] {
    return lhs.equal(to: rhs)
}

// MARK: - LessThanOrEqual

@discardableResult
public func ≤ (lhs: View, rhs: LayoutMultiplier) -> View.Solution {
    return lhs.lessThanOrEqual(to: rhs)
}

@discardableResult
public func ≤ (lhs: View, rhs: [LayoutMultiplier]) -> [View.Solution] {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: - GreaterThanOrEqual

@discardableResult
public func ≥ (lhs: View, rhs: LayoutMultiplier) -> View.Solution {
    return lhs.greaterThanOrEqual(to: rhs)
}

@discardableResult
public func ≥ (lhs: View, rhs: [LayoutMultiplier]) -> [View.Solution] {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: View Array <=> LayoutMultiplier

// MARK: - Equal

// MARK: Collection == Expression
@discardableResult
public func .= (lhs: [View], rhs: LayoutMultiplier) -> [View.Solution] {
    return lhs.map { $0.equal(to: rhs) }
}

// MARK: Collection == Expression Array
@discardableResult
public func .= (lhs: [View], rhs: [LayoutMultiplier]) -> [[View.Solution]] {
    return lhs.map { $0.equal(to: rhs) }
}

// MARK: - LessThanOrEqual

// MARK: Collection <= Expression
@discardableResult
public func ≤ (lhs: [View], rhs: LayoutMultiplier) -> [View.Solution] {
    return lhs.map { $0.lessThanOrEqual(to: rhs) }
}

// MARK: Collection <= Expression Array
@discardableResult
public func ≤ (lhs: [View], rhs: [LayoutMultiplier]) -> [[View.Solution]] {
    return lhs.map { $0.lessThanOrEqual(to: rhs) }
}

// MARK: - GreaterThanOrEqual

// MARK: Collection >= Expression
@discardableResult
public func ≥ (lhs: [View], rhs: LayoutMultiplier) -> [View.Solution] {
    return lhs.map { $0.greaterThanOrEqual(to: rhs) }
}

// MARK: Collection >= Expression Array
@discardableResult
public func ≥ (lhs: [View], rhs: [LayoutMultiplier]) -> [[View.Solution]] {
    return lhs.map { $0.greaterThanOrEqual(to: rhs) }
}
// MARK: View <=> RelativeLayoutConstant

// MARK: - Equal

@discardableResult
public func .= (lhs: View, rhs: RelativeLayoutConstant) -> View.Solution {
    return lhs.equal(to: rhs)
}

@discardableResult
public func .= (lhs: View, rhs: [RelativeLayoutConstant]) -> [View.Solution] {
    return lhs.equal(to: rhs)
}

// MARK: - LessThanOrEqual

@discardableResult
public func ≤ (lhs: View, rhs: RelativeLayoutConstant) -> View.Solution {
    return lhs.lessThanOrEqual(to: rhs)
}

@discardableResult
public func ≤ (lhs: View, rhs: [RelativeLayoutConstant]) -> [View.Solution] {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: - GreaterThanOrEqual

@discardableResult
public func ≥ (lhs: View, rhs: RelativeLayoutConstant) -> View.Solution {
    return lhs.greaterThanOrEqual(to: rhs)
}

@discardableResult
public func ≥ (lhs: View, rhs: [RelativeLayoutConstant]) -> [View.Solution] {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: View Array <=> RelativeLayoutConstant

// MARK: - Equal

// MARK: Collection == Expression
@discardableResult
public func .= (lhs: [View], rhs: RelativeLayoutConstant) -> [View.Solution] {
    return lhs.map { $0.equal(to: rhs) }
}

// MARK: Collection == Expression Array
@discardableResult
public func .= (lhs: [View], rhs: [RelativeLayoutConstant]) -> [[View.Solution]] {
    return lhs.map { $0.equal(to: rhs) }
}

// MARK: - LessThanOrEqual

// MARK: Collection <= Expression
@discardableResult
public func ≤ (lhs: [View], rhs: RelativeLayoutConstant) -> [View.Solution] {
    return lhs.map { $0.lessThanOrEqual(to: rhs) }
}

// MARK: Collection <= Expression Array
@discardableResult
public func ≤ (lhs: [View], rhs: [RelativeLayoutConstant]) -> [[View.Solution]] {
    return lhs.map { $0.lessThanOrEqual(to: rhs) }
}

// MARK: - GreaterThanOrEqual

// MARK: Collection >= Expression
@discardableResult
public func ≥ (lhs: [View], rhs: RelativeLayoutConstant) -> [View.Solution] {
    return lhs.map { $0.greaterThanOrEqual(to: rhs) }
}

// MARK: Collection >= Expression Array
@discardableResult
public func ≥ (lhs: [View], rhs: [RelativeLayoutConstant]) -> [[View.Solution]] {
    return lhs.map { $0.greaterThanOrEqual(to: rhs) }
}
