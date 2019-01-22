////
////  LeftHandSizeRelatableExpression.swift
////  UILayoutKit
////
////  Created by Brian Strobach on 1/22/19.
////  Copyright © 2019 Brian Strobach. All rights reserved.
////
//
//public protocol LeftHandSizeRelatableExpression {
//    func relation(_ relation: Constraint.Relation, _ rhs: LayoutSize) -> LayoutDimensionPairRelationship
//    func relation(_ relation: Constraint.Relation, _ rhs: LayoutConstant) -> LayoutDimensionPairRelationship
//    func relation(_ relation: Constraint.Relation, _ rhs: LayoutConfigurationPair) -> LayoutDimensionPairRelationship
//}
//
//// MARK: Anchor <=> LayoutSize 
//extension LeftHandSizeRelatableExpression {
//
//    // MARK: - Equal
//
//    @discardableResult
//    public func equal(to rhs: LayoutSize) -> LayoutDimensionPairRelationship.Solution {
//        return relation(.equal, rhs).solution
//    }
//
//    @discardableResult
//    public func equal(to rhs: [LayoutSize]) -> [LayoutDimensionPairRelationship.Solution] {
//        return rhs.map { relation(.equal, $0).solution }
//    }
//
//    // MARK: - LessThanOrEqual
//
//    @discardableResult
//    public func lessThanOrEqual(to rhs: LayoutSize) -> LayoutDimensionPairRelationship.Solution {
//        return relation(.lessThanOrEqual, rhs).solution
//    }
//
//    @discardableResult
//    public func lessThanOrEqual(to rhs: [LayoutSize]) -> [LayoutDimensionPairRelationship.Solution] {
//        return rhs.map { relation(.lessThanOrEqual, $0).solution }
//    }
//
//    // MARK: - GreaterThanOrEqual
//
//    @discardableResult
//    public func greaterThanOrEqual(to rhs: LayoutSize) -> LayoutDimensionPairRelationship.Solution {
//        return relation(.greaterThanOrEqual, rhs).solution
//    }
//
//    @discardableResult
//    public func greaterThanOrEqual(to rhs: [LayoutSize]) -> [LayoutDimensionPairRelationship.Solution] {
//        return rhs.map { relation(.greaterThanOrEqual, $0).solution }
//    }
//}
//
//// MARK: Collection <=> LayoutSize
//
//extension Collection where Element: LeftHandSizeRelatableExpression {
//
//    // MARK: - Equal
//
//    // MARK: Collection == Expression
//    @discardableResult
//    public func equal(to rhs: LayoutSize) -> [LayoutDimensionPairRelationship.Solution] {
//        return map { $0.equal(to: rhs) }
//    }
//
//    // MARK: Collection == Expression Array
//    @discardableResult
//    public func equal(to rhs: [LayoutSize]) -> [[LayoutDimensionPairRelationship.Solution]] {
//        return map { $0.equal(to: rhs) }
//    }
//
//    // MARK: - LessThanOrEqual
//
//    // MARK: Collection <= Expression
//    @discardableResult
//    public func lessThanOrEqual(to rhs: LayoutSize) -> [LayoutDimensionPairRelationship.Solution] {
//        return map { $0.lessThanOrEqual(to: rhs) }
//    }
//
//    // MARK: Collection <= Expression Array
//    @discardableResult
//    public func lessThanOrEqual(to rhs: [LayoutSize]) -> [[LayoutDimensionPairRelationship.Solution]] {
//        return map { $0.lessThanOrEqual(to: rhs) }
//    }
//
//    // MARK: - GreaterThanOrEqual
//
//    // MARK: Collection >= Expression
//    @discardableResult
//    public func greaterThanOrEqual(to rhs: LayoutSize) -> [LayoutDimensionPairRelationship.Solution] {
//        return map { $0.greaterThanOrEqual(to: rhs) }
//    }
//
//    // MARK: Collection >= Expression Array
//    @discardableResult
//    public func greaterThanOrEqual(to rhs: [LayoutSize]) -> [[LayoutDimensionPairRelationship.Solution]] {
//        return map { $0.greaterThanOrEqual(to: rhs) }
//    }
//}
//
////Implying square size through single LayoutConstant
//
//// MARK: Anchor <=> LayoutConstant
//extension LeftHandSizeRelatableExpression {
//
//    // MARK: - Equal
//
//    @discardableResult
//    public func equal(to rhs: LayoutConstant) -> LayoutDimensionPairRelationship.Solution {
//        return relation(.equal, rhs).solution
//    }
//
//    @discardableResult
//    public func equal(to rhs: [LayoutConstant]) -> [LayoutDimensionPairRelationship.Solution] {
//        return rhs.map { relation(.equal, $0).solution }
//    }
//
//    // MARK: - LessThanOrEqual
//
//    @discardableResult
//    public func lessThanOrEqual(to rhs: LayoutConstant) -> LayoutDimensionPairRelationship.Solution {
//        return relation(.lessThanOrEqual, rhs).solution
//    }
//
//    @discardableResult
//    public func lessThanOrEqual(to rhs: [LayoutConstant]) -> [LayoutDimensionPairRelationship.Solution] {
//        return rhs.map { relation(.lessThanOrEqual, $0).solution }
//    }
//
//    // MARK: - GreaterThanOrEqual
//
//    @discardableResult
//    public func greaterThanOrEqual(to rhs: LayoutConstant) -> LayoutDimensionPairRelationship.Solution {
//        return relation(.greaterThanOrEqual, rhs).solution
//    }
//
//    @discardableResult
//    public func greaterThanOrEqual(to rhs: [LayoutConstant]) -> [LayoutDimensionPairRelationship.Solution] {
//        return rhs.map { relation(.greaterThanOrEqual, $0).solution }
//    }
//}
//// MARK: Collection <=> LayoutConstant
//
//extension Collection where Element: LeftHandSizeRelatableExpression {
//    // MARK: Collection == Anchor
//    @discardableResult
//    public func equal(to rhs: LayoutConstant) -> [LayoutDimensionPairRelationship.Solution] {
//        return map { $0.equal(to: rhs) }
//    }
//
//    // MARK: Collection == Anchor Array
//    @discardableResult
//    public func equal(to rhs: [LayoutConstant]) -> [[LayoutDimensionPairRelationship.Solution]] {
//        return map { $0.equal(to: rhs) }
//    }
//
//    // MARK: - LessThanOrEqual
//
//    // MARK: Collection <= Anchor
//    @discardableResult
//    public func lessThanOrEqual(to rhs: LayoutConstant) -> [LayoutDimensionPairRelationship.Solution] {
//        return map { $0.lessThanOrEqual(to: rhs) }
//    }
//
//    // MARK: Collection <= Anchor Array
//    @discardableResult
//    public func lessThanOrEqual(to rhs: [LayoutConstant]) -> [[LayoutDimensionPairRelationship.Solution]] {
//        return map { $0.lessThanOrEqual(to: rhs) }
//    }
//
//    // MARK: - GreaterThanOrEqual
//
//    // MARK: Collection Array >= Anchor
//    @discardableResult
//    public func greaterThanOrEqual(to rhs: LayoutConstant) -> [LayoutDimensionPairRelationship.Solution] {
//        return map { $0.greaterThanOrEqual(to: rhs) }
//    }
//
//    // MARK: Collection >= Anchor Array
//    @discardableResult
//    public func greaterThanOrEqual(to rhs: [LayoutConstant]) -> [[LayoutDimensionPairRelationship.Solution]] {
//        return map { $0.greaterThanOrEqual(to: rhs) }
//    }
//}
//
//// MARK: Anchor <=> LayoutPairConfiguration
//extension LeftHandSizeRelatableExpression {
//
//    // MARK: - Equal
//
//    @discardableResult
//    public func equal(to rhs: LayoutConfigurationPair) -> LayoutDimensionPairRelationship.Solution {
//        return relation(.equal, rhs).solution
//    }
//
//    @discardableResult
//    public func equal(to rhs: [LayoutConfigurationPair]) -> [LayoutDimensionPairRelationship.Solution] {
//        return rhs.map { relation(.equal, $0).solution }
//    }
//
//    // MARK: - LessThanOrEqual
//
//    @discardableResult
//    public func lessThanOrEqual(to rhs: LayoutConfigurationPair) -> LayoutDimensionPairRelationship.Solution {
//        return relation(.lessThanOrEqual, rhs).solution
//    }
//
//    @discardableResult
//    public func lessThanOrEqual(to rhs: [LayoutConfigurationPair]) -> [LayoutDimensionPairRelationship.Solution] {
//        return rhs.map { relation(.lessThanOrEqual, $0).solution }
//    }
//
//    // MARK: - GreaterThanOrEqual
//
//    @discardableResult
//    public func greaterThanOrEqual(to rhs: LayoutConfigurationPair) -> LayoutDimensionPairRelationship.Solution {
//        return relation(.greaterThanOrEqual, rhs).solution
//    }
//
//    @discardableResult
//    public func greaterThanOrEqual(to rhs: [LayoutConfigurationPair]) -> [LayoutDimensionPairRelationship.Solution] {
//        return rhs.map { relation(.greaterThanOrEqual, $0).solution }
//    }
//}
//// MARK: Collection <=> LayoutPairConfiguration
//
//extension Collection where Element: LeftHandSizeRelatableExpression {
//    // MARK: Collection == Anchor
//    @discardableResult
//    public func equal(to rhs: LayoutConfigurationPair) -> [LayoutDimensionPairRelationship.Solution] {
//        return map { $0.equal(to: rhs) }
//    }
//
//    // MARK: Collection == Anchor Array
//    @discardableResult
//    public func equal(to rhs: [LayoutConfigurationPair]) -> [[LayoutDimensionPairRelationship.Solution]] {
//        return map { $0.equal(to: rhs) }
//    }
//
//    // MARK: - LessThanOrEqual
//
//    // MARK: Collection <= Anchor
//    @discardableResult
//    public func lessThanOrEqual(to rhs: LayoutConfigurationPair) -> [LayoutDimensionPairRelationship.Solution] {
//        return map { $0.lessThanOrEqual(to: rhs) }
//    }
//
//    // MARK: Collection <= Anchor Array
//    @discardableResult
//    public func lessThanOrEqual(to rhs: [LayoutConfigurationPair]) -> [[LayoutDimensionPairRelationship.Solution]] {
//        return map { $0.lessThanOrEqual(to: rhs) }
//    }
//
//    // MARK: - GreaterThanOrEqual
//
//    // MARK: Collection Array >= Anchor
//    @discardableResult
//    public func greaterThanOrEqual(to rhs: LayoutConfigurationPair) -> [LayoutDimensionPairRelationship.Solution] {
//        return map { $0.greaterThanOrEqual(to: rhs) }
//    }
//
//    // MARK: Collection >= Anchor Array
//    @discardableResult
//    public func greaterThanOrEqual(to rhs: [LayoutConfigurationPair]) -> [[LayoutDimensionPairRelationship.Solution]] {
//        return map { $0.greaterThanOrEqual(to: rhs) }
//    }
//}
