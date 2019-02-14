//
//  PercentOperator.swift
//  Layman
//
//  Created by Brian Strobach on 2/4/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

postfix operator %

public postfix func % (value: LayoutConstant) -> LayoutMultiplier {
    return LayoutMultiplier(value / 100.0)
}
