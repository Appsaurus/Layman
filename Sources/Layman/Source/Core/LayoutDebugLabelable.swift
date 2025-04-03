//
//  LayoutDebugLabelable.swift
//  Layman
//
//  Created by Brian Strobach on 2/6/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

#if canImport(AppKit)
import AppKit
#else
import UIKit
#endif

public protocol LayoutDebugLabelable {
    func label(_ name: String, _ file: String?, _ line: UInt?)
}
extension LayoutDebugLabelable {
    @discardableResult
    public func labeled(_ name: String, _ file: String? = #file, _ line: UInt? = #line) -> Self {
        self.label(name, file, line)
        return self
    }
}

public protocol LayoutDebugLabeled: AnyObject, LayoutDebugLabelable {
    var layoutDebugInfo: LayoutDebugInfo? { get set }
}

private struct AssociatedKeys {
    static let layoutDebugInfo = NSObject()
}

public struct LayoutDebugInfo {
    public let name: String
    var sourceLocation: (file: String, line: UInt)?

    public init(name: String, file: String? = nil, line: UInt? = nil) {
        self.name = name
        if let file = file, let line = line {
            sourceLocation = (file, line)
        }
    }
}
extension LayoutDebugLabeled {

    public var layoutDebugInfo: LayoutDebugInfo? {
        get {
            return objc_getAssociatedObject(self, Unmanaged.passUnretained(AssociatedKeys.layoutDebugInfo).toOpaque()) as? LayoutDebugInfo
        }
        set {
            objc_setAssociatedObject(
                self,
                Unmanaged.passUnretained(AssociatedKeys.layoutDebugInfo).toOpaque(),
                newValue,
                .OBJC_ASSOCIATION_RETAIN_NONATOMIC
            )
        }
    }

    public func label(_ name: String, _ file: String? = #file, _ line: UInt? = #line) {
        self.layoutDebugInfo = LayoutDebugInfo(name: name, file: file, line: line)
    }
}

extension View: LayoutDebugLabeled {}
extension Constraint: LayoutDebugLabeled {}

extension LayoutModelReferencePair: LayoutDebugLabelable where T == Constraint {

    public func label(_ name: String, _ file: String? = #file, _ line: UInt? = #line) {
        first.label("\(name).first", file, line)
        second.label("\(name).second", file, line)
    }
}

extension SidesTuple: LayoutDebugLabelable where HorizontalSideType == Constraint, VerticalSideType == Constraint {
    public func label(_ name: String, _ file: String? = #file, _ line: UInt? = #line) {
        top.label("\(name).top", file, line)
        leading.label("\(name).leading", file, line)
        bottom.label("\(name).bottom", file, line)
        trailing.label("\(name).trailing", file, line)
    }
}
