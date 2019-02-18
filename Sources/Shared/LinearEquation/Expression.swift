//
//  Expression.swift
//  Layman
//
//  Created by Brian Strobach on 2/7/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//


public protocol Expression: CoefficientsReferencing {

    associatedtype Variable
    var variable: Variable { get set }

    init(variable: Variable)
}


extension Expression where Coefficients: CoefficientModel {
    public func set(priority: LayoutPriority) {
        self.coefficients.priority = priority
    }
}
