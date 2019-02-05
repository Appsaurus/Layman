// Generated using Sourcery 0.15.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

//
//  UILayoutKit
//
//  Created by Brian Strobach on 1/22/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

public protocol LeftHandConstantRelatableExpression: LinearEquationTyped where LinearEquation.Relation == Constraint.Relation {
    func relation(_ relation: Constraint.Relation, _ rhs: Constant) -> LinearEquation
    func relation(_ relation: Constraint.Relation, _ rhs: Coefficient) -> LinearEquation
}
// MARK: Anchor <=> Constant
extension LeftHandConstantRelatableExpression {

    // MARK: - Equal

    @discardableResult
    public func equal(to rhs: Constant) -> Solution {
        return relation(.equal, rhs).solution
    }

    @discardableResult
    public func equal(to rhs: [Constant]) -> [Solution] {
        return rhs.map { relation(.equal, $0).solution }
    }

    // MARK: - LessThanOrEqual

    @discardableResult
    public func lessThanOrEqual(to rhs: Constant) -> Solution {
        return relation(.lessThanOrEqual, rhs).solution
    }

    @discardableResult
    public func lessThanOrEqual(to rhs: [Constant]) -> [Solution] {
        return rhs.map { relation(.lessThanOrEqual, $0).solution }
    }

    // MARK: - GreaterThanOrEqual

    @discardableResult
    public func greaterThanOrEqual(to rhs: Constant) -> Solution {
        return relation(.greaterThanOrEqual, rhs).solution
    }

    @discardableResult
    public func greaterThanOrEqual(to rhs: [Constant]) -> [Solution] {
        return rhs.map { relation(.greaterThanOrEqual, $0).solution }
    }
}

// MARK: Collection <=> Constant

extension Collection where Element: LeftHandConstantRelatableExpression {
    // MARK: - Equal
    // MARK: Collection == Expression
    @discardableResult
    public func equal(to rhs: Element.Constant) -> [Element.Solution] {
        return map { $0.equal(to: rhs) }
    }

    // MARK: Collection == Expression Array
    @discardableResult
    public func equal(to rhs: [Element.Constant]) -> [[Element.Solution]] {
        return map { $0.equal(to: rhs) }
    }

    // MARK: - LessThanOrEqual

    // MARK: Collection <= Expression
    @discardableResult
    public func lessThanOrEqual(to rhs: Element.Constant) -> [Element.Solution] {
        return map { $0.lessThanOrEqual(to: rhs) }
    }

    // MARK: Collection <= Expression Array
    @discardableResult
    public func lessThanOrEqual(to rhs: [Element.Constant]) -> [[Element.Solution]] {
        return map { $0.lessThanOrEqual(to: rhs) }
    }

    // MARK: - GreaterThanOrEqual

    // MARK: Collection >= Expression
    @discardableResult
    public func greaterThanOrEqual(to rhs: Element.Constant) -> [Element.Solution] {
        return map { $0.greaterThanOrEqual(to: rhs) }
    }

    // MARK: Collection >= Expression Array
    @discardableResult
    public func greaterThanOrEqual(to rhs: [Element.Constant]) -> [[Element.Solution]] {
        return map { $0.greaterThanOrEqual(to: rhs) }
    }
}
// MARK: Anchor <=> Coefficient
extension LeftHandConstantRelatableExpression {

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

extension Collection where Element: LeftHandConstantRelatableExpression {
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
