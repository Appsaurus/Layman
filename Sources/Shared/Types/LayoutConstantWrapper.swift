//
//  LayoutConstantWrapper.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 2/6/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

public struct LayoutConstantWrapper {
    var value: LayoutConstant

    public init(_ value: LayoutConstant) {
        self.value = value
    }
}

// MARK: Anchor
public class LayoutAnchorWrapper<A: AnchorType> {
    var view: View
    var anchor: LayoutAnchor<A>
    public init(view: View, anchor: LayoutAnchor<A>) {
        self.anchor = anchor
        self.view = view
    }
}
