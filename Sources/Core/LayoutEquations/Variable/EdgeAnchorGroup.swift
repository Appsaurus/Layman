//
//  EdgeAnchorGroup.swift
//  Layman
//
//  Created by Brian Strobach on 2/18/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

public final class EdgeAnchorGroup: SidesTuple<XAxisAnchor, YAxisAnchor> {
    public var excludedEdge: LayoutSideAttribute?
    public func relation(_ relation: LayoutRelation, _ rhs: Coefficient) -> LinearEquation {
        return LinearEquation(self, relation, rhs)
    }

    public func excluding(_ edge: LayoutSideAttribute) -> EdgeAnchorGroup {
        self.excludedEdge = edge
        return self
    }
}

extension Collection where Element: EdgeAnchorGroup {
    public func excluding(_ edge: LayoutSideAttribute) -> [EdgeAnchorGroup]  {
        return map { $0.excluding(edge) }
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

    public func outset(_ padding: LayoutPadding) -> EdgeAnchorGroupExpression {
        return outset(padding.top, padding.leading, padding.bottom, padding.trailing)
    }

    public func inset(_ padding: LayoutPadding) -> EdgeAnchorGroupExpression {
        return inset(padding.top, padding.leading, padding.bottom, padding.trailing)
    }

    public func inset(horizontal: LayoutConstant, vertical: LayoutConstant) -> EdgeAnchorGroupExpression {
        return inset(horizontal, vertical)
    }

    public func outset(horizontal: LayoutConstant, vertical: LayoutConstant) -> EdgeAnchorGroupExpression {
        return outset(horizontal, vertical)
    }
}
