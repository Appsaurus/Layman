//
//  View+AspectRatioOperators.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/17/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

// MARK: AspectRatioAnchor == AspectRatio
@discardableResult
public func == (lhs: AspectRatioAnchor, rhs: LayoutAspectRatio) -> Constraint {
    return lhs == AutoLayoutAspectRatioConfiguration(rhs)
}

@discardableResult
public func == (lhs: AspectRatioAnchor, rhs: AutoLayoutAspectRatioConfiguration) -> Constraint {
    switch lhs {
    case .standard(let view):
        precondition(!view.hasAmbiguousWidth, "You must horizontally constrain (width or leading/left + trailing/right) a view an inverse aspect ratio constraint.")
        return view.heightAnchor == view.widthAnchor * rhs.aspectRatio.ratio ~ rhs.priority
    case .inverse(let view):
        precondition(!view.hasAmbiguousHeight, "You must vertically constrain (height or top+bottom) a view an inverse aspect ratio constraint.")
        let inverseRatio = 1 / rhs.aspectRatio.ratio
        return view.widthAnchor == view.heightAnchor * inverseRatio ~ rhs.priority
    }
}

// MARK: View == AspectRatio
@discardableResult
public func == (lhs: View, rhs: LayoutAspectRatio) -> Constraint {
    return lhs.aspectRatioAnchor == rhs
}

@discardableResult
public func == (lhs: View, rhs: AutoLayoutAspectRatioConfiguration) -> Constraint {
    return lhs.aspectRatioAnchor == rhs
}

public final class AutoLayoutAspectRatioConfiguration {
    public var aspectRatio: LayoutAspectRatio
    public var priority: LayoutPriority

    public init(_ aspectRatio: LayoutAspectRatio, _ priority: LayoutPriority = .required) {
        self.aspectRatio = aspectRatio
        self.priority = priority
    }
}

public func ~ (lhs: LayoutAspectRatio, rhs: LayoutPriority) -> AutoLayoutAspectRatioConfiguration {
    return AutoLayoutAspectRatioConfiguration(lhs, rhs)
}

public enum AspectRatioAnchor {
    case standard(View)
    case inverse(View)
}

extension View {
    public var aspectRatioAnchor: AspectRatioAnchor {
        return .standard(self)
    }

    public var aspectRatioInverseAnchor: AspectRatioAnchor {
        return .inverse(self)
    }
}

extension Collection where Element: View {
    public var aspectRatioAnchor: [AspectRatioAnchor] {
        return map {.standard($0)}
    }

    public var aspectRatioInverseAnchor: [AspectRatioAnchor] {
        return map {.inverse($0)}
    }
}
