//
//  View+AspectRatioOperators.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/17/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

// MARK: View == AspectRatio
@discardableResult
public func == (lhs: View, rhs: AutoLayoutAspectRatio) -> Constraint {
    return lhs.heightAnchor == lhs.widthAnchor * rhs.ratio
}

@discardableResult
public func == (lhs: View, rhs: AutoLayoutAspectRatioConfiguration) -> Constraint {
     return lhs.heightAnchor == lhs.widthAnchor * rhs.aspectRatio.ratio ~ rhs.priority
}

//// MARK: View <= AspectRatio
//@discardableResult
//public func <= (lhs: View, rhs: AutoLayoutAspectRatio) -> Constraint {
//    return lhs.sizeAnchors <= rhs
//}
//
//@discardableResult
//public func <= (lhs: View, rhs: AutoLayoutAspectRatioConfiguration) -> Constraint {
//    return lhs.sizeAnchors <= rhs
//}
//
//// MARK: View >= AspectRatio
//@discardableResult
//public func >= (lhs: View, rhs: AutoLayoutAspectRatio) -> Constraint {
//    return lhs.sizeAnchors >= rhs
//}
//
//@discardableResult
//public func >= (lhs: View, rhs: AutoLayoutAspectRatioConfiguration) -> Constraint {
//    return lhs.sizeAnchors >= rhs
//}

public final class AutoLayoutAspectRatioConfiguration {
    public var aspectRatio: AutoLayoutAspectRatio
    public var priority: LayoutPriority

    public init(_ aspectRatio: AutoLayoutAspectRatio, _ priority: LayoutPriority = .required) {
        self.aspectRatio = aspectRatio
        self.priority = priority
    }
}

public func ~ (lhs: AutoLayoutAspectRatio, rhs: LayoutPriority) -> AutoLayoutAspectRatioConfiguration{
    return AutoLayoutAspectRatioConfiguration(lhs, rhs)
}
