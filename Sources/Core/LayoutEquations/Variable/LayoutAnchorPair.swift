//
//  LayoutAnchorPair.swift
//  Layman
//
//  Created by Brian Strobach on 2/18/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

public class LayoutAnchorPair<FA: AnchorVariable, SA: AnchorVariable>: MixedLayoutModelReferencePair<LayoutAnchor<FA>, LayoutAnchor<SA>> {

    public weak var item: LayoutAnchorable?
    public var keyPath: KeyPath<LayoutAnchorable, LayoutAnchorPair<FA, SA>>?

    public func relation(_ relation: LayoutRelation, _ rhs: Coefficient) -> LinearEquation {
        return LinearEquation(self, relation, rhs)
    }

    public convenience init(_ first: F, _ second: S, item: LayoutAnchorable? = nil, keyPath: KeyPath<LayoutAnchorable, LayoutAnchorPair<FA, SA>>) {
        self.init(first, second)
        self.item = item
        self.keyPath = keyPath
    }

    public required init(_ first: F, _ second: S) {
        super.init(first, second)
    }
}

extension LayoutAnchorPair: LayoutVariableTuple, CoefficientsEquatable {}
