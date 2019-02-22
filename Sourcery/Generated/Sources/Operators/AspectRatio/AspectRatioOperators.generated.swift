// Generated using Sourcery 0.15.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

//
//  AspectRatioOperators.swift
//  Layman
//
//  Created by Brian Strobach on 1/17/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

import Foundation

// MARK: AspectRatioAnchor == AspectRatio
@discardableResult
public func .= (lhs: AspectRatioAnchor, rhs: LayoutAspectRatio) -> Constraint {
    return lhs.equal(to: rhs)
}

@discardableResult
public func .= (lhs: AspectRatioAnchor, rhs: LayoutAspectRatioConfiguration) -> Constraint {
    return lhs.equal(to: rhs)
}
