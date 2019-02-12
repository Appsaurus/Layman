//
//  Layout.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 2/11/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

extension StackView {
    public class Layout {

        public var axis: Constraint.Axis? = .vertical
        public var distribution: StackView.Distribution? = .fill
        public var alignment: StackView.Alignment? = .fill
        public var spacing: LayoutConstant? = defaultSpacing

        static public var defaultSpacing: LayoutConstant? = 10.0

        public static func on(_ axis: Constraint.Axis) -> Layout {
            return Layout().on(axis)
        }
        public static func distribute(_ distribution: StackView.Distribution) -> Layout {
            return Layout().distribute(distribution)
        }
        public static func align(_ alignment: StackView.Alignment) -> Layout {
            return Layout().align(alignment)
        }
        public static func spacing(_ spacing: LayoutConstant) -> Layout {
            return Layout().spacing(spacing)
        }

        public func on(_ axis: Constraint.Axis) -> Layout {
            self.axis = axis
            return self
        }
        public func distribute(_ distribution: StackView.Distribution) -> Layout {
            self.distribution = distribution
            return self
        }
        public func align(_ alignment: StackView.Alignment) -> Layout {
            self.alignment = alignment
            return self
        }
        public func spacing(_ spacing: LayoutConstant) -> Layout {
            self.spacing = spacing
            return self
        }

        //Horizontal
        static public var fillHorizontal: Layout {
            return Layout.on(.horizontal).distribute(.fill).align(.fill)
        }
        static public var fillEquallyHorizontal: Layout {
            return Layout.on(.horizontal).distribute(.fillEqually).align(.fill)
        }
        static public var fillProportionatelyHorizontal: Layout {
            return Layout.on(.horizontal).distribute(.fillProportionally).align(.center)
        }
        static public var equalSpacingHorizontal: Layout {
            return Layout.on(.horizontal).distribute(.equalSpacing).align(.leading)
        }

        //Vertical
        static public var fillVertical: Layout {
            return Layout.on(.vertical).distribute(.fill).align(.fill)
        }
        static public var fillEquallyVertical: Layout {
            return Layout.on(.vertical).distribute(.fillEqually).align(.fill)
        }
        static public var fillProportionatelyVertical: Layout {
            return Layout.on(.vertical).distribute(.fillProportionally).align(.fill)
        }
        static public var equalSpacingVertical: Layout {
            return Layout.on(.vertical).distribute(.equalSpacing).align(.leading)
        }
    }
}

extension StackView {

    public convenience init(layout: Layout, arrangedSubviews: [View] = []) {
        self.init(arrangedSubviews: arrangedSubviews)
        self.layout = layout
    }

    public var layout: Layout {
        get {
            return Layout
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


public protocol LayoutStackable {}

extension View: LayoutStackable {}
extension Array: LayoutStackable {}

@available(iOS 11.0, *)
extension LayoutConstant: LayoutStackable {}

@available(iOS 11.0, *)
extension Int: LayoutStackable {}

@available(iOS 11.0, *)
extension Float: LayoutStackable {}

@available(iOS 11.0, *)
extension Double: LayoutStackable {}

public protocol ViewProviding: SizeAnchorable, LayoutStackable {
    var view: View { get }
}

extension ViewProviding {
    public var sizeAnchors: LayoutDimensionPair {
        return view.sizeAnchors
    }

    public var widthAnchor: LayoutDimension {
        return view.widthAnchor
    }

    public var heightAnchor: LayoutDimension {
        return view.heightAnchor
    }
}

extension Array where Element: ViewProviding {
    public var widthAnchor: LayoutDimensions { return map { $0.widthAnchor } }
    public var heightAnchor: LayoutDimensions { return map { $0.heightAnchor } }
    public var sizeAnchors: LayoutDimensionPairs { return map { $0.sizeAnchors } }
}
extension Constraint: ViewProviding, LayoutStackable {
    public var view: View {
        guard let view = firstView ?? secondView else {
            assertionFailure("Attempted to provide view from contstraint with no view attached.")
            return View()
        }
        return view
    }
}

extension ConstraintPair: ViewProviding, LayoutStackable {
    public var view: View {
        return first.view
    }
}

extension SideConstraints: ViewProviding, LayoutStackable {
    public var view: View {
        return top.view
    }
}

extension StackView {

    public func stack(_ items: LayoutStackable...) {
        stack(items)
    }

    public func stack(_ items: [LayoutStackable]) {
        for item in items {
            switch item {
            case let stackableArray as [LayoutStackable]:
                addArrangedSubview(stackableArray.stack(self.layout.on(axis == .vertical ? .horizontal : .vertical)))
            case let constant as LayoutConstantConvertible:
                guard #available(iOS 11.0, *), let lastView = arrangedSubviews.last else { continue }
                setCustomSpacing(constant.layoutConstant, after: lastView)
            case let viewProvider as ViewProviding:
                addArrangedSubview(viewProvider.view)
            case let view as View:
                addArrangedSubview(view)
            default: break
            }
        }
    }

}


extension Array {
    @discardableResult
    public func stack(_ layout: StackView.Layout? = nil) -> StackView {
        let stackView = StackView()
        if let layout = layout { stackView.layout = layout }
        guard let items = self as? [LayoutStackable] else { return stackView }
        stackView.stack(items)
        return stackView
    }
}
