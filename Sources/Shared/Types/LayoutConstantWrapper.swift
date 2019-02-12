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
    var anchorable: LayoutAnchorable
    var anchor: LayoutAnchor<A>
    public init(anchorable: LayoutAnchorable, anchor: LayoutAnchor<A>) {
        self.anchor = anchor
        self.anchorable = anchorable
    }
}
