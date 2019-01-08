//
//  LayoutPriority+Sugar.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/8/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

import Swiftest

extension LayoutPriority: CGFloatConvertible, CGFloatInitializable {
    public init(_ cgFloat: CGFloat) {
        self.init(cgFloat.float)
    }

    public var cgFloat: CGFloat {
        return rawValue.cgFloat
    }
}

extension LayoutPriority: ExpressibleByIntegerLiteral{
    public typealias IntegerLiteralType = Int
    public init(integerLiteral value: Int) {
        self.init(value.float)
    }
}

//MARK: Shorthand aliases

extension LayoutPriority{
    /// Shorthand syntax for UILayoutPriority.defaultHigh
    public static var high: UILayoutPriority{
        return .defaultHigh
    }

    /// Shorthand syntax for UILayoutPriority.defaultLow
    public static var low: UILayoutPriority{
        return .defaultLow
    }

    /// Shorthand syntax for UILayoutPriority.fittingSizeLevel
    public static var fittingSize: UILayoutPriority{
        return .fittingSizeLevel
    }
}
