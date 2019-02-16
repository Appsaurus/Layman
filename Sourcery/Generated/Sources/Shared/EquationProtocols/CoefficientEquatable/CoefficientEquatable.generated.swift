// Generated using Sourcery 0.15.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

//
//  Layman
//
//  Created by Brian Strobach on 1/22/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

public protocol CoefficientEquatable: LinearEquationTyped {
    func relation(_ relation: LayoutRelation, _ rhs: LayoutConstant) -> LinearEquation
    func relation(_ relation: LayoutRelation, _ rhs: Coefficient) -> LinearEquation
    func relation(_ relation: LayoutRelation, _ rhs: Multiplier) -> LinearEquation
    func relation(_ relation: LayoutRelation, _ rhs: RelativeLayoutConstant) -> LinearEquation
}
// MARK: Anchor <=> Constant
extension CoefficientEquatable {

    // MARK: - Equal

    @discardableResult
    public func equal(to rhs: LayoutConstant) -> Solution {
        return relation(.equal, rhs).solution
    }

    @discardableResult
    public func equal(to rhs: [LayoutConstant]) -> [Solution] {
        return rhs.map { relation(.equal, $0).solution }
    }

    // MARK: - LessThanOrEqual

    @discardableResult
    public func lessThanOrEqual(to rhs: LayoutConstant) -> Solution {
        return relation(.lessThanOrEqual, rhs).solution
    }

    @discardableResult
    public func lessThanOrEqual(to rhs: [LayoutConstant]) -> [Solution] {
        return rhs.map { relation(.lessThanOrEqual, $0).solution }
    }

    // MARK: - GreaterThanOrEqual

    @discardableResult
    public func greaterThanOrEqual(to rhs: LayoutConstant) -> Solution {
        return relation(.greaterThanOrEqual, rhs).solution
    }

    @discardableResult
    public func greaterThanOrEqual(to rhs: [LayoutConstant]) -> [Solution] {
        return rhs.map { relation(.greaterThanOrEqual, $0).solution }
    }
}

// MARK: Collection <=> Constant

extension Collection where Element: CoefficientEquatable {
    // MARK: - Equal
    // MARK: Collection == Expression
    @discardableResult
    public func equal(to rhs: LayoutConstant) -> [Element.Solution] {
        return map { $0.equal(to: rhs) }
    }

    // MARK: Collection == Expression Array
    @discardableResult
    public func equal(to rhs: [LayoutConstant]) -> [[Element.Solution]] {
        return map { $0.equal(to: rhs) }
    }

    // MARK: - LessThanOrEqual

    // MARK: Collection <= Expression
    @discardableResult
    public func lessThanOrEqual(to rhs: LayoutConstant) -> [Element.Solution] {
        return map { $0.lessThanOrEqual(to: rhs) }
    }

    // MARK: Collection <= Expression Array
    @discardableResult
    public func lessThanOrEqual(to rhs: [LayoutConstant]) -> [[Element.Solution]] {
        return map { $0.lessThanOrEqual(to: rhs) }
    }

    // MARK: - GreaterThanOrEqual

    // MARK: Collection >= Expression
    @discardableResult
    public func greaterThanOrEqual(to rhs: LayoutConstant) -> [Element.Solution] {
        return map { $0.greaterThanOrEqual(to: rhs) }
    }

    // MARK: Collection >= Expression Array
    @discardableResult
    public func greaterThanOrEqual(to rhs: [LayoutConstant]) -> [[Element.Solution]] {
        return map { $0.greaterThanOrEqual(to: rhs) }
    }
}
// MARK: Anchor <=> Coefficient
extension CoefficientEquatable {

    // MARK: - Equal

    @discardableResult
    public func equal(to rhs: Coefficient) -> Solution {
        return relation(.equal, rhs).solution
    }

    @discardableResult
    public func equal(to rhs: [Coefficient]) -> [Solution] {
        return rhs.map { relation(.equal, $0).solution }
    }

    // MARK: - LessThanOrEqual

