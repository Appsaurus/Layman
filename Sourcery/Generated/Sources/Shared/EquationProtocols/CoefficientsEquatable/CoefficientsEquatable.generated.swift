// Generated using Sourcery 0.15.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

//
//  Layman
//
//  Created by Brian Strobach on 1/22/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

public protocol CoefficientsEquatable: LinearEquationTyped {
    func relation(_ relation: LayoutRelation, _ rhs: LayoutCoefficientTuple) -> LinearEquation
    func relation(_ relation: LayoutRelation, _ rhs: LayoutConstantTuple) -> LinearEquation
    func relation(_ relation: LayoutRelation, _ rhs: RelativeLayoutConstantTuple) -> LinearEquation
}
// MARK: Anchor <=> LayoutCoefficientTuple
extension CoefficientsEquatable {

    // MARK: - Equal

    @discardableResult
    public func equal(to rhs: LayoutCoefficientTuple) -> Solution {
        return relation(.equal, rhs).solution
    }

    @discardableResult
    public func equal(to rhs: [LayoutCoefficientTuple]) -> [Solution] {
        return rhs.map { relation(.equal, $0).solution }
    }

    // MARK: - LessThanOrEqual

    @discardableResult
    public func lessThanOrEqual(to rhs: LayoutCoefficientTuple) -> Solution {
        return relation(.lessThanOrEqual, rhs).solution
    }

    @discardableResult
    public func lessThanOrEqual(to rhs: [LayoutCoefficientTuple]) -> [Solution] {
        return rhs.map { relation(.lessThanOrEqual, $0).solution }
    }

    // MARK: - GreaterThanOrEqual

    @discardableResult
    public func greaterThanOrEqual(to rhs: LayoutCoefficientTuple) -> Solution {
        return relation(.greaterThanOrEqual, rhs).solution
    }

    @discardableResult
    public func greaterThanOrEqual(to rhs: [LayoutCoefficientTuple]) -> [Solution] {
        return rhs.map { relation(.greaterThanOrEqual, $0).solution }
    }
}

// MARK: Collection <=> LayoutCoefficientTuple

extension Collection where Element: CoefficientsEquatable {
    // MARK: - Equal
    // MARK: Collection == Expression
    @discardableResult
    public func equal(to rhs: LayoutCoefficientTuple) -> [Element.Solution] {
        return map { $0.equal(to: rhs) }
    }

    // MARK: Collection == Expression Array
    @discardableResult
    public func equal(to rhs: [LayoutCoefficientTuple]) -> [[Element.Solution]] {
        return map { $0.equal(to: rhs) }
    }

    // MARK: - LessThanOrEqual

    // MARK: Collection <= Expression
    @discardableResult
    public func lessThanOrEqual(to rhs: LayoutCoefficientTuple) -> [Element.Solution] {
        return map { $0.lessThanOrEqual(to: rhs) }
    }

    // MARK: Collection <= Expression Array
    @discardableResult
    public func lessThanOrEqual(to rhs: [LayoutCoefficientTuple]) -> [[Element.Solution]] {
        return map { $0.lessThanOrEqual(to: rhs) }
    }

    // MARK: - GreaterThanOrEqual

    // MARK: Collection >= Expression
    @discardableResult
    public func greaterThanOrEqual(to rhs: LayoutCoefficientTuple) -> [Element.Solution] {
        return map { $0.greaterThanOrEqual(to: rhs) }
    }

    // MARK: Collection >= Expression Array
    @discardableResult
    public func greaterThanOrEqual(to rhs: [LayoutCoefficientTuple]) -> [[Element.Solution]] {
        return map { $0.greaterThanOrEqual(to: rhs) }
    }
}
// MARK: Anchor <=> LayoutConstantTuple
extension CoefficientsEquatable {

    // MARK: - Equal

    @discardableResult
    public func equal(to rhs: LayoutConstantTuple) -> Solution {
        return relation(.equal, rhs).solution
    }

    @discardableResult
    public func equal(to rhs: [LayoutConstantTuple]) -> [Solution] {
        return rhs.map { relation(.equal, $0).solution }
    }

    // MARK: - LessThanOrEqual

    @discardableResult
    public func lessThanOrEqual(to rhs: LayoutConstantTuple) -> Solution {
        return relation(.lessThanOrEqual, rhs).solution
    }

    @discardableResult
    public func lessThanOrEqual(to rhs: [LayoutConstantTuple]) -> [Solution] {
        return rhs.map { relation(.lessThanOrEqual, $0).solution }
    }

    // MARK: - GreaterThanOrEqual

    @discardableResult
    public func greaterThanOrEqual(to rhs: LayoutConstantTuple) -> Solution {
        return relation(.greaterThanOrEqual, rhs).solution
    }

