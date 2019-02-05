//
//  LayoutAnchor+View.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/23/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

// Somewhat hacky way to resolve the owning view from an NSLayoutAnchor
extension LayoutAnchor where AnchorType == LayoutDimension {

    public var view: View? {
        return constraint(equalTo: self).firstView
    }

    public var superview: View? {
        return view?.superview
    }

    public var matchingParentAnchor: LayoutDimension? {
        return superview?[keyPath: ...self]
    }
}

extension LayoutAnchor where AnchorType == XAxisAnchor {

    public var view: View? {
        return constraint(equalTo: self).firstView
    }

    public var superview: View? {
        return view?.superview
    }

    public var matchingParentAnchor: XAxisAnchor? {
        return superview?[keyPath: ...self]
    }
}

extension LayoutAnchor where AnchorType == YAxisAnchor {

    public var view: View? {
        return constraint(equalTo: self).firstView
    }

    public var superview: View? {
        return view?.superview
    }

    public var matchingParentAnchor: YAxisAnchor? {
        return superview?[keyPath: ...self]
    }
}

extension EdgeAnchorGroup {

    public var views: [View] {
        return [top.view, leading.view, bottom.view, trailing.view].compactMap {$0}
    }

    public var superviews: [View] {
        return views.map { $0.superview }.compactMap {$0}
    }
}
