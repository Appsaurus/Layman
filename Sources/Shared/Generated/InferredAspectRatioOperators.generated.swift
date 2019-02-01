// Generated using Sourcery 0.15.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

//  sourcery:file:InferredAspectRatioOperators
//
//  InferredAspectRatioOperators.swift
//  UILayoutKit
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
public func .= (lhs: View, rhs: AutoLayoutAspectRatioConfiguration) -> Constraint {
    return lhs.aspectRatioAnchor .= rhs
}
