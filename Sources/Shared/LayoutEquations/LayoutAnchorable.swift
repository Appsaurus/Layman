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

    var horizontalAnchors: XAxisAnchorPair { get }
    var verticalAnchors: YAxisAnchorPair { get }
    var edgeAnchors: EdgeAnchorGroup { get }

    var centerXAnchor: XAxisAnchor { get }
    var centerYAnchor: YAxisAnchor { get }
    var centerAnchors: XYAxesAnchorPair { get }

    var topLeft: XYAxesAnchorPair { get }
    var topRight: XYAxesAnchorPair { get }
    var bottomRight: XYAxesAnchorPair { get }
    var bottomLeft: XYAxesAnchorPair { get }
}

public protocol BaselineAnchorable: NSObjectProtocol {
    var lastBaselineAnchor: YAxisAnchor { get }
    var firstBaselineAnchor: YAxisAnchor { get }
}

public protocol SizeAnchorable: NSObjectProtocol {
    var widthAnchor: LayoutDimension { get }
    var heightAnchor: LayoutDimension { get }
    var sizeAnchors: SizeAnchorPair { get }
}

public protocol LayoutAnchorable: XYAxisAnchorable, SizeAnchorable {}

public protocol BaselineLayoutAnchorable: LayoutAnchorable, BaselineAnchorable {}

extension XYAxisAnchorable {

    public var horizontalAnchors: XAxisAnchorPair {
        return LayoutAnchorPair(leadingAnchor, trailingAnchor)
    }

    public var verticalAnchors: YAxisAnchorPair {
        return LayoutAnchorPair(topAnchor, bottomAnchor)
    }

    public var centerAnchors: XYAxesAnchorPair {
        return LayoutAnchorPair(centerXAnchor, centerYAnchor)
    }

    public var edgeAnchors: EdgeAnchorGroup {
        return  EdgeAnchorGroup(topAnchor,
                                leadingAnchor,
                                bottomAnchor,
                                trailingAnchor)
    }

    public var topLeft: XYAxesAnchorPair { return XYAxesAnchorPair(leftAnchor, topAnchor) }
    public var topRight: XYAxesAnchorPair { return XYAxesAnchorPair(rightAnchor, topAnchor) }
    public var bottomRight: XYAxesAnchorPair { return XYAxesAnchorPair(rightAnchor, bottomAnchor) }
    public var bottomLeft: XYAxesAnchorPair { return XYAxesAnchorPair(leftAnchor, bottomAnchor) }
}

extension SizeAnchorable {
    public var sizeAnchors: SizeAnchorPair {
        return LayoutAnchorPair(widthAnchor, heightAnchor)
    }
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

extension Array where Element: LayoutAnchorable {
    public var leadingAnchor: XAxisAnchors { return map {$0.leadingAnchor } }
    public var trailingAnchor: XAxisAnchors { return map {$0.trailingAnchor } }

    public var leftAnchor: XAxisAnchors { return map {$0.leftAnchor } }
    public var rightAnchor: XAxisAnchors { return map {$0.rightAnchor } }

    public var topAnchor: [YAxisAnchor] { return map {$0.topAnchor } }
    public var bottomAnchor: [YAxisAnchor] { return map {$0.bottomAnchor } }

    public var widthAnchor: LayoutDimensions { return map { $0.widthAnchor } }
    public var heightAnchor: LayoutDimensions { return map { $0.heightAnchor } }
    public var sizeAnchors: SizeAnchorPairs { return map { $0.sizeAnchors } }

    public var horizontalAnchors: XAxisAnchorPairs { return map { $0.horizontalAnchors } }
    public var verticalAnchors: YAxisAnchorPairs { return map { $0.verticalAnchors } }
    public var edgeAnchors: EdgeAnchorGroups { return map { $0.edgeAnchors } }

    public var centerXAnchor: XAxisAnchors { return map { $0.centerXAnchor } }
    public var centerYAnchor: YAxisAnchors { return map { $0.centerYAnchor } }
    public var centerAnchors: XYAxesAnchorPairs { return map { $0.centerAnchors } }

    public var topLeft: XYAxesAnchorPairs { return map { $0.topLeft } }
    public var topRight: XYAxesAnchorPairs { return map { $0.topRight } }
    public var bottomRight: XYAxesAnchorPairs { return map { $0.bottomRight } }
    public var bottomLeft: XYAxesAnchorPairs { return map { $0.bottomLeft } }
}
