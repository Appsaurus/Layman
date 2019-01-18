//
//  LayoutAnchorable.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/15/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

#if canImport(Cocoa)
import Cocoa
#else
import UIKit
#endif

public protocol XYAxisAnchorable: NSObjectProtocol {
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

    var topLeftAnchors: XYAxesAnchorPair { get }
    var topRightAnchors: XYAxesAnchorPair { get }
    var bottomRightAnchors: XYAxesAnchorPair { get }
    var bottomLeftAnchors: XYAxesAnchorPair { get }
}

public protocol BaselineAnchorable: NSObjectProtocol {
    var lastBaselineAnchor: YAxisAnchor { get }
    var firstBaselineAnchor: YAxisAnchor { get }
}

public protocol SizeAnchorable: NSObjectProtocol {
    var widthAnchor: LayoutDimension { get }
    var heightAnchor: LayoutDimension { get }
    var sizeAnchors: LayoutDimensionPair { get }
}

public protocol LayoutAnchorable: XYAxisAnchorable, SizeAnchorable {}

public protocol BaselineLayoutAnchorable: LayoutAnchorable, BaselineAnchorable {}

extension XYAxisAnchorable {

    public var horizontalEdgeAnchors: XAxisAnchorPair {
        return LayoutAnchorPair(leadingAnchor, trailingAnchor)
    }

    public var verticalEdgeAnchors: YAxisAnchorPair {
        return LayoutAnchorPair(topAnchor, bottomAnchor)
    }

    public var edgeAnchors: EdgeAnchorGroup {
        return  EdgeAnchorGroup(topAnchor,
                                leadingAnchor,
                                bottomAnchor,
                                trailingAnchor)
    }

    public var centerAnchors: XYAxesAnchorPair {
        return LayoutAnchorPair(centerXAnchor, centerYAnchor)
    }

    public var topLeftAnchors: XYAxesAnchorPair { return XYAxesAnchorPair(leftAnchor, topAnchor) }
    public var topRightAnchors: XYAxesAnchorPair { return XYAxesAnchorPair(rightAnchor, topAnchor) }
    public var bottomRightAnchors: XYAxesAnchorPair { return XYAxesAnchorPair(rightAnchor, bottomAnchor) }
    public var bottomLeftAnchors: XYAxesAnchorPair { return XYAxesAnchorPair(leftAnchor, bottomAnchor) }

    public func edgesExcluding(_ edge: XAxisAnchor) -> EdgeAnchorGroupExpression {
        let edgeExpression = EdgeAnchorGroupExpression(anchors: edgeAnchors)
        switch edge.attribute {
        case .leading:
            edgeExpression.leadingExpression.configuration.active = false
        case .trailing:
            edgeExpression.trailingExpression.configuration.active = false
        default:
            invalidEdgePreconditionFailure(edge)
        }
        return edgeExpression
    }

    public func edgesExcluding(_ edge: YAxisAnchor) -> EdgeAnchorGroupExpression {
        let edgeExpression = EdgeAnchorGroupExpression(anchors: edgeAnchors)
        switch edge.attribute {
        case .top:
            edgeExpression.topExpression.configuration.active = false
        case .bottom:
            edgeExpression.bottomExpression.configuration.active = false
        default:
            invalidEdgePreconditionFailure(edge)
        }
        return edgeExpression
    }
    private func invalidEdgePreconditionFailure<A: AnchorType>(_ edge: LayoutAnchor<A>) {
        preconditionFailure("EdgeAnchorGroup only includes top, leading, bottom and trailing edges. Cannot exclude \(edge)")
    }
}

extension SizeAnchorable {
    public var sizeAnchors: LayoutDimensionPair {
        return LayoutAnchorPair(widthAnchor, heightAnchor)
    }
}

extension View {

}

extension View: BaselineLayoutAnchorable {}

extension UILayoutGuide: LayoutAnchorable {}

extension ViewController: BaselineLayoutAnchorable {

    private var backingLayoutAnchorable: LayoutAnchorable {
        guard #available(iOS 11.0, *) else {
            return view
        }
        return view.safeAreaLayoutGuide
    }

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

    public var lastBaselineAnchor: YAxisAnchor {
        return view.lastBaselineAnchor
    }

    public var firstBaselineAnchor: YAxisAnchor {
        return view.firstBaselineAnchor
    }
}

extension Array where Element: XYAxisAnchorable {
    public var leadingAnchor: XAxisAnchors { return map {$0.leadingAnchor } }
    public var trailingAnchor: XAxisAnchors { return map {$0.trailingAnchor } }

    public var leftAnchor: XAxisAnchors { return map {$0.leftAnchor } }
    public var rightAnchor: XAxisAnchors { return map {$0.rightAnchor } }

    public var topAnchor: [YAxisAnchor] { return map {$0.topAnchor } }
    public var bottomAnchor: [YAxisAnchor] { return map {$0.bottomAnchor } }

    public var horizontalAnchors: XAxisAnchorPairs { return map { $0.horizontalEdgeAnchors } }
    public var verticalAnchors: YAxisAnchorPairs { return map { $0.verticalEdgeAnchors } }
    public var edgeAnchors: EdgeAnchorGroups { return map { $0.edgeAnchors } }

    public var centerXAnchor: XAxisAnchors { return map { $0.centerXAnchor } }
    public var centerYAnchor: YAxisAnchors { return map { $0.centerYAnchor } }
    public var centerAnchors: XYAxesAnchorPairs { return map { $0.centerAnchors } }

    public var topLeftAnchors: XYAxesAnchorPairs { return map { $0.topLeftAnchors } }
    public var topRightAnchors: XYAxesAnchorPairs { return map { $0.topRightAnchors } }
    public var bottomRightAnchors: XYAxesAnchorPairs { return map { $0.bottomRightAnchors } }
    public var bottomLeftAnchors: XYAxesAnchorPairs { return map { $0.bottomLeftAnchors } }
}

extension Array where Element: SizeAnchorable {
    public var widthAnchor: LayoutDimensions { return map { $0.widthAnchor } }
    public var heightAnchor: LayoutDimensions { return map { $0.heightAnchor } }
    public var sizeAnchors: LayoutDimensionPairs { return map { $0.sizeAnchors } }
}

extension Array where Element: View {
    public var aspectRatioAnchor: AspectRatioAnchors { return map { $0.aspectRatioAnchor } }
    public var aspectRatioInverseAnchor: AspectRatioAnchors { return map { $0.aspectRatioInverseAnchor } }
}
