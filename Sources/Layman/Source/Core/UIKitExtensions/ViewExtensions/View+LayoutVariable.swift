//
//  View+LayoutVariable.swift
//  Layman
//
//  Created by Brian Strobach on 2/12/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

extension View: LayoutVariable {

    public typealias RightHandExpression = LayoutDimensionPairExpression

    public func plus(_ constant: LayoutConstant) -> RightHandExpression {
        return RightHandExpression(variable: self.size).with(constant: constant)
    }

    public func times(_ multiplier: LayoutMultiplier) -> RightHandExpression {
        return RightHandExpression(variable: self.size).times(multiplier)
    }

    public func priority(_ priority: LayoutPriority) -> RightHandExpression {
        return RightHandExpression(variable: self.size).priority(priority)
    }

    public func plus(_ relativeConstant: RelativeLayoutConstant) -> LayoutDimensionPairExpression {
        return RightHandExpression(variable: self.size).with(relativeConstant: relativeConstant)
    }
}
