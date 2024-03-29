//
//  LayoutStackable.swift
//  Layman
//
//  Created by Brian Strobach on 2/8/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

#if canImport(UIKit)
import UIKit

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

extension View {

    @discardableResult
    public func stack(on axis: Constraint.Axis? = nil, _ items: LayoutStackable...) -> StackView {
        return stack(on: axis, items)
    }

    @discardableResult
    public func stack(on axis: Constraint.Axis? = nil, _ items: [LayoutStackable]) -> StackView {

        guard let stackView = self as? StackView else {
            let stackView = StackView()
            addSubview(stackView)
            stackView.stack(on: axis, items)
            stackView.pinToSuperviewMargins()
            return stackView
        }

        stackView.clearArrangedSubviews(removeFromSuperView: true)
        if let axis = axis {
            stackView.axis = axis
        }

        var items = items

        //Edge case where array of UIView's would be nested in another stack unexpectedly
        if items.count == 1, let array = items.first as? [LayoutStackable] {
            items = array
        }

        for item in items {
            switch item {
            case let stackableArray as [LayoutStackable]:
                let nestedAxis: Constraint.Axis = stackView.axis == .vertical ? .horizontal : .vertical
                let nestedStackView = StackView()
                nestedStackView.stack(on: nestedAxis, stackableArray)
                nestedStackView.enforceContentSize()
                stackView.addArrangedSubview(nestedStackView)
            case let constant as LayoutConstantConvertible:
                guard #available(iOS 11.0, *), let lastView = stackView.arrangedSubviews.last else { continue }
                stackView.setCustomSpacing(constant.layoutConstant, after: lastView)
            case let viewProvider as LayoutStackableBacked:
                stackView.addArrangedSubview(viewProvider.view)
            case let view as View:
                stackView.addArrangedSubview(view)
            case let spacer as StackView.Spacer:
                stackView.add(spacer: spacer)
            default: break
            }
        }
        return stackView
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

extension Array {
    @discardableResult
    public func stack(_ direction: LayoutDirection, spacing: LayoutConstant = 0) -> ConstraintHeirarchy {
        var previousView: View?
        var currentView: View?
        var constraints: ConstraintHeirarchy = [:]
        for item in self {
            var spacing = spacing
            switch item {
            case let constant as LayoutConstantConvertible:
                spacing = constant.layoutConstant
            case let viewProvider as LayoutStackableBacked:
                currentView = viewProvider.view
            case let view as View:
                currentView = view
//            case let spacer as StackView.Spacer:
//                currentView = StackView.spacerView(spacer: spacer, axis: direction == .topToBottom ? .vertical : .horizontal)
            default: break
            }
            defer {
                previousView = currentView
            }
            guard let currentView = currentView, let previousView = previousView else {
                continue
            }
            var map: ConstraintAttributeMap = [:]
            switch direction {
            case .topToBottom:
                map[.top] = [currentView.topAnchor.equal(to: previousView.bottomAnchor.plus(spacing))]
            case .leadingToTrailing:
                map[.leading] = [currentView.leadingAnchor.equal(to: previousView.trailingAnchor.plus(spacing))]
            case .leftToRight:
                map[.left] = [currentView.leftAnchor.equal(to: previousView.rightAnchor.plus(spacing))]
            }
            constraints[currentView] = map
        }
        return constraints
    }

    @discardableResult
    public func stack(_ direction: LayoutDirection,
                      spacing: LayoutConstant = 0,
                      in anchorable: LayoutAnchorable,
                      inset: LayoutPadding = .init(0)) -> ConstraintHeirarchy {
        guard let view = anchorable.backingView,
            let first = first(where: { return $0 is View }) as? View,
            let last = last(where: { return $0 is View }) as? View else {
                return [:]
        }
        var constraints = stack(direction, spacing: spacing)
        let subviews: [View] = self.compactMap { $0 as? View }
        subviews.forEach { if $0.superview !== view { view.addSubview(view) }}
        switch direction {
        case .topToBottom:
            constraints.update(with: subviews.equal(to: anchorable.horizontalEdges.inset(inset.horizontal)))
            constraints.update(with: first.top.equal(to: inset.top))
            constraints.update(with: last.bottom.equal(to: inset.bottom))
        case .leadingToTrailing:
            constraints.update(with: subviews.equal(to: anchorable.verticalEdges.inset(inset.vertical)))
            constraints.update(with: first.leading.equal(to: inset.leading))
            constraints.update(with: last.trailing.equal(to: inset.trailing))
        case .leftToRight:
            constraints.update(with: subviews.equal(to: anchorable.verticalEdges.inset(inset.vertical)))
            constraints.update(with: first.left.equal(to: inset.leading))
            constraints.update(with: last.right.equal(to: inset.trailing))
        }

        return constraints

    }
}

public enum LayoutDirection {
    case leftToRight
    case leadingToTrailing
    case topToBottom
}



public enum LayoutInequalityDirection {
    case lessThanOrEqual
    case greaterThanOrEqual
}

public struct LayoutInequalityConstant: LayoutStackable {
    var constant: LayoutConstant
    var direction: LayoutInequalityDirection
}

prefix operator ≤

public prefix func ≤ (rhs: LayoutConstant) -> LayoutInequalityConstant {
    return LayoutInequalityConstant(constant: rhs, direction: .lessThanOrEqual)
}

prefix operator ≥

public prefix func ≥ (rhs: LayoutConstant) -> LayoutInequalityConstant {
    return LayoutInequalityConstant(constant: rhs, direction: .greaterThanOrEqual)
}
#endif
