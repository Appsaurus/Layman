// Generated using Sourcery 0.15.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

//
//  UILayoutKit
//
//  Created by Brian Strobach on 1/22/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//
// MARK: View <=> View.LayoutSize

// MARK: - Equal

@discardableResult
public func .= (lhs: View, rhs: View.LayoutSize) -> View.Solution {
    return lhs.equal(to: rhs)
}

@discardableResult
public func .= (lhs: View, rhs: [View.LayoutSize]) -> [View.Solution] {
    return lhs.equal(to: rhs)
}

// MARK: - LessThanOrEqual

@discardableResult
public func ≤ (lhs: View, rhs: View.LayoutSize) -> View.Solution {
    return lhs.lessThanOrEqual(to: rhs)
}

@discardableResult
public func ≤ (lhs: View, rhs: [View.LayoutSize]) -> [View.Solution] {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: - GreaterThanOrEqual

@discardableResult
public func ≥ (lhs: View, rhs: View.LayoutSize) -> View.Solution {
    return lhs.greaterThanOrEqual(to: rhs)
}

@discardableResult
public func ≥ (lhs: View, rhs: [View.LayoutSize]) -> [View.Solution] {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: View Array <=> View.LayoutSize

// MARK: - Equal

// MARK: Collection == Expression
@discardableResult
public func .= (lhs: [View], rhs: View.LayoutSize) -> [View.Solution] {
    return lhs.map { $0.equal(to: rhs) }
}

// MARK: Collection == Expression Array
@discardableResult
public func .= (lhs: [View], rhs: [View.LayoutSize]) -> [[View.Solution]] {
    return lhs.map { $0.equal(to: rhs) }
}

// MARK: - LessThanOrEqual

// MARK: Collection <= Expression
@discardableResult
public func ≤ (lhs: [View], rhs: View.LayoutSize) -> [View.Solution] {
    return lhs.map { $0.lessThanOrEqual(to: rhs) }
}

// MARK: Collection <= Expression Array
@discardableResult
public func ≤ (lhs: [View], rhs: [View.LayoutSize]) -> [[View.Solution]] {
    return lhs.map { $0.lessThanOrEqual(to: rhs) }
}

// MARK: - GreaterThanOrEqual

// MARK: Collection >= Expression
@discardableResult
public func ≥ (lhs: [View], rhs: View.LayoutSize) -> [View.Solution] {
    return lhs.map { $0.greaterThanOrEqual(to: rhs) }
}

// MARK: Collection >= Expression Array
@discardableResult
public func ≥ (lhs: [View], rhs: [View.LayoutSize]) -> [[View.Solution]] {
    return lhs.map { $0.greaterThanOrEqual(to: rhs) }
}
// MARK: View <=> View.LayoutConfigurationPair

// MARK: - Equal

@discardableResult
public func .= (lhs: View, rhs: View.LayoutConfigurationPair) -> View.Solution {
    return lhs.equal(to: rhs)
}

@discardableResult
public func .= (lhs: View, rhs: [View.LayoutConfigurationPair]) -> [View.Solution] {
    return lhs.equal(to: rhs)
}

// MARK: - LessThanOrEqual

@discardableResult
public func ≤ (lhs: View, rhs: View.LayoutConfigurationPair) -> View.Solution {
    return lhs.lessThanOrEqual(to: rhs)
}

@discardableResult
public func ≤ (lhs: View, rhs: [View.LayoutConfigurationPair]) -> [View.Solution] {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: - GreaterThanOrEqual

@discardableResult
public func ≥ (lhs: View, rhs: View.LayoutConfigurationPair) -> View.Solution {
    return lhs.greaterThanOrEqual(to: rhs)
}

@discardableResult
public func ≥ (lhs: View, rhs: [View.LayoutConfigurationPair]) -> [View.Solution] {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: View Array <=> View.LayoutConfigurationPair

// MARK: - Equal

// MARK: Collection == Expression
@discardableResult
public func .= (lhs: [View], rhs: View.LayoutConfigurationPair) -> [View.Solution] {
    return lhs.map { $0.equal(to: rhs) }
}

// MARK: Collection == Expression Array
@discardableResult
public func .= (lhs: [View], rhs: [View.LayoutConfigurationPair]) -> [[View.Solution]] {
    return lhs.map { $0.equal(to: rhs) }
}

// MARK: - LessThanOrEqual

// MARK: Collection <= Expression
@discardableResult
public func ≤ (lhs: [View], rhs: View.LayoutConfigurationPair) -> [View.Solution] {
    return lhs.map { $0.lessThanOrEqual(to: rhs) }
}

// MARK: Collection <= Expression Array
@discardableResult
public func ≤ (lhs: [View], rhs: [View.LayoutConfigurationPair]) -> [[View.Solution]] {
    return lhs.map { $0.lessThanOrEqual(to: rhs) }
}

// MARK: - GreaterThanOrEqual

// MARK: Collection >= Expression
@discardableResult
public func ≥ (lhs: [View], rhs: View.LayoutConfigurationPair) -> [View.Solution] {
    return lhs.map { $0.greaterThanOrEqual(to: rhs) }
}

// MARK: Collection >= Expression Array
@discardableResult
public func ≥ (lhs: [View], rhs: [View.LayoutConfigurationPair]) -> [[View.Solution]] {
    return lhs.map { $0.greaterThanOrEqual(to: rhs) }
}
// MARK: View <=> View.LayoutConstant

// MARK: - Equal

@discardableResult
public func .= (lhs: View, rhs: View.LayoutConstant) -> View.Solution {
    return lhs.equal(to: rhs)
}

@discardableResult
public func .= (lhs: View, rhs: [View.LayoutConstant]) -> [View.Solution] {
    return lhs.equal(to: rhs)
}

// MARK: - LessThanOrEqual

@discardableResult
public func ≤ (lhs: View, rhs: View.LayoutConstant) -> View.Solution {
    return lhs.lessThanOrEqual(to: rhs)
}

@discardableResult
public func ≤ (lhs: View, rhs: [View.LayoutConstant]) -> [View.Solution] {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: - GreaterThanOrEqual

@discardableResult
public func ≥ (lhs: View, rhs: View.LayoutConstant) -> View.Solution {
    return lhs.greaterThanOrEqual(to: rhs)
}

@discardableResult
public func ≥ (lhs: View, rhs: [View.LayoutConstant]) -> [View.Solution] {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: View Array <=> View.LayoutConstant

// MARK: - Equal

// MARK: Collection == Expression
@discardableResult
public func .= (lhs: [View], rhs: View.LayoutConstant) -> [View.Solution] {
    return lhs.map { $0.equal(to: rhs) }
}

// MARK: Collection == Expression Array
@discardableResult
public func .= (lhs: [View], rhs: [View.LayoutConstant]) -> [[View.Solution]] {
    return lhs.map { $0.equal(to: rhs) }
}

// MARK: - LessThanOrEqual

// MARK: Collection <= Expression
@discardableResult
public func ≤ (lhs: [View], rhs: View.LayoutConstant) -> [View.Solution] {
    return lhs.map { $0.lessThanOrEqual(to: rhs) }
}

// MARK: Collection <= Expression Array
@discardableResult
public func ≤ (lhs: [View], rhs: [View.LayoutConstant]) -> [[View.Solution]] {
    return lhs.map { $0.lessThanOrEqual(to: rhs) }
}

// MARK: - GreaterThanOrEqual

// MARK: Collection >= Expression
@discardableResult
public func ≥ (lhs: [View], rhs: View.LayoutConstant) -> [View.Solution] {
    return lhs.map { $0.greaterThanOrEqual(to: rhs) }
}

// MARK: Collection >= Expression Array
@discardableResult
public func ≥ (lhs: [View], rhs: [View.LayoutConstant]) -> [[View.Solution]] {
    return lhs.map { $0.greaterThanOrEqual(to: rhs) }
}
