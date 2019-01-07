//
//  AnchorGroup.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/7/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

#if os(macOS)
import Cocoa
#else
import UIKit
#endif

public protocol LayoutAnchorable {

    var horizontalAnchors: XAxisAnchors { get }
    var verticalAnchors: YAxisAnchors { get }
    var centerAnchors: LayoutAnchors<NSLayoutXAxisAnchor, NSLayoutYAxisAnchor> { get }
    var sizeAnchors: LayoutDimensions { get }

}

extension LayoutAnchorable {

    public var edgeAnchors: EdgeAnchors {
        return EdgeAnchors(horizontal: horizontalAnchors, vertical: verticalAnchors)
    }

}

extension UIView: LayoutAnchorable {

    public var horizontalAnchors: XAxisAnchors {
        return LayoutAnchors(leadingAnchor, trailingAnchor)
    }

    public var verticalAnchors: YAxisAnchors {
        return LayoutAnchors(topAnchor, bottomAnchor)
    }

    public var centerAnchors: LayoutAnchors<NSLayoutXAxisAnchor, NSLayoutYAxisAnchor> {
        return LayoutAnchors(centerXAnchor, centerYAnchor)
    }

    public var sizeAnchors: LayoutDimensions {
        return LayoutAnchors(widthAnchor, heightAnchor)
    }

}

extension UIViewController: LayoutAnchorable {

    public var horizontalAnchors: XAxisAnchors {
        return view.horizontalAnchors
    }

    public var verticalAnchors: YAxisAnchors {
        #if os(macOS)
        return view.verticalAnchors
        #else
        return LayoutAnchors(topLayoutGuide.bottomAnchor, bottomLayoutGuide.topAnchor)
        #endif
    }

    public var centerAnchors: LayoutAnchors<NSLayoutXAxisAnchor, NSLayoutYAxisAnchor> {
        return view.centerAnchors
    }

    public var sizeAnchors: LayoutDimensions {
        return view.sizeAnchors
    }

}

extension UILayoutGuide: LayoutAnchorable {

    public var horizontalAnchors: XAxisAnchors {
        return LayoutAnchors(leadingAnchor, trailingAnchor)
    }

    public var verticalAnchors: YAxisAnchors {
        return LayoutAnchors(topAnchor, bottomAnchor)
    }

    public var centerAnchors: LayoutAnchors<NSLayoutXAxisAnchor, NSLayoutYAxisAnchor> {
        return LayoutAnchors(centerXAnchor, centerYAnchor)
    }

    public var sizeAnchors: LayoutDimensions {
        return LayoutAnchors(widthAnchor, heightAnchor)
    }

}

// MARK: - EdgeAnchors

public struct EdgeAnchors {
    public var horizontal: XAxisAnchors
    public var vertical: YAxisAnchors
}

internal extension EdgeAnchors {

}
