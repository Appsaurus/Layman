//
//  LayoutPriority+Sugar.swift
//  Layman
//
//  Created by Brian Strobach on 1/8/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

#if canImport(AppKit)
import AppKit
#else
import UIKit
#endif

extension XYAxisAnchorable {
    public var leading: XAxisAnchor {
        return leadingAnchor.retain(keyPath: \.leadingAnchor, owningItem: self)
    }
    public var trailing: XAxisAnchor {
        return trailingAnchor.retain(keyPath: \.trailingAnchor, owningItem: self)
    }

    public var left: XAxisAnchor {
        return leftAnchor.retain(keyPath: \.leftAnchor, owningItem: self)
    }
    public var right: XAxisAnchor {
        return rightAnchor.retain(keyPath: \.rightAnchor, owningItem: self)
    }

    public var top: YAxisAnchor {
        return topAnchor.retain(keyPath: \.topAnchor, owningItem: self)
    }
    public var bottom: YAxisAnchor {
        return bottomAnchor.retain(keyPath: \.bottomAnchor, owningItem: self)
    }

    public var horizontalEdges: XAxisAnchorPair { return horizontalEdgeAnchors }
    public var verticalEdges: YAxisAnchorPair { return verticalEdgeAnchors }
    public var edges: EdgeAnchorGroup { return edgeAnchors }

    public var centerX: XAxisAnchor {
        return centerXAnchor.retain(keyPath: \.centerXAnchor, owningItem: self)
    }
    public var centerY: YAxisAnchor {
        return centerYAnchor.retain(keyPath: \.centerYAnchor, owningItem: self)
    }
    public var centerXY: XYAxesAnchorPair { return centerAnchors }

    public var topLeading: XYAxesAnchorPair { return topLeadingAnchors }
    public var topTrailing: XYAxesAnchorPair { return topTrailingAnchors }
    public var bottomTrailing: XYAxesAnchorPair { return bottomTrailingAnchors }
    public var bottomLeading: XYAxesAnchorPair { return bottomLeadingAnchors }

    public var topLeft: XYAxesAnchorPair { return topLeftAnchors }
    public var topRight: XYAxesAnchorPair { return topRightAnchors }
    public var bottomRight: XYAxesAnchorPair { return bottomRightAnchors }
    public var bottomLeft: XYAxesAnchorPair { return bottomLeftAnchors }
    public var margins: LayoutGuide { return layoutMarginsGuide }
}

extension SizeAnchorable {
    public var width: LayoutDimension { return widthAnchor.retain(keyPath: \.widthAnchor, owningItem: self) }
    public var height: LayoutDimension { return heightAnchor.retain(keyPath: \.heightAnchor, owningItem: self) }
    public var size: LayoutDimensionPair { return sizeAnchors }
}

extension View {
    public var aspectRatio: AspectRatioAnchor { return aspectRatioAnchor}
    public var aspectRatioInverse: AspectRatioAnchor { return aspectRatioInverseAnchor}
}

extension Collection where Element: XYAxisAnchorable {
    // NOTE: Member variables defined by UIKit on Layout Anchors must be accessed by the shorthand
    // notation in order for side effect to lazily load the KeyPath that optimizes the inferred equations.

    public var leading: XAxisAnchors { return map { $0.leading } }
    public var trailing: XAxisAnchors { return map { $0.trailing } }
    public var left: XAxisAnchors { return map { $0.left } }
    public var right: XAxisAnchors { return map { $0.right } }

    public var top: [YAxisAnchor] { return map { $0.top } }
    public var bottom: [YAxisAnchor] { return map { $0.bottom } }

    public var horizontalEdges: XAxisAnchorPairs { return horizontalEdgeAnchors }
    public var verticalEdges: YAxisAnchorPairs { return verticalEdgeAnchors }
    public var edges: EdgeAnchorGroups { return edgeAnchors }

    public var centerX: XAxisAnchors { return map { $0.centerX } }
    public var centerY: YAxisAnchors { return map { $0.centerY } }
    public var centerXY: XYAxesAnchorPairs { return centerAnchors }

    public var topLeading: XYAxesAnchorPairs { return topLeadingAnchors }
    public var topTrailing: XYAxesAnchorPairs { return topTrailingAnchors }
    public var bottomTrailing: XYAxesAnchorPairs { return bottomTrailingAnchors }
    public var bottomLeading: XYAxesAnchorPairs { return bottomLeadingAnchors }

    public var topLeft: XYAxesAnchorPairs { return topLeftAnchors }
    public var topRight: XYAxesAnchorPairs { return topRightAnchors }
    public var bottomRight: XYAxesAnchorPairs { return bottomRightAnchors }
    public var bottomLeft: XYAxesAnchorPairs { return bottomLeftAnchors }

    public var margins: [LayoutGuide] { return layoutMarginsGuide }
}

extension Collection where Element: SizeAnchorable {
    public var width: LayoutDimensions { return map { $0.width } }
    public var height: LayoutDimensions { return map { $0.height } }
    public var size: LayoutDimensionPairs { return sizeAnchors }
}

extension Collection where Element: View {
    public var aspectRatio: AspectRatioAnchors { return map { $0.aspectRatio } }
    public var aspectRatioInverse: AspectRatioAnchors { return map { $0.aspectRatioInverse } }
}

extension LayoutPriority {
    /// Shorthand syntax for UILayoutPriority.defaultHigh
    public static var high: UILayoutPriority {        
        return .defaultHigh
    }

    /// Shorthand syntax for UILayoutPriority.defaultLow
    public static var low: UILayoutPriority {
        return .defaultLow
    }

    /// Shorthand syntax for UILayoutPriority.fittingSizeLevel
    public static var fittingSize: UILayoutPriority {
        return .fittingSizeLevel
    }
}