    @discardableResult
    public func lessThanOrEqual(to rhs: Coefficient) -> Solution {
        return relation(.lessThanOrEqual, rhs).solution
    }

    @discardableResult
    public func lessThanOrEqual(to rhs: [Coefficient]) -> [Solution] {
        return rhs.map { relation(.lessThanOrEqual, $0).solution }
    }

    // MARK: - GreaterThanOrEqual

    @discardableResult
    public func greaterThanOrEqual(to rhs: Coefficient) -> Solution {
        return relation(.greaterThanOrEqual, rhs).solution
    }

    @discardableResult
    public func greaterThanOrEqual(to rhs: [Coefficient]) -> [Solution] {
        return rhs.map { relation(.greaterThanOrEqual, $0).solution }
    }
}

// MARK: Collection <=> Coefficient

extension Collection where Element: CoefficientEquatable {
    // MARK: - Equal
    // MARK: Collection == Expression
    @discardableResult
    public func equal(to rhs: Element.Coefficient) -> [Element.Solution] {
        return map { $0.equal(to: rhs) }
    }

    // MARK: Collection == Expression Array
    @discardableResult
    public func equal(to rhs: [Element.Coefficient]) -> [[Element.Solution]] {
        return map { $0.equal(to: rhs) }
    }

    // MARK: - LessThanOrEqual

    // MARK: Collection <= Expression
    @discardableResult
    public func lessThanOrEqual(to rhs: Element.Coefficient) -> [Element.Solution] {
        return map { $0.lessThanOrEqual(to: rhs) }
    }

    // MARK: Collection <= Expression Array
    @discardableResult
    public func lessThanOrEqual(to rhs: [Element.Coefficient]) -> [[Element.Solution]] {
        return map { $0.lessThanOrEqual(to: rhs) }
    }

    // MARK: - GreaterThanOrEqual

    // MARK: Collection >= Expression
    @discardableResult
    public func greaterThanOrEqual(to rhs: Element.Coefficient) -> [Element.Solution] {
        return map { $0.greaterThanOrEqual(to: rhs) }
    }

    // MARK: Collection >= Expression Array
    @discardableResult
    public func greaterThanOrEqual(to rhs: [Element.Coefficient]) -> [[Element.Solution]] {
        return map { $0.greaterThanOrEqual(to: rhs) }
    }
}
// MARK: Anchor <=> Multiplier
extension CoefficientEquatable {

    // MARK: - Equal

    @discardableResult
    public func equal(to rhs: Multiplier) -> Solution {
        return relation(.equal, rhs).solution
    }

    @discardableResult
    public func equal(to rhs: [Multiplier]) -> [Solution] {
        return rhs.map { relation(.equal, $0).solution }
    }

    // MARK: - LessThanOrEqual

    @discardableResult
    public func lessThanOrEqual(to rhs: Multiplier) -> Solution {
        return relation(.lessThanOrEqual, rhs).solution
    }

    @discardableResult
    public func lessThanOrEqual(to rhs: [Multiplier]) -> [Solution] {
        return rhs.map { relation(.lessThanOrEqual, $0).solution }
    }

    // MARK: - GreaterThanOrEqual

    @discardableResult
    public func greaterThanOrEqual(to rhs: Multiplier) -> Solution {
        return relation(.greaterThanOrEqual, rhs).solution
    }

    @discardableResult
    public func greaterThanOrEqual(to rhs: [Multiplier]) -> [Solution] {
        return rhs.map { relation(.greaterThanOrEqual, $0).solution }
    }
}

// MARK: Collection <=> Multiplier

extension Collection where Element: CoefficientEquatable {
    // MARK: - Equal
    // MARK: Collection == Expression
    @discardableResult
    public func equal(to rhs: Element.Multiplier) -> [Element.Solution] {
        return map { $0.equal(to: rhs) }
    }

    // MARK: Collection == Expression Array
    @discardableResult
    public func equal(to rhs: [Element.Multiplier]) -> [[Element.Solution]] {
        return map { $0.equal(to: rhs) }
    }

