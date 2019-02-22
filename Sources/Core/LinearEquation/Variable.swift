//
//  Variable.swift
//  Layman
//
//  Created by Brian Strobach on 2/7/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

public protocol Variable {
    associatedtype RightHandExpression
    func plus(_ constant: LayoutConstant) -> RightHandExpression
    func minus(_ constant: LayoutConstant) -> RightHandExpression
    func times(_ multiplier: LayoutMultiplier) -> RightHandExpression
    func divided(by divisor: LayoutDivisor) -> RightHandExpression
}
