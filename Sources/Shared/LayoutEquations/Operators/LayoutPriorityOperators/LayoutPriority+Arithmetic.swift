//
//  LayoutPriority+Arithmetic.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/21/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

extension LayoutPriority {
    public func plus(_ rhs: LayoutConstant) -> LayoutPriority {
        return LayoutPriority(rawValue: rawValue + Float(rhs))
    }

    public func minus(_ rhs: LayoutConstant) -> LayoutPriority {
        return plus(-rhs)
    }
}
