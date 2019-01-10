//
//  LayoutPriorityArithmeticOperators.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/4/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

public func == (lhs: LayoutPriority, rhs: LayoutPriority) -> Bool {
    return lhs.rawValue == rhs.rawValue
}

public func + (lhs: LayoutPriority, rhs: LayoutConstant) -> LayoutPriority {
    return LayoutPriority(rawValue: lhs.rawValue + rhs.float)
}

public func + (lhs: LayoutConstant, rhs: LayoutPriority) -> LayoutPriority {
    return LayoutPriority(rawValue: lhs.float + rhs.rawValue)
}

public func - (lhs: LayoutPriority, rhs: LayoutConstant) -> LayoutPriority {
    return LayoutPriority(rawValue: lhs.rawValue - rhs.float)
}

public func - (lhs: LayoutConstant, rhs: LayoutPriority) -> LayoutPriority {
    return LayoutPriority(rawValue: lhs.float - rhs.rawValue)
}
