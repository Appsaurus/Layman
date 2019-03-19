//
//  LayoutAnchorable.swift
//  Layman
//
//  Created by Brian Strobach on 1/15/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

#if canImport(AppKit)
import AppKit
#else
import UIKit
#endif

public protocol XYAxisAnchorable {

    var leadingAnchor: XAxisAnchor { get }
    var trailingAnchor: XAxisAnchor { get }

    var leftAnchor: XAxisAnchor { get }
    var rightAnchor: XAxisAnchor { get }

    var topAnchor: YAxisAnchor { get }
    var bottomAnchor: YAxisAnchor { get }

    var horizontalEdgeAnchors: XAxisAnchorPair { get }
    var verticalEdgeAnchors: YAxisAnchorPair { get }
    var edgeAnchors: EdgeAnchorGroup { get }

    var centerXAnchor: XAxisAnchor { get }
    var centerYAnchor: YAxisAnchor { get }
    var centerAnchors: XYAxesAnchorPair { get }

    var topLeadingAnchors: XYAxesAnchorPair { get }
    var topTrailingAnchors: XYAxesAnchorPair { get }
    var bottomTrailingAnchors: XYAxesAnchorPair { get }
    var bottomLeadingAnchors: XYAxesAnchorPair { get }

    var topLeftAnchors: XYAxesAnchorPair { get }
    var topRightAnchors: XYAxesAnchorPair { get }
    var bottomRightAnchors: XYAxesAnchorPair { get }
    var bottomLeftAnchors: XYAxesAnchorPair { get }

    var layoutMarginsGuide: LayoutGuide { get }
}

public protocol BaselineAnchorable {
    var lastBaselineAnchor: YAxisAnchor { get }
    var firstBaselineAnchor: YAxisAnchor { get }
}

public protocol SizeAnchorable {
    var widthAnchor: LayoutDimension { get }
    var heightAnchor: LayoutDimension { get }
    var sizeAnchors: LayoutDimensionPair { get }
}

public protocol LayoutAnchorable: class, XYAxisAnchorable, SizeAnchorable {}

public protocol BaselineLayoutAnchorable: LayoutAnchorable, BaselineAnchorable {}

public protocol LayoutAnchorableBacked: LayoutAnchorable {
    var backingLayoutAnchorable: LayoutAnchorable { get }
}

// For chaining multiple calls with inferred receiver
extension Constraint: LayoutAnchorable {}
extension ConstraintPair: LayoutAnchorable {}
extension SideConstraints: LayoutAnchorable {}

extension LayoutAnchorable {
    public var backingView: View? {
        return self as? View ?? (self as? LayoutGuide)?.owningView ?? (self as? ViewController)?.view
    }
}
extension LayoutAnchorableBacked {
    public var leadingAnchor: XAxisAnchor {
        return backingLayoutAnchorable.leadingAnchor
    }

    public var trailingAnchor: XAxisAnchor {
        return backingLayoutAnchorable.trailingAnchor
    }

    public var leftAnchor: XAxisAnchor {
        return backingLayoutAnchorable.leftAnchor
    }

    public var rightAnchor: XAxisAnchor {
        return backingLayoutAnchorable.rightAnchor
    }

    public var topAnchor: YAxisAnchor {
        return backingLayoutAnchorable.topAnchor
    }

    public var bottomAnchor: YAxisAnchor {
        return backingLayoutAnchorable.bottomAnchor
    }

    public var widthAnchor: LayoutDimension {
        return backingLayoutAnchorable.widthAnchor
    }

    public var heightAnchor: LayoutDimension {
        return backingLayoutAnchorable.heightAnchor
    }

    public var centerXAnchor: XAxisAnchor {
        return backingLayoutAnchorable.centerXAnchor
    }

    public var centerYAnchor: YAxisAnchor {
        return backingLayoutAnchorable.centerYAnchor
    }

    public var layoutMarginsGuide: LayoutGuide {
        return backingLayoutAnchorable.layoutMarginsGuide
    }
}

public enum LayoutSideAttribute {
    case top
    case leading
    case bottom
    case trailing
}
extension XYAxisAnchorable {

