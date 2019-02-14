//
//  LayoutConstantConvertible.swift
//  Layman
//
//  Created by Brian Strobach on 2/11/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

#if canImport(CoreGraphics)
import CoreGraphics
public protocol LayoutConstantConvertible {
    var layoutConstant: LayoutConstant { get }
}

extension LayoutConstant: LayoutConstantConvertible {
    public var layoutConstant: LayoutConstant {
        return self
    }
}
extension Float: LayoutConstantConvertible {
    public var layoutConstant: LayoutConstant {
        return CGFloat(self)
    }
}
extension Double: LayoutConstantConvertible {
    public var layoutConstant: LayoutConstant {
        return CGFloat(self)
    }
}
extension Int: LayoutConstantConvertible {
    public var layoutConstant: LayoutConstant {
        return CGFloat(self)
    }
}
#endif
