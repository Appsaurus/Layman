//
//  ConstraintLabel.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 2/6/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//
#if canImport(AppKit)
import AppKit
#else
import UIKit
#endif

precedencegroup LabelPrecedence {
    associativity: none
    lowerThan: AssignmentPrecedence
}

infix operator ~~ : LabelPrecedence
@discardableResult
public func ~~ (lhs: Constraint, rhs: String) -> Constraint {
    return lhs.labeled(rhs, nil, nil)
}

@discardableResult
public func ~~ (lhs: ConstraintPair, rhs: String) -> ConstraintPair {
    return lhs.labeled(rhs, nil, nil)
}

@discardableResult
public func ~~ (lhs: SideConstraints, rhs: String) -> SideConstraints {
    return lhs.labeled(rhs, nil, nil)
}

//public class SourceCodeLocatableString {
//    var value: String
//    var file: String
//    var line: UInt
//    public init(stringLiteral: String, _ file: String = #file, _ line: UInt = #line){
//        self.value = stringLiteral
//        self.file = file
//        self.line = line
//    }
//}

public protocol LayoutDebugLabeled: class, LayoutDebugLabelable {
    var layoutDebugInfo: LayoutDebugInfo? { get set }
}

private struct AssociatedKeys {
    static var layoutDebugInfo = "UILayoutKit_layoutDebugInfo"
}

public struct LayoutDebugInfo {
    let name: String
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
            return objc_getAssociatedObject(self, &AssociatedKeys.layoutDebugInfo) as? LayoutDebugInfo
        }
        set {
            objc_setAssociatedObject(
                self,
                &AssociatedKeys.layoutDebugInfo,
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
