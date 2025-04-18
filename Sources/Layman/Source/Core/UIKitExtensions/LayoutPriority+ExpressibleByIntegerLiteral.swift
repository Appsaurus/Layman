//
//  LayoutPriority+ExpressibleByIntegerLiteral.swift
//  Layman
//
//  Created by Brian Strobach on 2/6/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

extension LayoutPriority: @retroactive ExpressibleByIntegerLiteral {
    public typealias IntegerLiteralType = Int
    public init(integerLiteral value: Int) {
        self.init(Float(value))
    }
}
