//
//  Variable.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/21/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

public protocol Variable {
    associatedtype Expression
    func plus(_ constant: LayoutConstant) -> Expression
    func minus(_ constant: LayoutConstant) -> Expression
    func times(_ multiplier: LayoutMultiplier) -> Expression
    func divided(by divisor: LayoutDivisor) -> Expression
}

extension Variable {
    public func minus(_ constant: LayoutConstant) -> Expression {
        return plus(-constant)
    }
    public func divided(by divisor: LayoutDivisor) -> Expression {
        return times(1.0 / divisor)
    }

}

extension Array: Variable where Element: Variable {

    public typealias Expression = [Element.Expression]

    public func plus(_ constant: LayoutConstant) -> [Element.Expression] {
        return self.map { $0.plus(constant) }
    }

    public func times(_ multiplier: LayoutMultiplier) -> [Element.Expression] {
        return self.map { $0.times(multiplier) }
    }
}
