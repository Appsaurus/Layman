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
    func relation(_ relation: LayoutRelation, _ rhs: LayoutCoefficient) -> LinearEquation
    func relation(_ relation: LayoutRelation, _ rhs: LayoutMultiplier) -> LinearEquation
    func relation(_ relation: LayoutRelation, _ rhs: RelativeLayoutConstant) -> LinearEquation
}
// MARK: Anchor <=> LayoutConstant
extension CoefficientEquatable {

    // MARK: - Equal

    @discardableResult
    public func equal(to rhs: LayoutConstant) -> Solution {
        return relation(.equal, rhs).solution
    }

    // MARK: - LessThanOrEqual

    @discardableResult
    public func lessThanOrEqual(to rhs: LayoutConstant) -> Solution {
        return relation(.lessThanOrEqual, rhs).solution
    }

    // MARK: - GreaterThanOrEqual

    @discardableResult
    public func greaterThanOrEqual(to rhs: LayoutConstant) -> Solution {
        return relation(.greaterThanOrEqual, rhs).solution
    }

    // MARK: - InsetOrEqual

    @discardableResult
    public func insetOrEqual(to rhs: LayoutConstant) -> Solution {
        return relation(.insetOrEqual, rhs).solution
    }

    // MARK: - OutsetOrEqual

    @discardableResult
    public func outsetOrEqual(to rhs: LayoutConstant) -> Solution {
        return relation(.outsetOrEqual, rhs).solution
    }
}

// MARK: Collection <=> LayoutConstant
extension Collection where Element: CoefficientEquatable {

    // MARK: - Equal

    @discardableResult
    public func equal(to rhs: LayoutConstant) -> [Element.Solution] {
        return map { $0.equal(to: rhs) }
    }

    // MARK: - LessThanOrEqual

    @discardableResult
    public func lessThanOrEqual(to rhs: LayoutConstant) -> [Element.Solution] {
        return map { $0.lessThanOrEqual(to: rhs) }
    }

    // MARK: - GreaterThanOrEqual

    @discardableResult
    public func greaterThanOrEqual(to rhs: LayoutConstant) -> [Element.Solution] {
        return map { $0.greaterThanOrEqual(to: rhs) }
    }

    // MARK: - InsetOrEqual

    @discardableResult
    public func insetOrEqual(to rhs: LayoutConstant) -> [Element.Solution] {
        return map { $0.insetOrEqual(to: rhs) }
    }

    // MARK: - OutsetOrEqual

    @discardableResult
    public func outsetOrEqual(to rhs: LayoutConstant) -> [Element.Solution] {
        return map { $0.outsetOrEqual(to: rhs) }
    }
}
// MARK: Anchor <=> LayoutCoefficient
extension CoefficientEquatable {

    // MARK: - Equal

    @discardableResult
    public func equal(to rhs: LayoutCoefficient) -> Solution {
        return relation(.equal, rhs).solution
    }

    // MARK: - LessThanOrEqual

    @discardableResult
    public func lessThanOrEqual(to rhs: LayoutCoefficient) -> Solution {
        return relation(.lessThanOrEqual, rhs).solution
    }

    // MARK: - GreaterThanOrEqual

    @discardableResult
    public func greaterThanOrEqual(to rhs: LayoutCoefficient) -> Solution {
        return relation(.greaterThanOrEqual, rhs).solution
    }

    // MARK: - InsetOrEqual

    @discardableResult
    public func insetOrEqual(to rhs: LayoutCoefficient) -> Solution {
        return relation(.insetOrEqual, rhs).solution
    }

    // MARK: - OutsetOrEqual

    @discardableResult
    public func outsetOrEqual(to rhs: LayoutCoefficient) -> Solution {
        return relation(.outsetOrEqual, rhs).solution
    }
}

// MARK: Collection <=> LayoutCoefficient
extension Collection where Element: CoefficientEquatable {

    // MARK: - Equal

    @discardableResult
    public func equal(to rhs: LayoutCoefficient) -> [Element.Solution] {
        return map { $0.equal(to: rhs) }
    }

    // MARK: - LessThanOrEqual

    @discardableResult
    public func lessThanOrEqual(to rhs: LayoutCoefficient) -> [Element.Solution] {
        return map { $0.lessThanOrEqual(to: rhs) }
    }

    // MARK: - GreaterThanOrEqual

    @discardableResult
    public func greaterThanOrEqual(to rhs: LayoutCoefficient) -> [Element.Solution] {
        return map { $0.greaterThanOrEqual(to: rhs) }
    }

    // MARK: - InsetOrEqual

    @discardableResult
    public func insetOrEqual(to rhs: LayoutCoefficient) -> [Element.Solution] {
        return map { $0.insetOrEqual(to: rhs) }
    }

    // MARK: - OutsetOrEqual

