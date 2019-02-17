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

    @discardableResult
    public func equal(to rhs: [LayoutSize]) -> [Solution] {
        return rhs.map { relation(.equal, $0).solution }
    }

    // MARK: - LessThanOrEqual

    @discardableResult
    public func lessThanOrEqual(to rhs: LayoutSize) -> Solution {
        return relation(.lessThanOrEqual, rhs).solution
    }

    @discardableResult
    public func lessThanOrEqual(to rhs: [LayoutSize]) -> [Solution] {
        return rhs.map { relation(.lessThanOrEqual, $0).solution }
    }

    // MARK: - GreaterThanOrEqual

    @discardableResult
    public func greaterThanOrEqual(to rhs: LayoutSize) -> Solution {
        return relation(.greaterThanOrEqual, rhs).solution
    }

    @discardableResult
    public func greaterThanOrEqual(to rhs: [LayoutSize]) -> [Solution] {
        return rhs.map { relation(.greaterThanOrEqual, $0).solution }
    }
}

// MARK: Collection <=> LayoutSize

extension Collection where Element: LayoutSizeEquatable {
    // MARK: - Equal
    // MARK: Collection == Expression
    @discardableResult
    public func equal(to rhs: LayoutSize) -> [Element.Solution] {
        return map { $0.equal(to: rhs) }
    }

    // MARK: Collection == Expression Array
    @discardableResult
    public func equal(to rhs: [LayoutSize]) -> [[Element.Solution]] {
        return map { $0.equal(to: rhs) }
    }

    // MARK: - LessThanOrEqual

    // MARK: Collection <= Expression
    @discardableResult
    public func lessThanOrEqual(to rhs: LayoutSize) -> [Element.Solution] {
        return map { $0.lessThanOrEqual(to: rhs) }
    }

    // MARK: Collection <= Expression Array
    @discardableResult
    public func lessThanOrEqual(to rhs: [LayoutSize]) -> [[Element.Solution]] {
        return map { $0.lessThanOrEqual(to: rhs) }
    }

    // MARK: - GreaterThanOrEqual

    // MARK: Collection >= Expression
    @discardableResult
    public func greaterThanOrEqual(to rhs: LayoutSize) -> [Element.Solution] {
        return map { $0.greaterThanOrEqual(to: rhs) }
    }

    // MARK: Collection >= Expression Array
    @discardableResult
    public func greaterThanOrEqual(to rhs: [LayoutSize]) -> [[Element.Solution]] {
        return map { $0.greaterThanOrEqual(to: rhs) }
    }
}
