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

    // MARK: - LessThanOrEqual

    @discardableResult
    public func lessThanOrEqual(to rhs: LayoutCoefficientTuple) -> Solution {
        return relation(.lessThanOrEqual, rhs).solution
    }

    // MARK: - GreaterThanOrEqual

    @discardableResult
    public func greaterThanOrEqual(to rhs: LayoutCoefficientTuple) -> Solution {
        return relation(.greaterThanOrEqual, rhs).solution
    }

    // MARK: - InsetOrEqual

    @discardableResult
    public func insetOrEqual(to rhs: LayoutCoefficientTuple) -> Solution {
        return relation(.insetOrEqual, rhs).solution
    }

    // MARK: - OutsetOrEqual

    @discardableResult
    public func outsetOrEqual(to rhs: LayoutCoefficientTuple) -> Solution {
        return relation(.outsetOrEqual, rhs).solution
    }
}

// MARK: Collection <=> LayoutCoefficientTuple
extension Collection where Element: CoefficientsEquatable {

    // MARK: - Equal

    @discardableResult
    public func equal(to rhs: LayoutCoefficientTuple) -> [Element.Solution] {
        return map { $0.equal(to: rhs) }
    }

    // MARK: - LessThanOrEqual

    @discardableResult
    public func lessThanOrEqual(to rhs: LayoutCoefficientTuple) -> [Element.Solution] {
        return map { $0.lessThanOrEqual(to: rhs) }
    }

    // MARK: - GreaterThanOrEqual

    @discardableResult
    public func greaterThanOrEqual(to rhs: LayoutCoefficientTuple) -> [Element.Solution] {
        return map { $0.greaterThanOrEqual(to: rhs) }
    }

    // MARK: - InsetOrEqual

    @discardableResult
    public func insetOrEqual(to rhs: LayoutCoefficientTuple) -> [Element.Solution] {
        return map { $0.insetOrEqual(to: rhs) }
    }

    // MARK: - OutsetOrEqual

    @discardableResult
    public func outsetOrEqual(to rhs: LayoutCoefficientTuple) -> [Element.Solution] {
        return map { $0.outsetOrEqual(to: rhs) }
    }
}
// MARK: Anchor <=> LayoutConstantTuple
extension CoefficientsEquatable {

    // MARK: - Equal

    @discardableResult
    public func equal(to rhs: LayoutConstantTuple) -> Solution {
        return relation(.equal, rhs).solution
    }

    // MARK: - LessThanOrEqual

    @discardableResult
    public func lessThanOrEqual(to rhs: LayoutConstantTuple) -> Solution {
        return relation(.lessThanOrEqual, rhs).solution
    }

    // MARK: - GreaterThanOrEqual

    @discardableResult
    public func greaterThanOrEqual(to rhs: LayoutConstantTuple) -> Solution {
        return relation(.greaterThanOrEqual, rhs).solution
    }

    // MARK: - InsetOrEqual

    @discardableResult
    public func insetOrEqual(to rhs: LayoutConstantTuple) -> Solution {
        return relation(.insetOrEqual, rhs).solution
    }

    // MARK: - OutsetOrEqual

    @discardableResult
    public func outsetOrEqual(to rhs: LayoutConstantTuple) -> Solution {
        return relation(.outsetOrEqual, rhs).solution
    }
}

// MARK: Collection <=> LayoutConstantTuple
extension Collection where Element: CoefficientsEquatable {

    // MARK: - Equal

    @discardableResult
    public func equal(to rhs: LayoutConstantTuple) -> [Element.Solution] {
        return map { $0.equal(to: rhs) }
    }

    // MARK: - LessThanOrEqual

    @discardableResult
    public func lessThanOrEqual(to rhs: LayoutConstantTuple) -> [Element.Solution] {
        return map { $0.lessThanOrEqual(to: rhs) }
    }

    // MARK: - GreaterThanOrEqual

    @discardableResult
    public func greaterThanOrEqual(to rhs: LayoutConstantTuple) -> [Element.Solution] {
        return map { $0.greaterThanOrEqual(to: rhs) }
    }

    // MARK: - InsetOrEqual

    @discardableResult
    public func insetOrEqual(to rhs: LayoutConstantTuple) -> [Element.Solution] {
        return map { $0.insetOrEqual(to: rhs) }
    }

    // MARK: - OutsetOrEqual

    @discardableResult
    public func outsetOrEqual(to rhs: LayoutConstantTuple) -> [Element.Solution] {
        return map { $0.outsetOrEqual(to: rhs) }
    }
}
// MARK: Anchor <=> RelativeLayoutConstantTuple
extension CoefficientsEquatable {

    // MARK: - Equal

    @discardableResult
    public func equal(to rhs: RelativeLayoutConstantTuple) -> Solution {
        return relation(.equal, rhs).solution
    }

    // MARK: - LessThanOrEqual

    @discardableResult
    public func lessThanOrEqual(to rhs: RelativeLayoutConstantTuple) -> Solution {
        return relation(.lessThanOrEqual, rhs).solution
    }

    // MARK: - GreaterThanOrEqual

    @discardableResult
    public func greaterThanOrEqual(to rhs: RelativeLayoutConstantTuple) -> Solution {
        return relation(.greaterThanOrEqual, rhs).solution
    }

    // MARK: - InsetOrEqual

    @discardableResult
    public func insetOrEqual(to rhs: RelativeLayoutConstantTuple) -> Solution {
        return relation(.insetOrEqual, rhs).solution
    }

    // MARK: - OutsetOrEqual

    @discardableResult
    public func outsetOrEqual(to rhs: RelativeLayoutConstantTuple) -> Solution {
        return relation(.outsetOrEqual, rhs).solution
    }
}

// MARK: Collection <=> RelativeLayoutConstantTuple
extension Collection where Element: CoefficientsEquatable {

    // MARK: - Equal

    @discardableResult
    public func equal(to rhs: RelativeLayoutConstantTuple) -> [Element.Solution] {
        return map { $0.equal(to: rhs) }
    }

    // MARK: - LessThanOrEqual

    @discardableResult
    public func lessThanOrEqual(to rhs: RelativeLayoutConstantTuple) -> [Element.Solution] {
        return map { $0.lessThanOrEqual(to: rhs) }
    }

    // MARK: - GreaterThanOrEqual

    @discardableResult
    public func greaterThanOrEqual(to rhs: RelativeLayoutConstantTuple) -> [Element.Solution] {
        return map { $0.greaterThanOrEqual(to: rhs) }
    }

    // MARK: - InsetOrEqual

    @discardableResult
    public func insetOrEqual(to rhs: RelativeLayoutConstantTuple) -> [Element.Solution] {
        return map { $0.insetOrEqual(to: rhs) }
    }

    // MARK: - OutsetOrEqual

    @discardableResult
    public func outsetOrEqual(to rhs: RelativeLayoutConstantTuple) -> [Element.Solution] {
        return map { $0.outsetOrEqual(to: rhs) }
    }
}