    public var horizontalEdgeAnchors: XAxisAnchorPair {
        return XAxisAnchorPair(leadingAnchor.retain(keyPath: \.leadingAnchor, owningItem: self),
                               trailingAnchor.retain(keyPath: \.trailingAnchor, owningItem: self))
    }

    public var verticalEdgeAnchors: YAxisAnchorPair {
        return YAxisAnchorPair(topAnchor.retain(keyPath: \.topAnchor, owningItem: self),
                               bottomAnchor.retain(keyPath: \.bottomAnchor, owningItem: self))
    }

    public var edgeAnchors: EdgeAnchorGroup {
        return  EdgeAnchorGroup(topAnchor.retain(keyPath: \.topAnchor, owningItem: self),
                                leadingAnchor.retain(keyPath: \.leadingAnchor, owningItem: self),
                                bottomAnchor.retain(keyPath: \.bottomAnchor, owningItem: self),
                                trailingAnchor.retain(keyPath: \.trailingAnchor, owningItem: self))
    }

    public var centerAnchors: XYAxesAnchorPair {
        return XYAxesAnchorPair(centerXAnchor.retain(keyPath: \.centerXAnchor, owningItem: self),
                                centerYAnchor.retain(keyPath: \.centerYAnchor, owningItem: self))
    }

    public var topLeadingAnchors: XYAxesAnchorPair {
        return XYAxesAnchorPair(leadingAnchor.retain(keyPath: \.leadingAnchor, owningItem: self),
                                topAnchor.retain(keyPath: \.topAnchor, owningItem: self))
    }

    public var topTrailingAnchors: XYAxesAnchorPair {
        return XYAxesAnchorPair(trailingAnchor.retain(keyPath: \.trailingAnchor, owningItem: self),
                                topAnchor.retain(keyPath: \.topAnchor, owningItem: self))
    }
    public var bottomTrailingAnchors: XYAxesAnchorPair {
        return XYAxesAnchorPair(trailingAnchor.retain(keyPath: \.trailingAnchor, owningItem: self),
                                bottomAnchor.retain(keyPath: \.bottomAnchor, owningItem: self))
    }
    public var bottomLeadingAnchors: XYAxesAnchorPair {
        return XYAxesAnchorPair(leadingAnchor.retain(keyPath: \.leadingAnchor, owningItem: self),
                                bottomAnchor.retain(keyPath: \.bottomAnchor, owningItem: self))
    }

    public var topLeftAnchors: XYAxesAnchorPair {
        return XYAxesAnchorPair(leftAnchor.retain(keyPath: \.leftAnchor, owningItem: self),
                                topAnchor.retain(keyPath: \.topAnchor, owningItem: self))
    }
    public var topRightAnchors: XYAxesAnchorPair {
        return XYAxesAnchorPair(rightAnchor.retain(keyPath: \.rightAnchor, owningItem: self),
                                topAnchor.retain(keyPath: \.topAnchor, owningItem: self))
    }
    public var bottomRightAnchors: XYAxesAnchorPair {
        return XYAxesAnchorPair(rightAnchor.retain(keyPath: \.rightAnchor, owningItem: self),
                                bottomAnchor.retain(keyPath: \.bottomAnchor, owningItem: self))
    }
    public var bottomLeftAnchors: XYAxesAnchorPair {
        return XYAxesAnchorPair(leftAnchor.retain(keyPath: \.leftAnchor, owningItem: self),
                                bottomAnchor.retain(keyPath: \.bottomAnchor, owningItem: self))
    }
}

extension SizeAnchorable {
    public var sizeAnchors: LayoutDimensionPair {
        return LayoutDimensionPair(widthAnchor,
                                   heightAnchor,
                                   owningItem: self as? LayoutAnchorable,
                                   keyPath: \LayoutAnchorable.sizeAnchors)
    }
}

extension View: BaselineLayoutAnchorable {
    public var view: View {
        return self
    }
}

extension LayoutGuide: LayoutAnchorable {

    public var view: View {
        return self.owningView!
    }

    public var layoutMarginsGuide: LayoutGuide {
        return self
    }
}

extension ViewController: BaselineLayoutAnchorable, LayoutAnchorableBacked {

