//
//  LayoutAnchorPair.swift
//  Layman
//
//  Created by Brian Strobach on 2/18/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

import UIKit

public class LayoutAnchorPair<FA: AnchorVariable, SA: AnchorVariable>: MixedLayoutModelReferencePair<LayoutAnchor<FA>, LayoutAnchor<SA>> {

    public weak var owningItem: LayoutAnchorable?
    public var keyPath: KeyPath<LayoutAnchorable, LayoutAnchorPair<FA, SA>>?

    public func relation(_ relation: LayoutRelation, _ rhs: Coefficient) -> LinearEquation {
        return LinearEquation(self, relation, rhs)
    }

    public convenience init(_ first: LayoutAnchor<FA>, _ second: LayoutAnchor<SA>, owningItem: LayoutAnchorable? = nil, keyPath: KeyPath<LayoutAnchorable, LayoutAnchorPair<FA, SA>>) {
        self.init(first, second)
        self.owningItem = owningItem
        self.keyPath = keyPath
    }

    public required init(_ first: LayoutAnchor<FA>, _ second: LayoutAnchor<SA>) {
        super.init(first, second)
    }

}

extension LayoutAnchorPair: LayoutVariableTuple, CoefficientsEquatable {}

extension LayoutAnchorPair {

    public func inset(_ first: LayoutConstant,
                      _ second: LayoutConstant) -> LayoutAnchorPairExpression<FA, SA> {
        return self.plus(.inset(first, second))
    }

    public func inset(first: LayoutConstant,
                      second: LayoutConstant) -> LayoutAnchorPairExpression<FA, SA> {
        return inset(first, second)
    }

    public func inset(_ tuple: (LayoutConstant, LayoutConstant)) -> LayoutAnchorPairExpression<FA, SA> {
        return inset(tuple.0, tuple.1)
    }

    public func outset(_ first: LayoutConstant,
                       _ second: LayoutConstant) -> LayoutAnchorPairExpression<FA, SA> {
        return self.plus(.outset(first, second))
    }

    public func outset(first: LayoutConstant,
                       second: LayoutConstant) -> LayoutAnchorPairExpression<FA, SA> {

        return outset(first, second)
    }

    public func outset(_ tuple: (LayoutConstant, LayoutConstant)) -> LayoutAnchorPairExpression<FA, SA> {
        return outset(tuple.0, tuple.1)
    }
}
