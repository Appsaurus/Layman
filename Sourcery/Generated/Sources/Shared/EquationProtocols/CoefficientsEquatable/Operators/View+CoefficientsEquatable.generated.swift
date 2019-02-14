// Generated using Sourcery 0.15.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

//
//  Layman
//
//  Created by Brian Strobach on 1/22/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//
// MARK: View <=> View.LayoutCoefficientTuple

// MARK: - Equal

@discardableResult
public func .= (lhs: View, rhs: View.LayoutCoefficientTuple) -> View.Solution {
    return lhs.equal(to: rhs)
}

@discardableResult
public func .= (lhs: View, rhs: [View.LayoutCoefficientTuple]) -> [View.Solution] {
    return lhs.equal(to: rhs)
}

// MARK: - LessThanOrEqual

@discardableResult
public func ≤ (lhs: View, rhs: View.LayoutCoefficientTuple) -> View.Solution {
    return lhs.lessThanOrEqual(to: rhs)
}

@discardableResult
public func ≤ (lhs: View, rhs: [View.LayoutCoefficientTuple]) -> [View.Solution] {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: - GreaterThanOrEqual

@discardableResult
public func ≥ (lhs: View, rhs: View.LayoutCoefficientTuple) -> View.Solution {
    return lhs.greaterThanOrEqual(to: rhs)
}

@discardableResult
public func ≥ (lhs: View, rhs: [View.LayoutCoefficientTuple]) -> [View.Solution] {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: View Array <=> View.LayoutCoefficientTuple

// MARK: - Equal

// MARK: Collection == Expression
@discardableResult
public func .= (lhs: [View], rhs: View.LayoutCoefficientTuple) -> [View.Solution] {
    return lhs.map { $0.equal(to: rhs) }
}

// MARK: Collection == Expression Array
@discardableResult
public func .= (lhs: [View], rhs: [View.LayoutCoefficientTuple]) -> [[View.Solution]] {
    return lhs.map { $0.equal(to: rhs) }
}

// MARK: - LessThanOrEqual

// MARK: Collection <= Expression
@discardableResult
public func ≤ (lhs: [View], rhs: View.LayoutCoefficientTuple) -> [View.Solution] {
    return lhs.map { $0.lessThanOrEqual(to: rhs) }
}

// MARK: Collection <= Expression Array
@discardableResult
public func ≤ (lhs: [View], rhs: [View.LayoutCoefficientTuple]) -> [[View.Solution]] {
    return lhs.map { $0.lessThanOrEqual(to: rhs) }
}

// MARK: - GreaterThanOrEqual

// MARK: Collection >= Expression
@discardableResult
public func ≥ (lhs: [View], rhs: View.LayoutCoefficientTuple) -> [View.Solution] {
    return lhs.map { $0.greaterThanOrEqual(to: rhs) }
}

// MARK: Collection >= Expression Array
@discardableResult
public func ≥ (lhs: [View], rhs: [View.LayoutCoefficientTuple]) -> [[View.Solution]] {
    return lhs.map { $0.greaterThanOrEqual(to: rhs) }
}
// MARK: View <=> View.LayoutConstantTuple

// MARK: - Equal

@discardableResult
public func .= (lhs: View, rhs: View.LayoutConstantTuple) -> View.Solution {
    return lhs.equal(to: rhs)
}

@discardableResult
public func .= (lhs: View, rhs: [View.LayoutConstantTuple]) -> [View.Solution] {
    return lhs.equal(to: rhs)
}

// MARK: - LessThanOrEqual

@discardableResult
public func ≤ (lhs: View, rhs: View.LayoutConstantTuple) -> View.Solution {
    return lhs.lessThanOrEqual(to: rhs)
}

@discardableResult
public func ≤ (lhs: View, rhs: [View.LayoutConstantTuple]) -> [View.Solution] {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: - GreaterThanOrEqual

@discardableResult
public func ≥ (lhs: View, rhs: View.LayoutConstantTuple) -> View.Solution {
    return lhs.greaterThanOrEqual(to: rhs)
}

@discardableResult
public func ≥ (lhs: View, rhs: [View.LayoutConstantTuple]) -> [View.Solution] {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: View Array <=> View.LayoutConstantTuple

// MARK: - Equal

// MARK: Collection == Expression
@discardableResult
public func .= (lhs: [View], rhs: View.LayoutConstantTuple) -> [View.Solution] {
    return lhs.map { $0.equal(to: rhs) }
}

// MARK: Collection == Expression Array
@discardableResult
public func .= (lhs: [View], rhs: [View.LayoutConstantTuple]) -> [[View.Solution]] {
    return lhs.map { $0.equal(to: rhs) }
}

// MARK: - LessThanOrEqual

// MARK: Collection <= Expression
@discardableResult
public func ≤ (lhs: [View], rhs: View.LayoutConstantTuple) -> [View.Solution] {
    return lhs.map { $0.lessThanOrEqual(to: rhs) }
}

// MARK: Collection <= Expression Array
@discardableResult
public func ≤ (lhs: [View], rhs: [View.LayoutConstantTuple]) -> [[View.Solution]] {
    return lhs.map { $0.lessThanOrEqual(to: rhs) }
}

// MARK: - GreaterThanOrEqual

// MARK: Collection >= Expression
@discardableResult
public func ≥ (lhs: [View], rhs: View.LayoutConstantTuple) -> [View.Solution] {
    return lhs.map { $0.greaterThanOrEqual(to: rhs) }
}

// MARK: Collection >= Expression Array
@discardableResult
public func ≥ (lhs: [View], rhs: [View.LayoutConstantTuple]) -> [[View.Solution]] {
    return lhs.map { $0.greaterThanOrEqual(to: rhs) }
}
// MARK: View <=> View.LayoutCoefficient

// MARK: - Equal

@discardableResult
public func .= (lhs: View, rhs: View.LayoutCoefficient) -> View.Solution {
    return lhs.equal(to: rhs)
}

@discardableResult
public func .= (lhs: View, rhs: [View.LayoutCoefficient]) -> [View.Solution] {
    return lhs.equal(to: rhs)
}

// MARK: - LessThanOrEqual

@discardableResult
public func ≤ (lhs: View, rhs: View.LayoutCoefficient) -> View.Solution {
    return lhs.lessThanOrEqual(to: rhs)
}

@discardableResult
public func ≤ (lhs: View, rhs: [View.LayoutCoefficient]) -> [View.Solution] {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: - GreaterThanOrEqual

@discardableResult
public func ≥ (lhs: View, rhs: View.LayoutCoefficient) -> View.Solution {
    return lhs.greaterThanOrEqual(to: rhs)
}

@discardableResult
public func ≥ (lhs: View, rhs: [View.LayoutCoefficient]) -> [View.Solution] {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: View Array <=> View.LayoutCoefficient

// MARK: - Equal

// MARK: Collection == Expression
@discardableResult
public func .= (lhs: [View], rhs: View.LayoutCoefficient) -> [View.Solution] {
    return lhs.map { $0.equal(to: rhs) }
}

// MARK: Collection == Expression Array
@discardableResult
public func .= (lhs: [View], rhs: [View.LayoutCoefficient]) -> [[View.Solution]] {
    return lhs.map { $0.equal(to: rhs) }
}

// MARK: - LessThanOrEqual

// MARK: Collection <= Expression
@discardableResult
public func ≤ (lhs: [View], rhs: View.LayoutCoefficient) -> [View.Solution] {
    return lhs.map { $0.lessThanOrEqual(to: rhs) }
}

// MARK: Collection <= Expression Array
@discardableResult
public func ≤ (lhs: [View], rhs: [View.LayoutCoefficient]) -> [[View.Solution]] {
    return lhs.map { $0.lessThanOrEqual(to: rhs) }
}

// MARK: - GreaterThanOrEqual

// MARK: Collection >= Expression
@discardableResult
public func ≥ (lhs: [View], rhs: View.LayoutCoefficient) -> [View.Solution] {
    return lhs.map { $0.greaterThanOrEqual(to: rhs) }
}

// MARK: Collection >= Expression Array
@discardableResult
public func ≥ (lhs: [View], rhs: [View.LayoutCoefficient]) -> [[View.Solution]] {
    return lhs.map { $0.greaterThanOrEqual(to: rhs) }
}
// MARK: View <=> View.RelativeLayoutConstantTuple

// MARK: - Equal

@discardableResult
public func .= (lhs: View, rhs: View.RelativeLayoutConstantTuple) -> View.Solution {
    return lhs.equal(to: rhs)
}

@discardableResult
public func .= (lhs: View, rhs: [View.RelativeLayoutConstantTuple]) -> [View.Solution] {
    return lhs.equal(to: rhs)
}

// MARK: - LessThanOrEqual

@discardableResult
public func ≤ (lhs: View, rhs: View.RelativeLayoutConstantTuple) -> View.Solution {
    return lhs.lessThanOrEqual(to: rhs)
}

@discardableResult
public func ≤ (lhs: View, rhs: [View.RelativeLayoutConstantTuple]) -> [View.Solution] {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: - GreaterThanOrEqual

@discardableResult
public func ≥ (lhs: View, rhs: View.RelativeLayoutConstantTuple) -> View.Solution {
    return lhs.greaterThanOrEqual(to: rhs)
}

@discardableResult
public func ≥ (lhs: View, rhs: [View.RelativeLayoutConstantTuple]) -> [View.Solution] {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: View Array <=> View.RelativeLayoutConstantTuple

// MARK: - Equal

// MARK: Collection == Expression
@discardableResult
public func .= (lhs: [View], rhs: View.RelativeLayoutConstantTuple) -> [View.Solution] {
    return lhs.map { $0.equal(to: rhs) }
}

// MARK: Collection == Expression Array
@discardableResult
public func .= (lhs: [View], rhs: [View.RelativeLayoutConstantTuple]) -> [[View.Solution]] {
    return lhs.map { $0.equal(to: rhs) }
}

// MARK: - LessThanOrEqual

// MARK: Collection <= Expression
@discardableResult
public func ≤ (lhs: [View], rhs: View.RelativeLayoutConstantTuple) -> [View.Solution] {
    return lhs.map { $0.lessThanOrEqual(to: rhs) }
}

// MARK: Collection <= Expression Array
@discardableResult
public func ≤ (lhs: [View], rhs: [View.RelativeLayoutConstantTuple]) -> [[View.Solution]] {
    return lhs.map { $0.lessThanOrEqual(to: rhs) }
}

// MARK: - GreaterThanOrEqual

// MARK: Collection >= Expression
@discardableResult
public func ≥ (lhs: [View], rhs: View.RelativeLayoutConstantTuple) -> [View.Solution] {
    return lhs.map { $0.greaterThanOrEqual(to: rhs) }
}

// MARK: Collection >= Expression Array
@discardableResult
public func ≥ (lhs: [View], rhs: [View.RelativeLayoutConstantTuple]) -> [[View.Solution]] {
    return lhs.map { $0.greaterThanOrEqual(to: rhs) }
}
