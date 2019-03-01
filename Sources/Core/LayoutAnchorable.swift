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

public protocol LayoutAnchorable: XYAxisAnchorable, SizeAnchorable {}

public protocol BaselineLayoutAnchorable: LayoutAnchorable, BaselineAnchorable {}

public protocol LayoutAnchorableBacked: LayoutAnchorable {
    var backingLayoutAnchorable: LayoutAnchorable { get }
}

// For chaining multiple calls with inferred receiver
extension Constraint: LayoutAnchorable {}
extension ConstraintPair: LayoutAnchorable {}
extension SideConstraints: LayoutAnchorable {}

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
        return XAxisAnchorPair(leadingAnchor, trailingAnchor)
    }

    public var verticalEdgeAnchors: YAxisAnchorPair {
        return YAxisAnchorPair(topAnchor, bottomAnchor)
    }

    public var edgeAnchors: EdgeAnchorGroup {
        return  EdgeAnchorGroup(topAnchor,
                                leadingAnchor,
                                bottomAnchor,
                                trailingAnchor)
    }

    public var centerAnchors: XYAxesAnchorPair {
        return XYAxesAnchorPair(centerXAnchor, centerYAnchor)
    }

    public var topLeadingAnchors: XYAxesAnchorPair { return XYAxesAnchorPair(leadingAnchor, topAnchor) }
    public var topTrailingAnchors: XYAxesAnchorPair { return XYAxesAnchorPair(trailingAnchor, topAnchor) }
    public var bottomTrailingAnchors: XYAxesAnchorPair { return XYAxesAnchorPair(trailingAnchor, bottomAnchor) }
    public var bottomLeadingAnchors: XYAxesAnchorPair { return XYAxesAnchorPair(leadingAnchor, bottomAnchor) }

    public var topLeftAnchors: XYAxesAnchorPair { return XYAxesAnchorPair(leftAnchor, topAnchor) }
    public var topRightAnchors: XYAxesAnchorPair { return XYAxesAnchorPair(rightAnchor, topAnchor) }
    public var bottomRightAnchors: XYAxesAnchorPair { return XYAxesAnchorPair(rightAnchor, bottomAnchor) }
    public var bottomLeftAnchors: XYAxesAnchorPair { return XYAxesAnchorPair(leftAnchor, bottomAnchor) }

    public func edgesExcluding(_ edge: LayoutSideAttribute) -> EdgeAnchorGroupExpression {
        let edgeExpression = EdgeAnchorGroupExpression(variable: edgeAnchors)
        switch edge {
        case .top:
            edgeExpression.topExpression.coefficients.active = false
        case .leading:
            edgeExpression.leadingExpression.coefficients.active = false
        case .trailing:
            edgeExpression.trailingExpression.coefficients.active = false
        case .bottom:
            edgeExpression.bottomExpression.coefficients.active = false
        }
        return edgeExpression
    }
}

extension SizeAnchorable {
    public var sizeAnchors: LayoutDimensionPair {
        return LayoutDimensionPair(widthAnchor, heightAnchor)
    }
}

extension View: BaselineLayoutAnchorable {}

extension LayoutGuide: LayoutAnchorable {
    
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
    public var leadingAnchor: XAxisAnchors { return map {$0.leadingAnchor } }
    public var trailingAnchor: XAxisAnchors { return map {$0.trailingAnchor } }

    public var leftAnchor: XAxisAnchors { return map {$0.leftAnchor } }
    public var rightAnchor: XAxisAnchors { return map {$0.rightAnchor } }

    public var topAnchor: [YAxisAnchor] { return map {$0.topAnchor } }
    public var bottomAnchor: [YAxisAnchor] { return map {$0.bottomAnchor } }

    public var horizontalEdgeAnchors: XAxisAnchorPairs { return map { $0.horizontalEdgeAnchors } }
    public var verticalEdgeAnchors: YAxisAnchorPairs { return map { $0.verticalEdgeAnchors } }
    public var edgeAnchors: EdgeAnchorGroups { return map { $0.edgeAnchors } }

    public var centerXAnchor: XAxisAnchors { return map { $0.centerXAnchor } }
    public var centerYAnchor: YAxisAnchors { return map { $0.centerYAnchor } }
    public var centerAnchors: XYAxesAnchorPairs { return map { $0.centerAnchors } }

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
