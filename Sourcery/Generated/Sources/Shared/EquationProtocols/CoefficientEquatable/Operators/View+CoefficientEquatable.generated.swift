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
// MARK: View <=> View.Coefficient

// MARK: - Equal

@discardableResult
public func .= (lhs: View, rhs: View.Coefficient) -> View.Solution {
    return lhs.equal(to: rhs)
}

@discardableResult
public func .= (lhs: View, rhs: [View.Coefficient]) -> [View.Solution] {
    return lhs.equal(to: rhs)
}

// MARK: - LessThanOrEqual

@discardableResult
public func ≤ (lhs: View, rhs: View.Coefficient) -> View.Solution {
    return lhs.lessThanOrEqual(to: rhs)
}

@discardableResult
public func ≤ (lhs: View, rhs: [View.Coefficient]) -> [View.Solution] {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: - GreaterThanOrEqual

@discardableResult
public func ≥ (lhs: View, rhs: View.Coefficient) -> View.Solution {
    return lhs.greaterThanOrEqual(to: rhs)
}

@discardableResult
public func ≥ (lhs: View, rhs: [View.Coefficient]) -> [View.Solution] {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: View Array <=> View.Coefficient

// MARK: - Equal

// MARK: Collection == Expression
@discardableResult
public func .= (lhs: [View], rhs: View.Coefficient) -> [View.Solution] {
    return lhs.map { $0.equal(to: rhs) }
}

// MARK: Collection == Expression Array
@discardableResult
public func .= (lhs: [View], rhs: [View.Coefficient]) -> [[View.Solution]] {
    return lhs.map { $0.equal(to: rhs) }
}

// MARK: - LessThanOrEqual

// MARK: Collection <= Expression
@discardableResult
public func ≤ (lhs: [View], rhs: View.Coefficient) -> [View.Solution] {
    return lhs.map { $0.lessThanOrEqual(to: rhs) }
}

// MARK: Collection <= Expression Array
@discardableResult
public func ≤ (lhs: [View], rhs: [View.Coefficient]) -> [[View.Solution]] {
    return lhs.map { $0.lessThanOrEqual(to: rhs) }
}

// MARK: - GreaterThanOrEqual

// MARK: Collection >= Expression
@discardableResult
public func ≥ (lhs: [View], rhs: View.Coefficient) -> [View.Solution] {
    return lhs.map { $0.greaterThanOrEqual(to: rhs) }
}

// MARK: Collection >= Expression Array
@discardableResult
public func ≥ (lhs: [View], rhs: [View.Coefficient]) -> [[View.Solution]] {
    return lhs.map { $0.greaterThanOrEqual(to: rhs) }
}
// MARK: View <=> View.Multiplier

// MARK: - Equal

@discardableResult
public func .= (lhs: View, rhs: View.Multiplier) -> View.Solution {
    return lhs.equal(to: rhs)
}

@discardableResult
public func .= (lhs: View, rhs: [View.Multiplier]) -> [View.Solution] {
    return lhs.equal(to: rhs)
}

// MARK: - LessThanOrEqual

@discardableResult
public func ≤ (lhs: View, rhs: View.Multiplier) -> View.Solution {
    return lhs.lessThanOrEqual(to: rhs)
}

@discardableResult
public func ≤ (lhs: View, rhs: [View.Multiplier]) -> [View.Solution] {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: - GreaterThanOrEqual

@discardableResult
public func ≥ (lhs: View, rhs: View.Multiplier) -> View.Solution {
    return lhs.greaterThanOrEqual(to: rhs)
}

@discardableResult
public func ≥ (lhs: View, rhs: [View.Multiplier]) -> [View.Solution] {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: View Array <=> View.Multiplier

// MARK: - Equal

// MARK: Collection == Expression
@discardableResult
public func .= (lhs: [View], rhs: View.Multiplier) -> [View.Solution] {
    return lhs.map { $0.equal(to: rhs) }
}

// MARK: Collection == Expression Array
@discardableResult
public func .= (lhs: [View], rhs: [View.Multiplier]) -> [[View.Solution]] {
    return lhs.map { $0.equal(to: rhs) }
}

// MARK: - LessThanOrEqual

// MARK: Collection <= Expression
@discardableResult
public func ≤ (lhs: [View], rhs: View.Multiplier) -> [View.Solution] {
    return lhs.map { $0.lessThanOrEqual(to: rhs) }
}

// MARK: Collection <= Expression Array
@discardableResult
public func ≤ (lhs: [View], rhs: [View.Multiplier]) -> [[View.Solution]] {
    return lhs.map { $0.lessThanOrEqual(to: rhs) }
}

// MARK: - GreaterThanOrEqual

// MARK: Collection >= Expression
@discardableResult
public func ≥ (lhs: [View], rhs: View.Multiplier) -> [View.Solution] {
    return lhs.map { $0.greaterThanOrEqual(to: rhs) }
}

// MARK: Collection >= Expression Array
@discardableResult
public func ≥ (lhs: [View], rhs: [View.Multiplier]) -> [[View.Solution]] {
    return lhs.map { $0.greaterThanOrEqual(to: rhs) }
}
// MARK: View <=> View.RelativeLayoutConstant

// MARK: - Equal

@discardableResult
public func .= (lhs: View, rhs: View.RelativeLayoutConstant) -> View.Solution {
    return lhs.equal(to: rhs)
}

@discardableResult
public func .= (lhs: View, rhs: [View.RelativeLayoutConstant]) -> [View.Solution] {
    return lhs.equal(to: rhs)
}

// MARK: - LessThanOrEqual

@discardableResult
public func ≤ (lhs: View, rhs: View.RelativeLayoutConstant) -> View.Solution {
    return lhs.lessThanOrEqual(to: rhs)
}

@discardableResult
public func ≤ (lhs: View, rhs: [View.RelativeLayoutConstant]) -> [View.Solution] {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: - GreaterThanOrEqual

@discardableResult
public func ≥ (lhs: View, rhs: View.RelativeLayoutConstant) -> View.Solution {
    return lhs.greaterThanOrEqual(to: rhs)
}

@discardableResult
public func ≥ (lhs: View, rhs: [View.RelativeLayoutConstant]) -> [View.Solution] {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: View Array <=> View.RelativeLayoutConstant

// MARK: - Equal

// MARK: Collection == Expression
@discardableResult
public func .= (lhs: [View], rhs: View.RelativeLayoutConstant) -> [View.Solution] {
    return lhs.map { $0.equal(to: rhs) }
}

// MARK: Collection == Expression Array
@discardableResult
public func .= (lhs: [View], rhs: [View.RelativeLayoutConstant]) -> [[View.Solution]] {
    return lhs.map { $0.equal(to: rhs) }
}

// MARK: - LessThanOrEqual

// MARK: Collection <= Expression
@discardableResult
public func ≤ (lhs: [View], rhs: View.RelativeLayoutConstant) -> [View.Solution] {
    return lhs.map { $0.lessThanOrEqual(to: rhs) }
}

// MARK: Collection <= Expression Array
@discardableResult
public func ≤ (lhs: [View], rhs: [View.RelativeLayoutConstant]) -> [[View.Solution]] {
    return lhs.map { $0.lessThanOrEqual(to: rhs) }
}

// MARK: - GreaterThanOrEqual

// MARK: Collection >= Expression
@discardableResult
public func ≥ (lhs: [View], rhs: View.RelativeLayoutConstant) -> [View.Solution] {
    return lhs.map { $0.greaterThanOrEqual(to: rhs) }
}

// MARK: Collection >= Expression Array
@discardableResult
public func ≥ (lhs: [View], rhs: [View.RelativeLayoutConstant]) -> [[View.Solution]] {
    return lhs.map { $0.greaterThanOrEqual(to: rhs) }
}
