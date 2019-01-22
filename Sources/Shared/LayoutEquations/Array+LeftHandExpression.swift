//
//  Array+LeftHandExpression.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/21/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

extension Array where Element: LeftHandExpression {
    // MARK: Anchor Array == Anchor
    @discardableResult
    public func equal(to rhs: Element) -> [Element.LinearEquation.Solution] {
        return map { $0.equal(to: rhs) }
    }

    // MARK: Anchor Array == Anchor Array
    @discardableResult
    public func equal(to rhs: [Element]) -> [[Element.LinearEquation.Solution]] {
        return map { $0.equal(to: rhs) }
    }

    // MARK: Anchor Array == Expression
    @discardableResult
    public func equal(to rhs: Element.RightHandExpression) -> [Element.LinearEquation.Solution] {
        return map { $0.equal(to: rhs) }
    }

    // MARK: Anchor Array == Expression Array
    @discardableResult
    public func equal(to rhs: [Element.RightHandExpression]) -> [[Element.LinearEquation.Solution]] {
        return map { $0.equal(to: rhs) }
    }

    // MARK: - LessThanOrEqual

    // MARK: Anchor Array <= Anchor
    @discardableResult
    public func lessThanOrEqual(to rhs: Element) -> [Element.LinearEquation.Solution] {
        return map { $0.lessThanOrEqual(to: rhs) }
    }

    // MARK: Anchor Array <= Anchor Array
    @discardableResult
    public func lessThanOrEqual(to rhs: [Element]) -> [[Element.LinearEquation.Solution]] {
        return map { $0.lessThanOrEqual(to: rhs) }
    }

    // MARK: Anchor Array <= Expression
    @discardableResult
    public func lessThanOrEqual(to rhs: Element.RightHandExpression) -> [Element.LinearEquation.Solution] {
        return map { $0.lessThanOrEqual(to: rhs) }
    }

    // MARK: Anchor Array <= Expression Array
    @discardableResult
    public func lessThanOrEqual(to rhs: [Element.RightHandExpression]) -> [[Element.LinearEquation.Solution]] {
        return map { $0.lessThanOrEqual(to: rhs) }
    }

    // MARK: - GreaterThanOrEqual

    // MARK: Anchor Array >= Anchor
    @discardableResult
    public func greaterThanOrEqual(to rhs: Element) -> [Element.LinearEquation.Solution] {
        return map { $0.greaterThanOrEqual(to: rhs) }
    }

    // MARK: Anchor Array >= Anchor Array
    @discardableResult
    public func greaterThanOrEqual(to rhs: [Element]) -> [[Element.LinearEquation.Solution]] {
        return map { $0.greaterThanOrEqual(to: rhs) }
    }

    // MARK: Anchor Array >= Expression
    @discardableResult
    public func greaterThanOrEqual(to rhs: Element.RightHandExpression) -> [Element.LinearEquation.Solution] {
        return map { $0.greaterThanOrEqual(to: rhs) }
    }

    // MARK: Anchor Array >= Expression Array
    @discardableResult
    public func greaterThanOrEqual(to rhs: [Element.RightHandExpression]) -> [[Element.LinearEquation.Solution]] {
        return map { $0.greaterThanOrEqual(to: rhs) }
    }
}
