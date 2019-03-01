//
//  View+AspectRatioAnchors.swift
//  Layman
//
//  Created by Brian Strobach on 1/17/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

public enum AspectRatioAnchor {
    case standard(View)
    case inverse(View)

    public func equal(to rhs: LayoutAspectRatio) -> Constraint {
        return equal(to: LayoutAspectRatioConfiguration(rhs))
    }

    public func equal(to rhs: LayoutAspectRatioConfiguration) -> Constraint {
        switch self {
        case .standard(let view):
            if isTestOrDebug {
                let ambiguityMessage = "You must horizontally constrain (width or leading/left + trailing/right) a view before you set an aspect ratio constraint."
                precondition(!view.hasAmbiguousWidth, ambiguityMessage)
            }
            return view.heightAnchor.equal(to: view.widthAnchor.times(rhs.aspectRatio.ratio) ~ rhs.priority)
        case .inverse(let view):
            if isTestOrDebug {
                let ambiguityMessage = "You must vertically constrain (height or top+bottom) a view before you set an inverse aspect ratio constraint."
                precondition(!view.hasAmbiguousHeight, ambiguityMessage)
            }
            let inverseRatio = 1 / rhs.aspectRatio.ratio
            return view.widthAnchor.equal(to: view.heightAnchor.times(inverseRatio) ~ rhs.priority)
        }
    }
}
