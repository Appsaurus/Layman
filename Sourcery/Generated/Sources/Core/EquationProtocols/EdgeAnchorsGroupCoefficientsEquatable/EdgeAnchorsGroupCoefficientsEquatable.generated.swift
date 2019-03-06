// Generated using Sourcery 0.15.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

//
//  Layman
//
//  Created by Brian Strobach on 1/22/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

public protocol EdgeAnchorsGroupCoefficientsEquatable: LinearEquationTyped {
    func relation(_ relation: LayoutRelation, _ rhs: EdgeAnchorsGroupCoefficients) -> LinearEquation
}
// MARK: Anchor <=> EdgeAnchorsGroupCoefficients
extension EdgeAnchorsGroupCoefficientsEquatable {

    // MARK: - Equal

    @discardableResult
    public func equal(to rhs: EdgeAnchorsGroupCoefficients) -> Solution {
        return relation(.equal, rhs).solution
    }

    // MARK: - LessThanOrEqual

    @discardableResult
    public func lessThanOrEqual(to rhs: EdgeAnchorsGroupCoefficients) -> Solution {
        return relation(.lessThanOrEqual, rhs).solution
    }

    // MARK: - GreaterThanOrEqual

    @discardableResult
    public func greaterThanOrEqual(to rhs: EdgeAnchorsGroupCoefficients) -> Solution {
        return relation(.greaterThanOrEqual, rhs).solution
    }

    // MARK: - InsetOrEqual

    @discardableResult
    public func insetOrEqual(to rhs: EdgeAnchorsGroupCoefficients) -> Solution {
        return relation(.insetOrEqual, rhs).solution
    }

    // MARK: - OutsetOrEqual

    @discardableResult
    public func outsetOrEqual(to rhs: EdgeAnchorsGroupCoefficients) -> Solution {
        return relation(.outsetOrEqual, rhs).solution
    }
}

// MARK: Collection <=> EdgeAnchorsGroupCoefficients
extension Collection where Element: EdgeAnchorsGroupCoefficientsEquatable {

    // MARK: - Equal

    @discardableResult
    public func equal(to rhs: EdgeAnchorsGroupCoefficients) -> [Element.Solution] {
        return map { $0.equal(to: rhs) }
    }

    // MARK: - LessThanOrEqual

    @discardableResult
    public func lessThanOrEqual(to rhs: EdgeAnchorsGroupCoefficients) -> [Element.Solution] {
        return map { $0.lessThanOrEqual(to: rhs) }
    }

    // MARK: - GreaterThanOrEqual

    @discardableResult
    public func greaterThanOrEqual(to rhs: EdgeAnchorsGroupCoefficients) -> [Element.Solution] {
        return map { $0.greaterThanOrEqual(to: rhs) }
    }

    // MARK: - InsetOrEqual

    @discardableResult
    public func insetOrEqual(to rhs: EdgeAnchorsGroupCoefficients) -> [Element.Solution] {
        return map { $0.insetOrEqual(to: rhs) }
    }

    // MARK: - OutsetOrEqual

    @discardableResult
    public func outsetOrEqual(to rhs: EdgeAnchorsGroupCoefficients) -> [Element.Solution] {
        return map { $0.outsetOrEqual(to: rhs) }
    }
}
