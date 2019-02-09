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
        return EdgeAnchorGroupExpression(self).plus(inset: inset)
    }

    @discardableResult
    public func minus(inset: LayoutInset) -> EdgeAnchorGroupExpression {
        return EdgeAnchorGroupExpression(self).minus(inset: inset)
    }

}
extension EdgeAnchorGroupExpression {

    // MARK: UIEdgeInset Constant
    @discardableResult
    public func plus(inset: LayoutInset) -> EdgeAnchorGroupExpression {
        let coefficients = EdgeAnchorsGroupCoefficients(
            .constant(inset.top),
            .constant(inset.left),
            .constant(inset.bottom),
            .constant(inset.right)
        )
        return self.with(coefficients: coefficients)
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
