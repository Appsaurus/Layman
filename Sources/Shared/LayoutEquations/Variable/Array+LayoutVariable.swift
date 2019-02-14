//
//  Array+LayoutVariable.swift
//  Layman
//
//  Created by Brian Strobach on 1/23/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

extension Array: Variable, LayoutVariable where Element: LayoutVariable {

    public typealias RightHandExpression = [Element.RightHandExpression]

    public func plus(_ constant: LayoutConstant) -> [Element.RightHandExpression] {
        return self.map { $0.plus(constant) }
    }

    public func times(_ multiplier: LayoutMultiplier) -> [Element.RightHandExpression] {
        return self.map { $0.times(multiplier) }
    }

    public func inset(_ constant: LayoutConstant) -> [Element.RightHandExpression] {
        return self.map { $0.inset(constant) }
    }

    public func outset(_ constant: LayoutConstant) -> RightHandExpression {
        return self.map { $0.outset(constant) }
    }

    public func plus(_ relativeConstant: RelativeLayoutConstant) -> [Element.RightHandExpression] {
        return self.map { $0.plus(relativeConstant) }
    }

}

extension Array where Element: Expression {
//    public init(variable: Element.Variable, coefficients: Element.Coefficients) {
//        return self.map { $0 (multiplier) }
//    }
}
