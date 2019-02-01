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
}

extension LayoutAnchor where AnchorType == XAxisAnchor {

    public var view: View? {
        return constraint(equalTo: self).firstView
    }
}

extension LayoutAnchor where AnchorType == YAxisAnchor {

    public var view: View? {
        return constraint(equalTo: self).firstView
    }
}

extension EdgeAnchorGroup {

    public var views: [View] {
        return [top.view, leading.view, bottom.view, trailing.view].compactMap {$0}
    }
}
