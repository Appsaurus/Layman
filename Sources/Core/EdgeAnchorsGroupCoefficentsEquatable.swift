//
//  EdgeAnchorsGroupCoefficentsEquatable.swift
//  Layman
//
//  Created by Brian Strobach on 3/5/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

extension EdgeAnchorGroup: EdgeAnchorsGroupCoefficientsEquatable {
    public func relation(_ relation: LayoutRelation, _ rhs: LayoutPadding) -> EdgeAnchorGroupEquation {
        return EdgeAnchorGroupEquation(self, relation, rhs)
    }

    public func relation(_ relation: LayoutRelation, _ rhs: RelativeLayoutPadding) -> EdgeAnchorGroupEquation {
         return EdgeAnchorGroupEquation(self, relation, rhs)
    }
}
