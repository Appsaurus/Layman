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

extension EdgeAnchorGroup {
    public func outset(_ top: LayoutConstant,
                       _ leading: LayoutConstant,
                       _ bottom: LayoutConstant,
                       _ trailing: LayoutConstant) -> EdgeAnchorGroupExpression {
        return plus(.outset(top, leading, bottom, trailing))
    }

    public func inset(_ top: LayoutConstant,
                      _ leading: LayoutConstant,
                      _ bottom: LayoutConstant,
                      _ trailing: LayoutConstant) -> EdgeAnchorGroupExpression {
        return plus(.inset(top, leading, bottom, trailing))
    }

    public func outset(top: LayoutConstant,
                       leading: LayoutConstant,
                       bottom: LayoutConstant,
                       trailing: LayoutConstant) -> EdgeAnchorGroupExpression {
        return outset(top, leading, bottom, trailing)
    }

    public func inset(top: LayoutConstant,
                      leading: LayoutConstant,
                      bottom: LayoutConstant,
                      trailing: LayoutConstant) -> EdgeAnchorGroupExpression {
        return inset(top, leading, bottom, trailing)
    }

//    public func inset(_ vertical: LayoutConstant, _ horizontal: LayoutConstant) -> EdgeAnchorGroupExpression {
//        return inset(vertical, horizontal, vertical, horizontal)
//    }
//
//    public func outset(_ vertical: LayoutConstant, _ horizontal: LayoutConstant) -> EdgeAnchorGroupExpression {
//        return outset(vertical, horizontal, vertical, horizontal)
//    }
//
    public func inset(vertical: LayoutConstant, horizontal: LayoutConstant) -> EdgeAnchorGroupExpression {
        return inset(vertical, horizontal)
    }

    public func outset(vertical: LayoutConstant, horizontal: LayoutConstant) -> EdgeAnchorGroupExpression {
        return outset(vertical, horizontal)
    }
}
