// Generated using Sourcery 0.15.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

//
//  AspectRatioOperators.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/17/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

import Foundation

// MARK: AspectRatioAnchor == AspectRatio
@discardableResult
public func .= (lhs: AspectRatioAnchor, rhs: LayoutAspectRatio) -> Constraint {
    return lhs .= AutoLayoutAspectRatioConfiguration(rhs)
}

@discardableResult
public func .= (lhs: AspectRatioAnchor, rhs: AutoLayoutAspectRatioConfiguration) -> Constraint {
    switch lhs {
    case .standard(let view):
        if isTestOrDebug {
            let ambiguityMessage = "You must horizontally constrain (width or leading/left + trailing/right) a view an inverse aspect ratio constraint."
            precondition(!view.hasAmbiguousWidth, ambiguityMessage)
        }
        return view.heightAnchor.equal(to: view.widthAnchor.times(rhs.aspectRatio.ratio) ~ rhs.priority)
    case .inverse(let view):
        if isTestOrDebug {
            let ambiguityMessage = "You must vertically constrain (height or top+bottom) a view an inverse aspect ratio constraint."
            precondition(!view.hasAmbiguousHeight, ambiguityMessage)
        }
        let inverseRatio = 1 / rhs.aspectRatio.ratio
        return view.widthAnchor.equal(to: view.heightAnchor.times(inverseRatio) ~ rhs.priority)
    }
}