    // MARK: - LessThanOrEqual

    // MARK: Collection <= Expression
    @discardableResult
    public func lessThanOrEqual(to rhs: Element.Multiplier) -> [Element.Solution] {
        return map { $0.lessThanOrEqual(to: rhs) }
    }

    // MARK: Collection <= Expression Array
    @discardableResult
    public func lessThanOrEqual(to rhs: [Element.Multiplier]) -> [[Element.Solution]] {
        return map { $0.lessThanOrEqual(to: rhs) }
    }

    // MARK: - GreaterThanOrEqual

    // MARK: Collection >= Expression
    @discardableResult
    public func greaterThanOrEqual(to rhs: Element.Multiplier) -> [Element.Solution] {
        return map { $0.greaterThanOrEqual(to: rhs) }
    }

    // MARK: Collection >= Expression Array
    @discardableResult
    public func greaterThanOrEqual(to rhs: [Element.Multiplier]) -> [[Element.Solution]] {
        return map { $0.greaterThanOrEqual(to: rhs) }
    }
}
// MARK: Anchor <=> RelativeLayoutConstant
extension CoefficientEquatable {

    // MARK: - Equal

    @discardableResult
    public func equal(to rhs: RelativeLayoutConstant) -> Solution {
        return relation(.equal, rhs).solution
    }

    @discardableResult
    public func equal(to rhs: [RelativeLayoutConstant]) -> [Solution] {
        return rhs.map { relation(.equal, $0).solution }
    }

    // MARK: - LessThanOrEqual

    @discardableResult
    public func lessThanOrEqual(to rhs: RelativeLayoutConstant) -> Solution {
        return relation(.lessThanOrEqual, rhs).solution
    }

    @discardableResult
    public func lessThanOrEqual(to rhs: [RelativeLayoutConstant]) -> [Solution] {
        return rhs.map { relation(.lessThanOrEqual, $0).solution }
    }

    // MARK: - GreaterThanOrEqual

    @discardableResult
    public func greaterThanOrEqual(to rhs: RelativeLayoutConstant) -> Solution {
        return relation(.greaterThanOrEqual, rhs).solution
    }

    @discardableResult
    public func greaterThanOrEqual(to rhs: [RelativeLayoutConstant]) -> [Solution] {
        return rhs.map { relation(.greaterThanOrEqual, $0).solution }
    }
}

// MARK: Collection <=> RelativeLayoutConstant

extension Collection where Element: CoefficientEquatable {
    // MARK: - Equal
    // MARK: Collection == Expression
    @discardableResult
    public func equal(to rhs: Element.RelativeLayoutConstant) -> [Element.Solution] {
        return map { $0.equal(to: rhs) }
    }

    // MARK: Collection == Expression Array
    @discardableResult
    public func equal(to rhs: [Element.RelativeLayoutConstant]) -> [[Element.Solution]] {
        return map { $0.equal(to: rhs) }
    }

    // MARK: - LessThanOrEqual

    // MARK: Collection <= Expression
    @discardableResult
    public func lessThanOrEqual(to rhs: Element.RelativeLayoutConstant) -> [Element.Solution] {
        return map { $0.lessThanOrEqual(to: rhs) }
    }

    // MARK: Collection <= Expression Array
    @discardableResult
    public func lessThanOrEqual(to rhs: [Element.RelativeLayoutConstant]) -> [[Element.Solution]] {
        return map { $0.lessThanOrEqual(to: rhs) }
    }

    // MARK: - GreaterThanOrEqual

    // MARK: Collection >= Expression
    @discardableResult
    public func greaterThanOrEqual(to rhs: Element.RelativeLayoutConstant) -> [Element.Solution] {
        return map { $0.greaterThanOrEqual(to: rhs) }
    }

    // MARK: Collection >= Expression Array
    @discardableResult
    public func greaterThanOrEqual(to rhs: [Element.RelativeLayoutConstant]) -> [[Element.Solution]] {
        return map { $0.greaterThanOrEqual(to: rhs) }
    }
}
