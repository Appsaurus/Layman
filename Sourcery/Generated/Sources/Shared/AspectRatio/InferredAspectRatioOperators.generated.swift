// Generated using Sourcery 0.15.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

//
//  InferredAspectRatioOperators.swift
//  Layman
//
//  Created by Brian Strobach on 1/17/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

// MARK: View == AspectRatio
@discardableResult
public func .= (lhs: View, rhs: LayoutAspectRatio) -> Constraint {
    return lhs.aspectRatioAnchor .= rhs
}

@discardableResult
public func .= (lhs: View, rhs: LayoutAspectRatioConfiguration) -> Constraint {
    return lhs.aspectRatioAnchor .= rhs
}
