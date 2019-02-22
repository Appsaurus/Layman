//
//  LayoutStackable.swift
//  Layman
//
//  Created by Brian Strobach on 2/8/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

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

public protocol LayoutStackableBacked: LayoutStackable, LayoutAnchorableBacked {
    var view: View { get }
}

extension Constraint: LayoutStackableBacked {
    public var backingLayoutAnchorable: LayoutAnchorable {
        guard let anchorable: LayoutAnchorable = firstView ?? firstLayoutGuide ?? secondView ?? secondLayoutGuide else {
            assertionFailure("Attempted to resolve LayoutAnchorable from contstraint with no LayoutAnchorable object attached.")
            return View()
        }
        return anchorable
    }

    public var view: View {
        guard let view = backingLayoutAnchorable as? View ?? (backingLayoutAnchorable as? LayoutGuide)?.owningView else {
            assertionFailure("Attempted to provide view from contstraint with no view attached.")
            return View()
        }
        return view
    }
    
}
extension ConstraintPair: LayoutStackableBacked {
    public var backingLayoutAnchorable: LayoutAnchorable {
        return first.backingLayoutAnchorable
    }

    public var view: View {
        return first.view
    }
}
extension SideConstraints: LayoutStackableBacked {
    public var backingLayoutAnchorable: LayoutAnchorable {
        return top.backingLayoutAnchorable
    }

    public var view: View {
        return top.view
    }
}

extension StackView {

    @discardableResult
    public func stack(_ items: LayoutStackable...) -> StackView {
        return stack(items)
    }

    @discardableResult
    public func stack(_ items: [LayoutStackable]) -> StackView {
        for item in items {
            switch item {
            case let stackableArray as [LayoutStackable]:
                addArrangedSubview(stackableArray.stack(self.layout.on(axis == .vertical ? .horizontal : .vertical)))
            case let constant as LayoutConstantConvertible:
                guard #available(iOS 11.0, *), let lastView = arrangedSubviews.last else { continue }
                setCustomSpacing(constant.layoutConstant, after: lastView)
            case let viewProvider as LayoutStackableBacked:
                addArrangedSubview(viewProvider.view)
            case let view as View:
                addArrangedSubview(view)
            default: break
            }
        }
        return self
    }

}

extension Array {
    @discardableResult
    public func stack(_ layout: StackLayout? = nil) -> StackView {
        let stackView = StackView()
        if let layout = layout { stackView.layout = layout }
        guard let items = self as? [LayoutStackable] else { return stackView }
        stackView.stack(items)
        return stackView
    }
}
