//
//  UIEdgeInsets+Initializers.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/16/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

#if canImport(CoreGraphics)
import CoreGraphics

internal extension LayoutInset {
    init(padding: CGFloat) {
        self.init(top: padding, left: padding, bottom: padding, right: padding)
    }
}

#endif
