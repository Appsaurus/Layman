//
//  LayoutAnchorPair.swift
//  Layman
//
//  Created by Brian Strobach on 2/18/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

public class LayoutAnchorPair<FA: AnchorVariable, SA: AnchorVariable>: MixedLayoutModelReferencePair<LayoutAnchor<FA>, LayoutAnchor<SA>> {

    public func relation(_ relation: LayoutRelation, _ rhs: Coefficient) -> LinearEquation {
        return LinearEquation(self, relation, rhs)
    }
}

extension LayoutAnchorPair: LayoutVariableTuple, CoefficientsEquatable {}
