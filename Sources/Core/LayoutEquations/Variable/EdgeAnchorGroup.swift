//
//  EdgeAnchorGroup.swift
//  Layman
//
//  Created by Brian Strobach on 2/18/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

public final class EdgeAnchorGroup: SidesTuple<XAxisAnchor, YAxisAnchor> {
    public func relation(_ relation: LayoutRelation, _ rhs: Coefficient) -> LinearEquation {
        return LinearEquation(self, relation, rhs)
    }
}

extension EdgeAnchorGroup: LayoutVariableTuple, CoefficientsEquatable {}