    public var backingLayoutAnchorable: LayoutAnchorable {
        guard #available(iOS 11.0, *) else {
            return view
        }
        return view.safeAreaLayoutGuide
    }

    public var topAnchor: YAxisAnchor {
        guard #available(iOS 11.0, *) else {
            return topLayoutGuide.bottomAnchor
        }
        return backingLayoutAnchorable.topAnchor
    }

    public var bottomAnchor: YAxisAnchor {
        guard #available(iOS 11.0, *) else {
            return bottomLayoutGuide.topAnchor
        }
        return backingLayoutAnchorable.bottomAnchor
    }

    public var lastBaselineAnchor: YAxisAnchor {
        return view.lastBaselineAnchor
    }

    public var firstBaselineAnchor: YAxisAnchor {
        return view.firstBaselineAnchor
    }
}

extension Collection where Element: XYAxisAnchorable {
    public var leadingAnchor: XAxisAnchors { return map { $0.leadingAnchor.retain(keyPath: \.leadingAnchor, owningItem: $0) } }
    public var trailingAnchor: XAxisAnchors { return map { $0.trailingAnchor.retain(keyPath: \.trailingAnchor, owningItem: $0) } }

    public var leftAnchor: XAxisAnchors { return map { $0.leftAnchor.retain(keyPath: \.leftAnchor, owningItem: $0) } }
    public var rightAnchor: XAxisAnchors { return map { $0.rightAnchor.retain(keyPath: \.rightAnchor, owningItem: $0) } }

    public var topAnchor: YAxisAnchors { return map { $0.topAnchor.retain(keyPath: \.topAnchor, owningItem: $0) } }
    public var bottomAnchor: YAxisAnchors { return map { $0.bottomAnchor.retain(keyPath: \.bottomAnchor, owningItem: $0) } }

    public var horizontalEdgeAnchors: XAxisAnchorPairs { return map { $0.horizontalEdgeAnchors } }
    public var verticalEdgeAnchors: YAxisAnchorPairs { return map { $0.verticalEdgeAnchors } }
    public var edgeAnchors: EdgeAnchorGroups { return map { $0.edgeAnchors } }

    public var centerXAnchor: XAxisAnchors { return map { $0.centerXAnchor.retain(keyPath: \.centerXAnchor, owningItem: $0) } }
    public var centerYAnchor: YAxisAnchors { return map { $0.centerYAnchor.retain(keyPath: \.centerYAnchor, owningItem: $0) } }
    public var centerAnchors: XYAxesAnchorPairs { return map { $0.centerAnchors } }

    public var topLeadingAnchors: XYAxesAnchorPairs { return map { $0.topLeadingAnchors} }
    public var topTrailingAnchors: XYAxesAnchorPairs { return map { $0.topTrailingAnchors} }
    public var bottomTrailingAnchors: XYAxesAnchorPairs { return map { $0.bottomTrailingAnchors} }
    public var bottomLeadingAnchors: XYAxesAnchorPairs { return map { $0.bottomLeadingAnchors} }

    public var topLeftAnchors: XYAxesAnchorPairs { return map { $0.topLeftAnchors } }
    public var topRightAnchors: XYAxesAnchorPairs { return map { $0.topRightAnchors } }
    public var bottomRightAnchors: XYAxesAnchorPairs { return map { $0.bottomRightAnchors } }
    public var bottomLeftAnchors: XYAxesAnchorPairs { return map { $0.bottomLeftAnchors } }

    public var layoutMarginsGuide: [LayoutGuide] { return map { $0.layoutMarginsGuide } }
}

extension Collection where Element: SizeAnchorable {
    public var widthAnchor: LayoutDimensions { return map { $0.widthAnchor } }
    public var heightAnchor: LayoutDimensions { return map { $0.heightAnchor } }
    public var sizeAnchors: LayoutDimensionPairs { return map { $0.sizeAnchors } }
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
    public var aspectRatioAnchor: AspectRatioAnchors { return map { $0.aspectRatioAnchor } }
    public var aspectRatioInverseAnchor: AspectRatioAnchors { return map { $0.aspectRatioInverseAnchor } }
}
