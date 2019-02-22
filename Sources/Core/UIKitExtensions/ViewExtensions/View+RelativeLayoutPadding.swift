//
//  View+RelativeLayoutPadding.swift
//  Layman
//
//  Created by Brian Strobach on 2/14/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

extension View {

    @discardableResult
    public func plus(_ relativeLayoutConstant: RelativeLayoutConstant) -> EdgeAnchorGroupExpression {
       return self.edgeAnchors.plus(relativeLayoutConstant)
    }

    @discardableResult
    public func plus(_ relativeLayoutPadding: RelativeLayoutPadding) -> EdgeAnchorGroupExpression {
       return self.edgeAnchors.plus(relativeLayoutPadding)
    }

    @discardableResult
    public func inset(_ padding: LayoutPadding) -> EdgeAnchorGroupExpression {
        return self.edgeAnchors.plus(padding.inset)

    }

    @discardableResult
    public func outset(_ padding: LayoutPadding) -> EdgeAnchorGroupExpression {
        return self.edgeAnchors.plus(padding.outset)
    }
}
