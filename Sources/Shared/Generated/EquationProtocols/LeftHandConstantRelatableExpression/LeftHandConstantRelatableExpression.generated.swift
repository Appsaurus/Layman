// Generated using Sourcery 0.15.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

//
//  UILayoutKit
//
//  Created by Brian Strobach on 1/22/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

public protocol LeftHandConstantRelatableExpression {
    func relation(_ relation: Constraint.Relation, _ rhs: LayoutConstant) -> LayoutDimensionRelationship
    func relation(_ relation: Constraint.Relation, _ rhs: LayoutConfiguration) -> LayoutDimensionRelationship
}
// MARK: Anchor <=> LayoutConstant
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

// MARK: Collection <=> LayoutConstant

extension Collection where Element: LeftHandConstantRelatableExpression {

    // MARK: - Equal

    // MARK: Collection == Expression
    @discardableResult
    public func equal(to rhs: LayoutConstant) -> [LayoutDimensionRelationship.Solution] {
        return map { $0.equal(to: rhs) }
    }

    // MARK: Collection == Expression Array
    @discardableResult
    public func equal(to rhs: [LayoutConstant]) -> [[LayoutDimensionRelationship.Solution]] {
        return map { $0.equal(to: rhs) }
    }

    // MARK: - LessThanOrEqual

    // MARK: Collection <= Expression
    @discardableResult
    public func lessThanOrEqual(to rhs: LayoutConstant) -> [LayoutDimensionRelationship.Solution] {
        return map { $0.lessThanOrEqual(to: rhs) }
    }

    // MARK: Collection <= Expression Array
    @discardableResult
    public func lessThanOrEqual(to rhs: [LayoutConstant]) -> [[LayoutDimensionRelationship.Solution]] {
        return map { $0.lessThanOrEqual(to: rhs) }
    }

    // MARK: - GreaterThanOrEqual

    // MARK: Collection >= Expression
    @discardableResult
    public func greaterThanOrEqual(to rhs: LayoutConstant) -> [LayoutDimensionRelationship.Solution] {
        return map { $0.greaterThanOrEqual(to: rhs) }
    }

    // MARK: Collection >= Expression Array
    @discardableResult
    public func greaterThanOrEqual(to rhs: [LayoutConstant]) -> [[LayoutDimensionRelationship.Solution]] {
        return map { $0.greaterThanOrEqual(to: rhs) }
    }
}
// MARK: Anchor <=> LayoutConfiguration
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

// MARK: Collection <=> LayoutConfiguration

extension Collection where Element: LeftHandConstantRelatableExpression {

    // MARK: - Equal

    // MARK: Collection == Expression
    @discardableResult
    public func equal(to rhs: LayoutConfiguration) -> [LayoutDimensionRelationship.Solution] {
        return map { $0.equal(to: rhs) }
    }

    // MARK: Collection == Expression Array
    @discardableResult
    public func equal(to rhs: [LayoutConfiguration]) -> [[LayoutDimensionRelationship.Solution]] {
        return map { $0.equal(to: rhs) }
    }

    // MARK: - LessThanOrEqual

    // MARK: Collection <= Expression
    @discardableResult
    public func lessThanOrEqual(to rhs: LayoutConfiguration) -> [LayoutDimensionRelationship.Solution] {
        return map { $0.lessThanOrEqual(to: rhs) }
    }

    // MARK: Collection <= Expression Array
    @discardableResult
    public func lessThanOrEqual(to rhs: [LayoutConfiguration]) -> [[LayoutDimensionRelationship.Solution]] {
        return map { $0.lessThanOrEqual(to: rhs) }
    }

    // MARK: - GreaterThanOrEqual

    // MARK: Collection >= Expression
    @discardableResult
    public func greaterThanOrEqual(to rhs: LayoutConfiguration) -> [LayoutDimensionRelationship.Solution] {
        return map { $0.greaterThanOrEqual(to: rhs) }
    }

    // MARK: Collection >= Expression Array
    @discardableResult
    public func greaterThanOrEqual(to rhs: [LayoutConfiguration]) -> [[LayoutDimensionRelationship.Solution]] {
        return map { $0.greaterThanOrEqual(to: rhs) }
    }
}