    @discardableResult
    public func outsetOrEqual(to rhs: LayoutCoefficient) -> [Element.Solution] {
        return map { $0.outsetOrEqual(to: rhs) }
    }
}
// MARK: Anchor <=> LayoutMultiplier
extension CoefficientEquatable {

    // MARK: - Equal

    @discardableResult
    public func equal(to rhs: LayoutMultiplier) -> Solution {
        return relation(.equal, rhs).solution
    }

    // MARK: - LessThanOrEqual

    @discardableResult
    public func lessThanOrEqual(to rhs: LayoutMultiplier) -> Solution {
        return relation(.lessThanOrEqual, rhs).solution
    }

    // MARK: - GreaterThanOrEqual

    @discardableResult
    public func greaterThanOrEqual(to rhs: LayoutMultiplier) -> Solution {
        return relation(.greaterThanOrEqual, rhs).solution
    }

    // MARK: - InsetOrEqual

    @discardableResult
    public func insetOrEqual(to rhs: LayoutMultiplier) -> Solution {
        return relation(.insetOrEqual, rhs).solution
    }

    // MARK: - OutsetOrEqual

    @discardableResult
    public func outsetOrEqual(to rhs: LayoutMultiplier) -> Solution {
        return relation(.outsetOrEqual, rhs).solution
    }
}

// MARK: Collection <=> LayoutMultiplier
extension Collection where Element: CoefficientEquatable {

    // MARK: - Equal

    @discardableResult
    public func equal(to rhs: LayoutMultiplier) -> [Element.Solution] {
        return map { $0.equal(to: rhs) }
    }

    // MARK: - LessThanOrEqual

    @discardableResult
    public func lessThanOrEqual(to rhs: LayoutMultiplier) -> [Element.Solution] {
        return map { $0.lessThanOrEqual(to: rhs) }
    }

    // MARK: - GreaterThanOrEqual

    @discardableResult
    public func greaterThanOrEqual(to rhs: LayoutMultiplier) -> [Element.Solution] {
        return map { $0.greaterThanOrEqual(to: rhs) }
    }

    // MARK: - InsetOrEqual

    @discardableResult
    public func insetOrEqual(to rhs: LayoutMultiplier) -> [Element.Solution] {
        return map { $0.insetOrEqual(to: rhs) }
    }

    // MARK: - OutsetOrEqual

    @discardableResult
    public func outsetOrEqual(to rhs: LayoutMultiplier) -> [Element.Solution] {
        return map { $0.outsetOrEqual(to: rhs) }
    }
}
// MARK: Anchor <=> RelativeLayoutConstant
extension CoefficientEquatable {

    // MARK: - Equal

    @discardableResult
    public func equal(to rhs: RelativeLayoutConstant) -> Solution {
        return relation(.equal, rhs).solution
    }

    // MARK: - LessThanOrEqual

    @discardableResult
    public func lessThanOrEqual(to rhs: RelativeLayoutConstant) -> Solution {
        return relation(.lessThanOrEqual, rhs).solution
    }

    // MARK: - GreaterThanOrEqual

    @discardableResult
    public func greaterThanOrEqual(to rhs: RelativeLayoutConstant) -> Solution {
        return relation(.greaterThanOrEqual, rhs).solution
    }

    // MARK: - InsetOrEqual

    @discardableResult
    public func insetOrEqual(to rhs: RelativeLayoutConstant) -> Solution {
        return relation(.insetOrEqual, rhs).solution
    }

    // MARK: - OutsetOrEqual

    @discardableResult
    public func outsetOrEqual(to rhs: RelativeLayoutConstant) -> Solution {
        return relation(.outsetOrEqual, rhs).solution
    }
}

// MARK: Collection <=> RelativeLayoutConstant
extension Collection where Element: CoefficientEquatable {

    // MARK: - Equal

    @discardableResult
    public func equal(to rhs: RelativeLayoutConstant) -> [Element.Solution] {
        return map { $0.equal(to: rhs) }
    }

    // MARK: - LessThanOrEqual

    @discardableResult
    public func lessThanOrEqual(to rhs: RelativeLayoutConstant) -> [Element.Solution] {
        return map { $0.lessThanOrEqual(to: rhs) }
    }

    // MARK: - GreaterThanOrEqual

    @discardableResult
    public func greaterThanOrEqual(to rhs: RelativeLayoutConstant) -> [Element.Solution] {
        return map { $0.greaterThanOrEqual(to: rhs) }
    }

    // MARK: - InsetOrEqual

    @discardableResult
    public func insetOrEqual(to rhs: RelativeLayoutConstant) -> [Element.Solution] {
        return map { $0.insetOrEqual(to: rhs) }
    }

    // MARK: - OutsetOrEqual

    @discardableResult
    public func outsetOrEqual(to rhs: RelativeLayoutConstant) -> [Element.Solution] {
        return map { $0.outsetOrEqual(to: rhs) }
    }
}
