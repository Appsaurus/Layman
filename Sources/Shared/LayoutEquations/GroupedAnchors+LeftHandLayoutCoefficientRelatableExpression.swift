//
//  CoefficientGroup.swift
//  Layman
//
//  Created by Brian Strobach on 2/5/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

extension LayoutCoefficient {
    internal func copy() -> LayoutCoefficient {
        let config = LayoutCoefficient()
        config.active = active
        config.constant = constant
        config.multiplier = multiplier
        config.priority = priority
        return config
    }
}
