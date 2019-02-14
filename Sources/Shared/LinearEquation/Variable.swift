//
//  Variable.swift
//  Layman
//
//  Created by Brian Strobach on 2/7/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

public protocol Variable {
    associatedtype RightHandExpression
    associatedtype Constant
    associatedtype Multiplier
    associatedtype Divisor
    func plus(_ constant: Constant) -> RightHandExpression
    func minus(_ constant: Constant) -> RightHandExpression
    func times(_ multiplier: Multiplier) -> RightHandExpression
    func divided(by divisor: Divisor) -> RightHandExpression
}
