// Generated using Sourcery 0.15.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

//
//  Layman
//
//  Created by Brian Strobach on 1/22/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

public protocol LayoutSizeEquatable: LinearEquationTyped {
    func relation(_ relation: LayoutRelation, _ rhs: LayoutSize) -> LinearEquation
}
// MARK: Anchor <=> LayoutSize
extension LayoutSizeEquatable {

    // MARK: - Equal

    @discardableResult
    public func equal(to rhs: LayoutSize) -> Solution {
        return relation(.equal, rhs).solution
    }

    // MARK: - LessThanOrEqual

    @discardableResult
    public func lessThanOrEqual(to rhs: LayoutSize) -> Solution {
        return relation(.lessThanOrEqual, rhs).solution
    }

    // MARK: - GreaterThanOrEqual

    @discardableResult
    public func greaterThanOrEqual(to rhs: LayoutSize) -> Solution {
        return relation(.greaterThanOrEqual, rhs).solution
    }

    // MARK: - InsetOrEqual

    @discardableResult
    public func insetOrEqual(to rhs: LayoutSize) -> Solution {
        return relation(.insetOrEqual, rhs).solution
    }

    // MARK: - OutsetOrEqual

    @discardableResult
    public func outsetOrEqual(to rhs: LayoutSize) -> Solution {
        return relation(.outsetOrEqual, rhs).solution
    }
}

// MARK: Collection <=> LayoutSize
extension Collection where Element: LayoutSizeEquatable {

    // MARK: - Equal

    @discardableResult
    public func equal(to rhs: LayoutSize) -> [Element.Solution] {
        return map { $0.equal(to: rhs) }
    }

    // MARK: - LessThanOrEqual

    @discardableResult
    public func lessThanOrEqual(to rhs: LayoutSize) -> [Element.Solution] {
        return map { $0.lessThanOrEqual(to: rhs) }
    }

    // MARK: - GreaterThanOrEqual

    @discardableResult
    public func greaterThanOrEqual(to rhs: LayoutSize) -> [Element.Solution] {
        return map { $0.greaterThanOrEqual(to: rhs) }
    }

    // MARK: - InsetOrEqual

    @discardableResult
    public func insetOrEqual(to rhs: LayoutSize) -> [Element.Solution] {
        return map { $0.insetOrEqual(to: rhs) }
    }

    // MARK: - OutsetOrEqual

    @discardableResult
    public func outsetOrEqual(to rhs: LayoutSize) -> [Element.Solution] {
        return map { $0.outsetOrEqual(to: rhs) }
    }
}
