//
//  LayoutInset+Initializers.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/16/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

internal extension LayoutInset {
    init(padding: LayoutConstant) {
        self.init(top: padding, left: padding, bottom: padding, right: padding)
    }
}
