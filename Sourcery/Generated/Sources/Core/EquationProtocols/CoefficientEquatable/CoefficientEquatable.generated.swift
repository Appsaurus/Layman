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

}

// MARK: Collection <=> LayoutConstant
extension Collection where Element: CoefficientEquatable {
    // MARK: - Equal
    // MARK: Collection == Expression
    @discardableResult
    public func equal(to rhs: LayoutConstant) -> [Element.Solution] {
        return map { $0.equal(to: rhs) }
    }

    // MARK: - LessThanOrEqual

    // MARK: Collection <= Expression
    @discardableResult
    public func lessThanOrEqual(to rhs: LayoutConstant) -> [Element.Solution] {
        return map { $0.lessThanOrEqual(to: rhs) }
    }

    // MARK: - GreaterThanOrEqual

    // MARK: Collection >= Expression
    @discardableResult
    public func greaterThanOrEqual(to rhs: LayoutConstant) -> [Element.Solution] {
        return map { $0.greaterThanOrEqual(to: rhs) }
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

}

// MARK: Collection <=> LayoutCoefficient
extension Collection where Element: CoefficientEquatable {
    // MARK: - Equal
    // MARK: Collection == Expression
    @discardableResult
    public func equal(to rhs: LayoutCoefficient) -> [Element.Solution] {
        return map { $0.equal(to: rhs) }
    }

    // MARK: - LessThanOrEqual

    // MARK: Collection <= Expression
    @discardableResult
    public func lessThanOrEqual(to rhs: LayoutCoefficient) -> [Element.Solution] {
        return map { $0.lessThanOrEqual(to: rhs) }
    }

    // MARK: - GreaterThanOrEqual

    // MARK: Collection >= Expression
    @discardableResult
    public func greaterThanOrEqual(to rhs: LayoutCoefficient) -> [Element.Solution] {
        return map { $0.greaterThanOrEqual(to: rhs) }
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

}

// MARK: Collection <=> LayoutMultiplier
extension Collection where Element: CoefficientEquatable {
    // MARK: - Equal
    // MARK: Collection == Expression
    @discardableResult
    public func equal(to rhs: LayoutMultiplier) -> [Element.Solution] {
        return map { $0.equal(to: rhs) }
    }

    // MARK: - LessThanOrEqual

    // MARK: Collection <= Expression
    @discardableResult
    public func lessThanOrEqual(to rhs: LayoutMultiplier) -> [Element.Solution] {
        return map { $0.lessThanOrEqual(to: rhs) }
    }

    // MARK: - GreaterThanOrEqual

    // MARK: Collection >= Expression
    @discardableResult
    public func greaterThanOrEqual(to rhs: LayoutMultiplier) -> [Element.Solution] {
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

}

// MARK: Collection <=> RelativeLayoutConstant
extension Collection where Element: CoefficientEquatable {
    // MARK: - Equal
    // MARK: Collection == Expression
    @discardableResult
    public func equal(to rhs: RelativeLayoutConstant) -> [Element.Solution] {
        return map { $0.equal(to: rhs) }
    }

    // MARK: - LessThanOrEqual

    // MARK: Collection <= Expression
    @discardableResult
    public func lessThanOrEqual(to rhs: RelativeLayoutConstant) -> [Element.Solution] {
        return map { $0.lessThanOrEqual(to: rhs) }
    }

    // MARK: - GreaterThanOrEqual

    // MARK: Collection >= Expression
    @discardableResult
    public func greaterThanOrEqual(to rhs: RelativeLayoutConstant) -> [Element.Solution] {
        return map { $0.greaterThanOrEqual(to: rhs) }
    }
}