    @discardableResult
    public func greaterThanOrEqual(to rhs: [LayoutConstantTuple]) -> [Solution] {
        return rhs.map { relation(.greaterThanOrEqual, $0).solution }
    }
}

// MARK: Collection <=> LayoutConstantTuple

extension Collection where Element: CoefficientsEquatable {
    // MARK: - Equal
    // MARK: Collection == Expression
    @discardableResult
    public func equal(to rhs: LayoutConstantTuple) -> [Element.Solution] {
        return map { $0.equal(to: rhs) }
    }

    // MARK: Collection == Expression Array
    @discardableResult
    public func equal(to rhs: [LayoutConstantTuple]) -> [[Element.Solution]] {
        return map { $0.equal(to: rhs) }
    }

    // MARK: - LessThanOrEqual

    // MARK: Collection <= Expression
    @discardableResult
    public func lessThanOrEqual(to rhs: LayoutConstantTuple) -> [Element.Solution] {
        return map { $0.lessThanOrEqual(to: rhs) }
    }

    // MARK: Collection <= Expression Array
    @discardableResult
    public func lessThanOrEqual(to rhs: [LayoutConstantTuple]) -> [[Element.Solution]] {
        return map { $0.lessThanOrEqual(to: rhs) }
    }

    // MARK: - GreaterThanOrEqual

    // MARK: Collection >= Expression
    @discardableResult
    public func greaterThanOrEqual(to rhs: LayoutConstantTuple) -> [Element.Solution] {
        return map { $0.greaterThanOrEqual(to: rhs) }
    }

    // MARK: Collection >= Expression Array
    @discardableResult
    public func greaterThanOrEqual(to rhs: [LayoutConstantTuple]) -> [[Element.Solution]] {
        return map { $0.greaterThanOrEqual(to: rhs) }
    }
}
// MARK: Anchor <=> RelativeLayoutConstantTuple
extension CoefficientsEquatable {

    // MARK: - Equal

    @discardableResult
    public func equal(to rhs: RelativeLayoutConstantTuple) -> Solution {
        return relation(.equal, rhs).solution
    }

    @discardableResult
    public func equal(to rhs: [RelativeLayoutConstantTuple]) -> [Solution] {
        return rhs.map { relation(.equal, $0).solution }
    }

    // MARK: - LessThanOrEqual

    @discardableResult
    public func lessThanOrEqual(to rhs: RelativeLayoutConstantTuple) -> Solution {
        return relation(.lessThanOrEqual, rhs).solution
    }

    @discardableResult
    public func lessThanOrEqual(to rhs: [RelativeLayoutConstantTuple]) -> [Solution] {
        return rhs.map { relation(.lessThanOrEqual, $0).solution }
    }

    // MARK: - GreaterThanOrEqual

    @discardableResult
    public func greaterThanOrEqual(to rhs: RelativeLayoutConstantTuple) -> Solution {
        return relation(.greaterThanOrEqual, rhs).solution
    }

    @discardableResult
    public func greaterThanOrEqual(to rhs: [RelativeLayoutConstantTuple]) -> [Solution] {
        return rhs.map { relation(.greaterThanOrEqual, $0).solution }
    }
}

// MARK: Collection <=> RelativeLayoutConstantTuple

extension Collection where Element: CoefficientsEquatable {
    // MARK: - Equal
    // MARK: Collection == Expression
    @discardableResult
    public func equal(to rhs: RelativeLayoutConstantTuple) -> [Element.Solution] {
        return map { $0.equal(to: rhs) }
    }

    // MARK: Collection == Expression Array
    @discardableResult
    public func equal(to rhs: [RelativeLayoutConstantTuple]) -> [[Element.Solution]] {
        return map { $0.equal(to: rhs) }
    }

    // MARK: - LessThanOrEqual

    // MARK: Collection <= Expression
    @discardableResult
    public func lessThanOrEqual(to rhs: RelativeLayoutConstantTuple) -> [Element.Solution] {
        return map { $0.lessThanOrEqual(to: rhs) }
    }

    // MARK: Collection <= Expression Array
    @discardableResult
    public func lessThanOrEqual(to rhs: [RelativeLayoutConstantTuple]) -> [[Element.Solution]] {
        return map { $0.lessThanOrEqual(to: rhs) }
    }

    // MARK: - GreaterThanOrEqual

    // MARK: Collection >= Expression
    @discardableResult
    public func greaterThanOrEqual(to rhs: RelativeLayoutConstantTuple) -> [Element.Solution] {
        return map { $0.greaterThanOrEqual(to: rhs) }
    }

    // MARK: Collection >= Expression Array
    @discardableResult
    public func greaterThanOrEqual(to rhs: [RelativeLayoutConstantTuple]) -> [[Element.Solution]] {
        return map { $0.greaterThanOrEqual(to: rhs) }
    }
}
