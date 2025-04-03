//
//  StackLayout.swift
//  Layman
//
//  Created by Brian Strobach on 2/11/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

import UIKit
public protocol StackLayoutBuilder {
    func on(_ axis: Constraint.Axis) -> Self
    func distribute(_ distribution: StackView.Distribution) -> Self
    func align(_ alignment: StackView.Alignment) -> Self
    func spacing(_ spacing: LayoutConstant) -> Self
}

extension StackView: StackLayoutBuilder {
    @discardableResult
    public func on(_ axis: Constraint.Axis) -> Self {
        self.axis = axis
        return self
    }

    @discardableResult
    public func distribute(_ distribution: StackView.Distribution) -> Self {
        self.distribution = distribution
        return self
    }

    @discardableResult
    public func align(_ alignment: StackView.Alignment) -> Self {
        self.alignment = alignment
        return self
    }

    @discardableResult
    public func spacing(_ spacing: LayoutConstant) -> Self {
        self.spacing = spacing
        return self
    }
}

public class StackLayout {

    public var axis: Constraint.Axis? // StackView's default: .horizontal
    public var distribution: StackView.Distribution? // StackView's default: .fill
    public var alignment: StackView.Alignment? // StackView's default: .fill
    public var spacing: LayoutConstant? = defaultSpacing

    static public var defaultSpacing: LayoutConstant?

    public static func on(_ axis: Constraint.Axis) -> StackLayout {
        return StackLayout().on(axis)
    }
    public static func distribute(_ distribution: StackView.Distribution) -> StackLayout {
        return StackLayout().distribute(distribution)
    }
    public static func align(_ alignment: StackView.Alignment) -> StackLayout {
        return StackLayout().align(alignment)
    }
    public static func spacing(_ spacing: LayoutConstant) -> StackLayout {
        return StackLayout().spacing(spacing)
    }

    @discardableResult
    public func on(_ axis: Constraint.Axis) -> StackLayout {
        self.axis = axis
        return self
    }

    @discardableResult
    public func distribute(_ distribution: StackView.Distribution) -> StackLayout {
        self.distribution = distribution
        return self
    }

    @discardableResult
    public func align(_ alignment: StackView.Alignment) -> StackLayout {
        self.alignment = alignment
        return self
    }

    @discardableResult
    public func spacing(_ spacing: LayoutConstant) -> StackLayout {
        self.spacing = spacing
        return self
    }

    //Horizontal
    static public var fillHorizontal: StackLayout {
        return StackLayout.on(.horizontal).distribute(.fill).align(.fill)
    }
    static public var fillEquallyHorizontal: StackLayout {
        return StackLayout.on(.horizontal).distribute(.fillEqually).align(.fill)
    }
    static public var fillProportionatelyHorizontal: StackLayout {
        return StackLayout.on(.horizontal).distribute(.fillProportionally).align(.center)
    }
    static public var equalSpacingHorizontal: StackLayout {
        return StackLayout.on(.horizontal).distribute(.equalSpacing).align(.center)
    }

    static public var equalSpacingHorizontalFill: StackLayout {
        return StackLayout.on(.horizontal).distribute(.equalSpacing).align(.fill)
    }

    //Vertical
    static public var fillVertical: StackLayout {
        return StackLayout.on(.vertical).distribute(.fill).align(.fill)
    }

    static public var fillEquallyVertical: StackLayout {
        return StackLayout.on(.vertical).distribute(.fillEqually).align(.fill)
    }
    static public var fillProportionatelyVertical: StackLayout {
        return StackLayout.on(.vertical).distribute(.fillProportionally).align(.fill)
    }

    static public var equalSpacingVertical: StackLayout {
        return StackLayout.on(.vertical).distribute(.equalSpacing).align(.leading)
    }

    static public var equalSpacingVerticalFill: StackLayout {
        return StackLayout.on(.vertical).distribute(.equalSpacing).align(.fill)
    }

    static public var fillVerticalCenter: StackLayout {
        return StackLayout.on(.vertical).distribute(.fill).align(.center)
    }
}

extension StackView {

    public convenience init(layout: StackLayout, arrangedSubviews: [View] = []) {
        self.init(arrangedSubviews: arrangedSubviews)
        self.layout = layout
    }

    public var layout: StackLayout {
        get {
            return StackLayout
                .on(axis)
                .align(alignment)
                .distribute(distribution)
                .spacing(spacing)
        }
        set {
            if let alignment = newValue.alignment { self.alignment = alignment}
            if let spacing = newValue.spacing { self.spacing = spacing}
            if let distribution = newValue.distribution { self.distribution = distribution}
            if let axis = newValue.axis { self.axis = axis}
        }
    }
}
