//
//  LayoutAnchorPair.swift
//  Layman
//
//  Created by Brian Strobach on 2/18/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

public class LayoutAnchorPair<FA: AnchorVariable, SA: AnchorVariable>: MixedLayoutModelReferencePair<LayoutAnchor<FA>, LayoutAnchor<SA>> {

    public weak var owningItem: LayoutAnchorable?
    public var keyPath: KeyPath<LayoutAnchorable, LayoutAnchorPair<FA, SA>>?

    public func relation(_ relation: LayoutRelation, _ rhs: Coefficient) -> LinearEquation {
        return LinearEquation(self, relation, rhs)
    }

    public convenience init(_ first: F, _ second: S, owningItem: LayoutAnchorable? = nil, keyPath: KeyPath<LayoutAnchorable, LayoutAnchorPair<FA, SA>>) {
        self.init(first, second)
        self.owningItem = owningItem
        self.keyPath = keyPath
    }

    public required init(_ first: F, _ second: S) {
        super.init(first, second)
    }

}

extension LayoutAnchorPair: LayoutVariableTuple, CoefficientsEquatable {}

extension LayoutAnchorPair {

    public func outset(_ horizontal: LayoutConstant,
                       _ vertical: LayoutConstant) -> LayoutAnchorPairExpression<FA, SA> {
        return self.plus(.outset(horizontal, vertical))
    }

    public func inset(_ horizontal: LayoutConstant,
                      _ vertical: LayoutConstant) -> LayoutAnchorPairExpression<FA, SA> {
        return self.plus(.inset(horizontal, vertical))
    }

    public func outset(horizontal: LayoutConstant,
                       vertical: LayoutConstant) -> LayoutAnchorPairExpression<FA, SA> {

        return outset(horizontal, vertical)
    }

    public func inset(horizontal: LayoutConstant,
                      vertical: LayoutConstant) -> LayoutAnchorPairExpression<FA, SA> {
        return inset(horizontal, vertical)
    }
}
