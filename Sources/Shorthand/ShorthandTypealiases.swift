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
    public var leading: XAxisAnchor { return leadingAnchor }
    public var trailing: XAxisAnchor { return trailingAnchor }

    public var left: XAxisAnchor { return leftAnchor }
    public var right: XAxisAnchor { return rightAnchor }

    public var top: YAxisAnchor { return topAnchor }
    public var bottom: YAxisAnchor { return bottomAnchor }

    public var horizontalEdges: XAxisAnchorPair { return horizontalEdgeAnchors }
    public var verticalEdges: YAxisAnchorPair { return verticalEdgeAnchors }
    public var edges: EdgeAnchorGroup { return edgeAnchors }

    public var centerX: XAxisAnchor { return centerXAnchor }
    public var centerY: YAxisAnchor { return centerYAnchor }
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
    public var width: LayoutDimension { return widthAnchor }
    public var height: LayoutDimension { return heightAnchor }
    public var size: LayoutDimensionPair { return sizeAnchors }
}

extension View {
    public var aspectRatio: AspectRatioAnchor { return aspectRatioAnchor}
    public var aspectRatioInverse: AspectRatioAnchor { return aspectRatioInverseAnchor}
}

extension Collection where Element: XYAxisAnchorable {
    public var leading: XAxisAnchors { return map {$0.leading } }
    public var trailing: XAxisAnchors { return map {$0.trailing } }
    public var left: XAxisAnchors { return map {$0.left } }
    public var right: XAxisAnchors { return map {$0.right } }

    public var top: [YAxisAnchor] { return map {$0.top } }
    public var bottom: [YAxisAnchor] { return map {$0.bottom } }

    public var horizontalEdges: XAxisAnchorPairs { return map { $0.horizontalEdges } }
    public var verticalEdges: YAxisAnchorPairs { return map { $0.verticalEdges } }
    public var edges: EdgeAnchorGroups { return map { $0.edges } }

    public var centerX: XAxisAnchors { return map { $0.centerX } }
    public var centerY: YAxisAnchors { return map { $0.centerY } }
    public var centerXY: XYAxesAnchorPairs { return map { $0.centerXY } }

    public var topLeading: XYAxesAnchorPairs { return map { $0.topLeading } }
    public var topTrailing: XYAxesAnchorPairs { return map { $0.topTrailing } }
    public var bottomTrailing: XYAxesAnchorPairs { return map { $0.bottomTrailing } }
    public var bottomLeading: XYAxesAnchorPairs { return map { $0.bottomLeading } }

    public var topLeft: XYAxesAnchorPairs { return map { $0.topLeft } }
    public var topRight: XYAxesAnchorPairs { return map { $0.topRight } }
    public var bottomRight: XYAxesAnchorPairs { return map { $0.bottomRight } }
    public var bottomLeft: XYAxesAnchorPairs { return map { $0.bottomLeft } }

    public var margins: [LayoutGuide] { return map { $0.margins } }
}

extension Collection where Element: SizeAnchorable {
    public var width: LayoutDimensions { return map { $0.width } }
    public var height: LayoutDimensions { return map { $0.height } }
    public var size: LayoutDimensionPairs { return map { $0.size } }
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
