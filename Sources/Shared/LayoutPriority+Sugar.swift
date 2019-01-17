//
//  LayoutPriority+Sugar.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/8/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

import UIKit

extension LayoutPriority: ExpressibleByIntegerLiteral {
    public typealias IntegerLiteralType = Int
    public init(integerLiteral value: Int) {
        self.init(Float(value))
    }
}

// MARK: Shorthand aliases

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

extension LayoutAnchorable {
    var leading: XAxisAnchor { return leadingAnchor }
    var trailing: XAxisAnchor { return trailingAnchor }

    var left: XAxisAnchor { return leftAnchor }
    var right: XAxisAnchor { return rightAnchor }

    var top: YAxisAnchor { return topAnchor }
    var bottom: YAxisAnchor { return bottomAnchor }

    var horizontalEdges: XAxisAnchorPair { return horizontalEdgeAnchors }
    var verticalEdges: YAxisAnchorPair { return verticalEdgeAnchors }
    var edges: EdgeAnchorGroup { return edgeAnchors }

    var centerX: XAxisAnchor { return centerXAnchor }
    var centerY: YAxisAnchor { return centerYAnchor }
    var center: XYAxesAnchorPair { return centerAnchors }

    var size: LayoutDimensionPair { return sizeAnchors }
}
