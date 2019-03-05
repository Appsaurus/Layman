// Generated using Sourcery 0.15.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

//
//  View+YAxisAnchorPairRelatable.swift
//  Layman
//
//  Created by Brian Strobach on 1/4/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

extension View {
    public func relation(_ relation: LayoutRelation, _ rhs: YAxisAnchorPair) -> YAxisAnchorPairEquation {
        return YAxisAnchorPairEquation(self, relation, rhs)
    }

    @discardableResult
    public func equal(to rhs: YAxisAnchorPair) -> YAxisAnchorPairEquation.Solution {
        return relation(.equal, rhs).solution
    }
    @discardableResult
    public func equal(to rhs: [YAxisAnchorPair]) -> [YAxisAnchorPairEquation.Solution] {
        return rhs.map { equal(to: $0) }
    }
    @discardableResult
    public func lessThanOrEqual(to rhs: YAxisAnchorPair) -> YAxisAnchorPairEquation.Solution {
        return relation(.lessThanOrEqual, rhs).solution
    }
    @discardableResult
    public func lessThanOrEqual(to rhs: [YAxisAnchorPair]) -> [YAxisAnchorPairEquation.Solution] {
        return rhs.map { lessThanOrEqual(to: $0) }
    }

    @discardableResult
    public func greaterThanOrEqual(to rhs: YAxisAnchorPair) -> YAxisAnchorPairEquation.Solution {
        return relation(.greaterThanOrEqual, rhs).solution
    }
    @discardableResult
    public func greaterThanOrEqual(to rhs: [YAxisAnchorPair]) -> [YAxisAnchorPairEquation.Solution] {
        return rhs.map { greaterThanOrEqual(to: $0) }
    }
    @discardableResult
    public func insetOrEqual(to rhs: YAxisAnchorPair) -> YAxisAnchorPairEquation.Solution {
        return relation(.insetOrEqual, rhs).solution
    }
    @discardableResult
    public func insetOrEqual(to rhs: [YAxisAnchorPair]) -> [YAxisAnchorPairEquation.Solution] {
        return rhs.map { insetOrEqual(to: $0) }
    }
    @discardableResult
    public func outsetOrEqual(to rhs: YAxisAnchorPair) -> YAxisAnchorPairEquation.Solution {
        return relation(.outsetOrEqual, rhs).solution
    }
    @discardableResult
    public func outsetOrEqual(to rhs: [YAxisAnchorPair]) -> [YAxisAnchorPairEquation.Solution] {
        return rhs.map { outsetOrEqual(to: $0) }
    }
}

extension Collection where Element: View {
    @discardableResult
    public func equal(to rhs: YAxisAnchorPair) -> [YAxisAnchorPairEquation.Solution] {
        return map { $0.equal(to: rhs) }
    }

    @discardableResult
    public func equal(to rhs: [YAxisAnchorPair]) -> [[YAxisAnchorPairEquation.Solution]] {
        return map { $0.equal(to: rhs) }
    }

    // MARK: - LessThanOrEqual
    @discardableResult
    public func lessThanOrEqual(to rhs: YAxisAnchorPair) -> [YAxisAnchorPairEquation.Solution] {
        return map { $0.lessThanOrEqual(to: rhs) }
    }

    @discardableResult
    public func lessThanOrEqual(to rhs: [YAxisAnchorPair]) -> [[YAxisAnchorPairEquation.Solution]] {
        return map { $0.lessThanOrEqual(to: rhs) }
    }

    // MARK: - GreaterThanOrEqual

    @discardableResult
    public func greaterThanOrEqual(to rhs: YAxisAnchorPair) -> [YAxisAnchorPairEquation.Solution] {
        return map { $0.greaterThanOrEqual(to: rhs) }
    }

    @discardableResult
    public func greaterThanOrEqual(to rhs: [YAxisAnchorPair]) -> [[YAxisAnchorPairEquation.Solution]] {
        return map { $0.greaterThanOrEqual(to: rhs) }
    }

    // MARK: - InsetFrom
    @discardableResult
    public func insetOrEqual(to rhs: YAxisAnchorPair) -> [YAxisAnchorPairEquation.Solution] {
        return map { $0.insetOrEqual(to: rhs) }
    }

    @discardableResult
    public func insetOrEqual(to rhs: [YAxisAnchorPair]) -> [[YAxisAnchorPairEquation.Solution]] {
        return map { $0.insetOrEqual(to: rhs) }
    }

    // MARK: - OutsetFrom

    @discardableResult
    public func outsetOrEqual(to rhs: YAxisAnchorPair) -> [YAxisAnchorPairEquation.Solution] {
        return map { $0.outsetOrEqual(to: rhs) }
    }

    @discardableResult
    public func outsetOrEqual(to rhs: [YAxisAnchorPair]) -> [[YAxisAnchorPairEquation.Solution]] {
        return map { $0.outsetOrEqual(to: rhs) }
    }
}

