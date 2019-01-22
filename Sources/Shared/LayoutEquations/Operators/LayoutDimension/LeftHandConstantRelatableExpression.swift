//
//  LeftHandConstantRelatableExpression.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/22/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

public protocol LeftHandConstantRelatableExpression {
    func relation(_ relation: Constraint.Relation, _ rhs: LayoutConstant) -> LayoutDimensionRelationship
    func relation(_ relation: Constraint.Relation, _ rhs: LayoutConfiguration) -> LayoutDimensionRelationship
}

// MARK: Anchor <=> Constant
extension LeftHandConstantRelatableExpression {

    // MARK: - Equal

    @discardableResult
    public func equal(to rhs: LayoutConstant) -> LayoutDimensionRelationship.Solution {
        return relation(.equal, rhs).solution
    }

    @discardableResult
    public func equal(to rhs: [LayoutConstant]) -> [LayoutDimensionRelationship.Solution] {
        return rhs.map { relation(.equal, $0).solution }
    }

    // MARK: - LessThanOrEqual

    @discardableResult
    public func lessThanOrEqual(to rhs: LayoutConstant) -> LayoutDimensionRelationship.Solution {
        return relation(.lessThanOrEqual, rhs).solution
    }

    @discardableResult
    public func lessThanOrEqual(to rhs: [LayoutConstant]) -> [LayoutDimensionRelationship.Solution] {
        return rhs.map { relation(.lessThanOrEqual, $0).solution }
    }

    // MARK: - GreaterThanOrEqual

    @discardableResult
    public func greaterThanOrEqual(to rhs: LayoutConstant) -> LayoutDimensionRelationship.Solution {
        return relation(.greaterThanOrEqual, rhs).solution
    }

    @discardableResult
    public func greaterThanOrEqual(to rhs: [LayoutConstant]) -> [LayoutDimensionRelationship.Solution] {
        return rhs.map { relation(.greaterThanOrEqual, $0).solution }
    }
}

extension Array where Element: LeftHandConstantRelatableExpression {

    // MARK: - Equal

    // MARK: Collection == Anchor
    @discardableResult
    public func equal(to rhs: LayoutConstant) -> [LayoutDimensionRelationship.Solution] {
        return map { $0.equal(to: rhs) }
    }

    // MARK: Collection == Collection
    @discardableResult
    public func equal(to rhs: [LayoutConstant]) -> [[LayoutDimensionRelationship.Solution]] {
        return map { $0.equal(to: rhs) }
    }

    // MARK: - LessThanOrEqual

    // MARK: Collection <= Anchor
    @discardableResult
    public func lessThanOrEqual(to rhs: LayoutConstant) -> [LayoutDimensionRelationship.Solution] {
        return map { $0.lessThanOrEqual(to: rhs) }
    }

    // MARK: Collection <= Collection
    @discardableResult
    public func lessThanOrEqual(to rhs: [LayoutConstant]) -> [[LayoutDimensionRelationship.Solution]] {
        return map { $0.lessThanOrEqual(to: rhs) }
    }

    // MARK: - GreaterThanOrEqual

    // MARK: Collection >= Anchor
    @discardableResult
    public func greaterThanOrEqual(to rhs: LayoutConstant) -> [LayoutDimensionRelationship.Solution] {
        return map { $0.greaterThanOrEqual(to: rhs) }
    }

    // MARK: Collection >= Collection
    @discardableResult
    public func greaterThanOrEqual(to rhs: [LayoutConstant]) -> [[LayoutDimensionRelationship.Solution]] {
        return map { $0.greaterThanOrEqual(to: rhs) }
    }
}

// MARK: Collection <=> Configuration
extension LeftHandConstantRelatableExpression {

    // MARK: - Equal

    @discardableResult
    public func equal(to rhs: LayoutConfiguration) -> LayoutDimensionRelationship.Solution {
        return relation(.equal, rhs).solution
    }

    @discardableResult
    public func equal(to rhs: [LayoutConfiguration]) -> [LayoutDimensionRelationship.Solution] {
        return rhs.map { relation(.equal, $0).solution }
    }

    // MARK: - LessThanOrEqual

    @discardableResult
    public func lessThanOrEqual(to rhs: LayoutConfiguration) -> LayoutDimensionRelationship.Solution {
        return relation(.lessThanOrEqual, rhs).solution
    }

    @discardableResult
    public func lessThanOrEqual(to rhs: [LayoutConfiguration]) -> [LayoutDimensionRelationship.Solution] {
        return rhs.map { relation(.lessThanOrEqual, $0).solution }
    }

    // MARK: - GreaterThanOrEqual

    @discardableResult
    public func greaterThanOrEqual(to rhs: LayoutConfiguration) -> LayoutDimensionRelationship.Solution {
        return relation(.greaterThanOrEqual, rhs).solution
    }

    @discardableResult
    public func greaterThanOrEqual(to rhs: [LayoutConfiguration]) -> [LayoutDimensionRelationship.Solution] {
        return rhs.map { relation(.greaterThanOrEqual, $0).solution }
    }
}

extension Array where Element: LeftHandConstantRelatableExpression {

    // MARK: - Equal

    // MARK: Collection == Configuration
    @discardableResult
    public func equal(to rhs: LayoutConfiguration) -> [LayoutDimensionRelationship.Solution] {
        return map { $0.equal(to: rhs) }
    }

    // MARK: Collection == Configuration Array
    @discardableResult
    public func equal(to rhs: [LayoutConfiguration]) -> [[LayoutDimensionRelationship.Solution]] {
        return map { $0.equal(to: rhs) }
    }

    // MARK: - LessThanOrEqual

    // MARK: Collection <= Configuration
    @discardableResult
    public func lessThanOrEqual(to rhs: LayoutConfiguration) -> [LayoutDimensionRelationship.Solution] {
        return map { $0.lessThanOrEqual(to: rhs) }
    }

    // MARK: Collection <= Configuration Array
    @discardableResult
    public func lessThanOrEqual(to rhs: [LayoutConfiguration]) -> [[LayoutDimensionRelationship.Solution]] {
        return map { $0.lessThanOrEqual(to: rhs) }
    }

    // MARK: - GreaterThanOrEqual

    // MARK: Collection >= Configuration
    @discardableResult
    public func greaterThanOrEqual(to rhs: LayoutConfiguration) -> [LayoutDimensionRelationship.Solution] {
        return map { $0.greaterThanOrEqual(to: rhs) }
    }

    // MARK: Collection >= Configuration Array
    @discardableResult
    public func greaterThanOrEqual(to rhs: [LayoutConfiguration]) -> [[LayoutDimensionRelationship.Solution]] {
        return map { $0.greaterThanOrEqual(to: rhs) }
    }
}
