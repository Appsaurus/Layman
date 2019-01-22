//
//  EdgeAnchorGroup+ConstantArithmetic.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/19/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

// MARK: EdgeAnchors Constant Arithmetic
extension EdgeAnchorGroup {

    // MARK: UIEdgeInset Constant
    @discardableResult
    public func plus(inset: LayoutInset) -> EdgeAnchorGroupExpression {
        let configuration = EdgeAnchorsConfiguration(
            .constant(inset.top),
            .constant(inset.left),
            .constant(inset.bottom),
            .constant(inset.right)
        )
        return EdgeAnchorGroupExpression(self).configured(with: configuration)
    }

    @discardableResult
    public func minus(inset: LayoutInset) -> EdgeAnchorGroupExpression {
        let negatedInset = LayoutInset(top: -inset.top,
                                       left: -inset.left,
                                       bottom: -inset.bottom,
                                       right: -inset.right)
        return plus(inset: negatedInset)
    }

}

extension EdgeAnchorGroup: Variable {

    public typealias RightHandExpression = EdgeAnchorGroupExpression

    @discardableResult
    public func plus(_ constant: LayoutConstant) -> EdgeAnchorGroupExpression {
        return plus(inset: LayoutInset(padding: constant))
    }

    @discardableResult
    public func times(_ multiplier: LayoutConstant) -> EdgeAnchorGroupExpression {
        return EdgeAnchorGroupExpression(anchor: self, configuration: EdgeAnchorsConfiguration(.multiplier(multiplier)))
    }
}
