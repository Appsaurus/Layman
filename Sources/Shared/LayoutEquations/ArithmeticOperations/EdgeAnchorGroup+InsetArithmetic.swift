//
//  EdgeAnchorGroup+ConstantArithmetic.swift
//  Layman
//
//  Created by Brian Strobach on 1/19/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

// MARK: EdgeAnchors Constant Arithmetic
extension EdgeAnchorGroup {

    // MARK: UIEdgeInset Constant
    @discardableResult
    public func plus(_ relativeLayoutPadding: RelativeLayoutPadding) -> EdgeAnchorGroupExpression {
        return EdgeAnchorGroupExpression(self).plus(relativeLayoutPadding)
    }

}

extension EdgeAnchorGroupExpression {

    @discardableResult
    public func plus(_ relativeLayoutConstant: RelativeLayoutConstant) -> Self {
        return plus(LayoutPadding(relativeLayoutConstant.constant).inset)
    }

    @discardableResult
    public func plus(_ relativeLayoutPadding: RelativeLayoutPadding) -> Self {
        coefficients.top.set(constant: relativeLayoutPadding.constant.top)
        coefficients.top.constantRelativity = relativeLayoutPadding.relativity
        coefficients.leading.set(constant: relativeLayoutPadding.constant.leading)
        coefficients.leading.constantRelativity = relativeLayoutPadding.relativity
        coefficients.bottom.set(constant: relativeLayoutPadding.constant.bottom)
        coefficients.bottom.constantRelativity = relativeLayoutPadding.relativity
        coefficients.trailing.set(constant: relativeLayoutPadding.constant.trailing)
        coefficients.trailing.constantRelativity = relativeLayoutPadding.relativity
        return self
    }

    @discardableResult
    public func inset(_ padding: LayoutPadding) -> Self {
        return self.plus(padding.inset)

    }

    @discardableResult
    public func outset(_ padding: LayoutPadding) -> Self {
        return self.plus(padding.outset)
    }
}
