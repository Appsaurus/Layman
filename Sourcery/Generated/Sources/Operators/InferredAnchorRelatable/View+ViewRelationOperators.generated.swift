// Generated using Sourcery 0.15.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

//
//  View+ViewRelationOperators.swift
//  Layman
//
//  Created by Brian Strobach on 1/4/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

// MARK: View attribute inferred from Anchor

// MARK: View == Anchor
@discardableResult
public func .= (lhs: View, rhs: View) -> View.Solution {
    return lhs.equal(to: rhs)
}

// MARK: View <= Anchor
@discardableResult
public func ≤ (lhs: View, rhs: View) -> View.Solution {
    return lhs.lessThanOrEqual(to: rhs)
}

// MARK: View >= Anchor
@discardableResult
public func ≥ (lhs: View, rhs: View) -> View.Solution {
    return lhs.greaterThanOrEqual(to: rhs)
}

// MARK: View >=< Anchor
@discardableResult
public func ≥≤ (lhs: View, rhs: View) -> View.Solution {
    return lhs.insetOrEqual(to: rhs)
}

// MARK: View <=> Anchor
@discardableResult
public func ≤≥ (lhs: View, rhs: View) -> View.Solution {
    return lhs.outsetOrEqual(to: rhs)
}

// MARK: View attribute inferred from Anchor collection

// MARK: View == [Anchor]
@discardableResult
public func .= (lhs: View, rhs: [View]) -> [View.Solution] {
    return rhs.map({lhs .= $0})
}

// MARK: View <= [Anchor]
@discardableResult
public func ≤ (lhs: View, rhs: [View]) -> [View.Solution] {
    return rhs.map({lhs ≤ $0})
}

// MARK: View >= [Anchor]
@discardableResult
public func ≥ (lhs: View, rhs: [View]) -> [View.Solution] {
    return rhs.map({lhs ≥ $0})
}

// MARK: View >=< [Anchor]
@discardableResult
public func ≥≤ (lhs: View, rhs: [View]) -> [View.Solution] {
    return rhs.map({lhs ≥≤ $0})
}

// MARK: View <=> [Anchor]
@discardableResult
public func ≤≥ (lhs: View, rhs: [View]) -> [View.Solution] {
    return rhs.map({lhs ≤≥ $0})
}

// MARK: View array attributes inferred from Anchor

// MARK: [View] == Anchor
@discardableResult
public func .= (lhs: [View], rhs: View) -> [View.Solution] {
    return lhs.map { $0 .= rhs }
}

// MARK: [View] <= Anchor
@discardableResult
public func ≤ (lhs: [View], rhs: View) -> [View.Solution] {
    return lhs.map { $0 ≤ rhs }
}

// MARK: [View] >= Anchor
@discardableResult
public func ≥ (lhs: [View], rhs: View) -> [View.Solution] {
    return lhs.map { $0 ≥ rhs }
}

// MARK: [View] >=< Anchor
@discardableResult
public func ≥≤ (lhs: [View], rhs: View) -> [View.Solution] {
    return lhs.map { $0 ≥≤ rhs }
}

// MARK: [View] <=> Anchor
@discardableResult
public func ≤≥ (lhs: [View], rhs: View) -> [View.Solution] {
    return lhs.map { $0 ≤≥ rhs }
}

// MARK: View array attributes inferred from Anchor collection

// MARK: [View] == [Anchor]
@discardableResult
public func .= (lhs: [View], rhs: [View]) -> [[View.Solution]] {
    return lhs.map { $0 .= rhs }
}

// MARK: [View] <= [Anchor]
@discardableResult
public func ≤ (lhs: [View], rhs: [View]) -> [[View.Solution]] {
    return lhs.map { $0 ≤ rhs }
}

// MARK: [View] >= [Anchor]
@discardableResult
public func ≥ (lhs: [View], rhs: [View]) -> [[View.Solution]] {
    return lhs.map { $0 ≥ rhs }
}

// MARK: [View] >=< [Anchor]
@discardableResult
public func ≥≤ (lhs: [View], rhs: [View]) -> [[View.Solution]] {
    return lhs.map { $0 ≥≤ rhs }
}

// MARK: [View] <=> [Anchor]
@discardableResult
public func ≤≥ (lhs: [View], rhs: [View]) -> [[View.Solution]] {
    return lhs.map { $0 ≤≥ rhs }
}
