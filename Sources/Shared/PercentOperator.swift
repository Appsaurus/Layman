//
//  PercentOperator.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 2/4/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

postfix operator %

extension LayoutConstant {
    public static postfix func % (value: LayoutConstant) -> LayoutMultiplier {
        return LayoutMultiplier(value / 100.0)
    }
}

public struct LayoutMultiplier {
        var value: LayoutConstant

        public init(integerLiteral value: Int) {
            self.init(LayoutConstant(value))
        }

        public init(floatLiteral value: Float) {
            self.init(LayoutConstant(value))
        }

        public init(_ value: LayoutConstant) {
            self.value = value
        }

    public func divided(by divisor: LayoutConstant) -> LayoutMultiplier {
        return LayoutMultiplier(value / divisor)
    }
}