extension View {
    public func relation(_ relation: LayoutRelation, _ rhs: YAxisAnchorPairEquation.Expression) -> YAxisAnchorPairEquation {
        return YAxisAnchorPairEquation(self, relation, rhs)
    }

    @discardableResult
    public func equal(to rhs: YAxisAnchorPairEquation.Expression) -> YAxisAnchorPairEquation.Solution {
        return relation(.equal, rhs).solution
    }
    @discardableResult
    public func equal(to rhs: [YAxisAnchorPairEquation.Expression]) -> [YAxisAnchorPairEquation.Solution] {
        return rhs.map { equal(to: $0) }
    }
    @discardableResult
    public func lessThanOrEqual(to rhs: YAxisAnchorPairEquation.Expression) -> YAxisAnchorPairEquation.Solution {
        return relation(.lessThanOrEqual, rhs).solution
    }
    @discardableResult
    public func lessThanOrEqual(to rhs: [YAxisAnchorPairEquation.Expression]) -> [YAxisAnchorPairEquation.Solution] {
        return rhs.map { lessThanOrEqual(to: $0) }
    }

    @discardableResult
    public func greaterThanOrEqual(to rhs: YAxisAnchorPairEquation.Expression) -> YAxisAnchorPairEquation.Solution {
        return relation(.greaterThanOrEqual, rhs).solution
    }
    @discardableResult
    public func greaterThanOrEqual(to rhs: [YAxisAnchorPairEquation.Expression]) -> [YAxisAnchorPairEquation.Solution] {
        return rhs.map { greaterThanOrEqual(to: $0) }
    }
    @discardableResult
    public func insetOrEqual(to rhs: YAxisAnchorPairEquation.Expression) -> YAxisAnchorPairEquation.Solution {
        return relation(.insetOrEqual, rhs).solution
    }
    @discardableResult
    public func insetOrEqual(to rhs: [YAxisAnchorPairEquation.Expression]) -> [YAxisAnchorPairEquation.Solution] {
        return rhs.map { insetOrEqual(to: $0) }
    }
    @discardableResult
    public func outsetOrEqual(to rhs: YAxisAnchorPairEquation.Expression) -> YAxisAnchorPairEquation.Solution {
        return relation(.outsetOrEqual, rhs).solution
    }
    @discardableResult
    public func outsetOrEqual(to rhs: [YAxisAnchorPairEquation.Expression]) -> [YAxisAnchorPairEquation.Solution] {
        return rhs.map { outsetOrEqual(to: $0) }
    }
}

extension Collection where Element: View {
    @discardableResult
    public func equal(to rhs: YAxisAnchorPairEquation.Expression) -> [YAxisAnchorPairEquation.Solution] {
        return map { $0.equal(to: rhs) }
    }

    @discardableResult
    public func equal(to rhs: [YAxisAnchorPairEquation.Expression]) -> [[YAxisAnchorPairEquation.Solution]] {
        return map { $0.equal(to: rhs) }
    }

    // MARK: - LessThanOrEqual
    @discardableResult
    public func lessThanOrEqual(to rhs: YAxisAnchorPairEquation.Expression) -> [YAxisAnchorPairEquation.Solution] {
        return map { $0.lessThanOrEqual(to: rhs) }
    }

    @discardableResult
    public func lessThanOrEqual(to rhs: [YAxisAnchorPairEquation.Expression]) -> [[YAxisAnchorPairEquation.Solution]] {
        return map { $0.lessThanOrEqual(to: rhs) }
    }

    // MARK: - GreaterThanOrEqual

    @discardableResult
    public func greaterThanOrEqual(to rhs: YAxisAnchorPairEquation.Expression) -> [YAxisAnchorPairEquation.Solution] {
        return map { $0.greaterThanOrEqual(to: rhs) }
    }

    @discardableResult
    public func greaterThanOrEqual(to rhs: [YAxisAnchorPairEquation.Expression]) -> [[YAxisAnchorPairEquation.Solution]] {
        return map { $0.greaterThanOrEqual(to: rhs) }
    }

    // MARK: - InsetFrom
    @discardableResult
    public func insetOrEqual(to rhs: YAxisAnchorPairEquation.Expression) -> [YAxisAnchorPairEquation.Solution] {
        return map { $0.insetOrEqual(to: rhs) }
    }

    @discardableResult
    public func insetOrEqual(to rhs: [YAxisAnchorPairEquation.Expression]) -> [[YAxisAnchorPairEquation.Solution]] {
        return map { $0.insetOrEqual(to: rhs) }
    }

    // MARK: - OutsetFrom

    @discardableResult
    public func outsetOrEqual(to rhs: YAxisAnchorPairEquation.Expression) -> [YAxisAnchorPairEquation.Solution] {
        return map { $0.outsetOrEqual(to: rhs) }
    }

    @discardableResult
    public func outsetOrEqual(to rhs: [YAxisAnchorPairEquation.Expression]) -> [[YAxisAnchorPairEquation.Solution]] {
        return map { $0.outsetOrEqual(to: rhs) }
    }
}
