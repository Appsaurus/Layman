//
//  LayoutAspectRatio.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/23/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

public enum LayoutAspectRatio {
    case wide // 16:9
    case standard // 4:3
    case square
    case custom(width: LayoutConstant, height: LayoutConstant)
    case customSize(size: LayoutSize)
    case customRatio(ratio: LayoutConstant)

    public var ratio: LayoutConstant {
        switch self {
        case .wide:
            return 16.0/9.0
        case .standard:
            return 4.0/3.0
        case .square:
            return 1.0
        case .custom(let ratio):
            return ratio.width/ratio.height
        case .customSize(let size):
            return size.width / size.height
        case .customRatio(let ratio):
            return ratio
        }
    }
}
