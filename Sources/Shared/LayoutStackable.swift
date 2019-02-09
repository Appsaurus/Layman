//
//  LayoutStackable.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 2/8/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

extension SidesTuple where HorizontalSideType == Constraint, VerticalSideType == Constraint {
    internal var attributeMap: ConstraintAttributeMap {
        return [
            .top: [top],
            .leading: [leading],
            .bottom: [bottom],
            .trailing: [trailing]
        ]
    }
}

public protocol LayoutStackable {}

extension View: LayoutStackable {}
extension Array: LayoutStackable where Element == LayoutStackable {}
extension LayoutConstant: LayoutStackable {}
extension Int: LayoutStackable {}
extension Float: LayoutStackable {}
extension Double: LayoutStackable {}

extension LayoutStackable {
    public static func stack(axis: Constraint.Axis = .vertical,
                             _ items: LayoutStackable...) -> View {
        let container = View()
        Layout.stack(axis, in: container, items)
        return container
    }
}

public struct Layout {

    @discardableResult
    public static func stack(_ axis: Constraint.Axis = .vertical,
                             in container: View = View(),
                             inset: LayoutInset = .zero,
                             _ items: LayoutStackable...) -> ConstraintHeirarchy {
        return stack(axis, in: container, inset: inset, items)
    }

    @discardableResult
    public static func stack(_ primaryAxis: Constraint.Axis = .vertical,
                             in container: View,
                             inset: LayoutInset = .zero,
                             _ items: [LayoutStackable]) -> ConstraintHeirarchy {
        let innerAxis: Constraint.Axis = primaryAxis == .vertical ? .horizontal : .vertical
        var mainStackViews: [View] = []
        var spacing: [LayoutConstant] = []
        var constaintHeirarchy: ConstraintHeirarchy = [:]
        // Layout nested stacks inside their own container
        for item in items {
            switch item {
            case let stackableArray as [LayoutStackable]:
                let innerContainer = View()
                mainStackViews.append(innerContainer)
                let innerHeirarchy = stack(innerAxis, in: innerContainer, stackableArray)
                constaintHeirarchy = constaintHeirarchy.merging(with: innerHeirarchy)
            case let space as LayoutConstant:
                spacing.append(space)
            case let view as View:
                mainStackViews.append(view)
            default: break
            }
            if spacing.count < mainStackViews.count {
                spacing.append(0)
            }
            mainStackViews.stack(primaryAxis, in: container, inset: inset, spacing: spacing)
        }
        let constraints = stack(primaryAxis, in: container, inset: inset, mainStackViews)
        return constaintHeirarchy.merging(with: constraints)
    }

}

extension Array {
    @discardableResult
    public func stack(_ primaryAxis: Constraint.Axis = .vertical,
                      in container: View,
                      inset: LayoutInset = .zero) -> ConstraintHeirarchy {
        guard let items = self as? [LayoutStackable] else { return [:] }
        return Layout.stack(primaryAxis, in: container, inset: inset, items)
    }
}
extension Array where Element: View {

    @discardableResult
    public func stack(_ axis: Constraint.Axis = .vertical,
                      in container: View,
                      inset: LayoutInset = .zero,
                      spacing: LayoutConstant...) -> ConstraintHeirarchy {
        return stack(axis, in: container, inset: inset, spacing: spacing)
    }
    /// Autostacks an array of views vertically inside a common superview. Requires that all views share the same superview.
    ///
    /// - Returns: Constraints mapped to each view
    @discardableResult
    public func stack(_ axis: Constraint.Axis = .vertical,
                      in container: View,
                      inset: LayoutInset = .zero,
                      spacing: [LayoutConstant]) -> ConstraintHeirarchy {

        var constraintMap: ConstraintHeirarchy = [:]
        guard let firstView = self.first else {
            return constraintMap
        }

        for view in self where view.superview !== container {
            container.addSubview(view)
        }

        guard count > 1 else {//If only one view exists
            constraintMap[firstView] = firstView.edgeAnchors.equal(to: container.edges).attributeMap
            return constraintMap
        }

        stack(axis, spacing: spacing)
        let lastIndex = count - 1
        for (index, view) in self.enumerated() {
            switch (axis, index) {
            case (.vertical, 0):
                constraintMap[view] = view.edgeAnchors.equal(to: container.edgesExcluding(.bottom).plus(inset: inset)).attributeMap
            case (.horizontal, 0):
                constraintMap[view] = view.edgeAnchors.equal(to: container.edgesExcluding(.trailing).plus(inset: inset)).attributeMap
            case (.vertical, lastIndex):
                constraintMap[view]?[.leading] = [view.leadingAnchor.equal(to: container.leadingAnchor.plus(inset.left))]
                constraintMap[view]?[.trailing] = [view.trailingAnchor.equal(to: container.trailingAnchor.plus(inset.right))]
            case (.horizontal, lastIndex):
                constraintMap[view]?[.top] = [view.topAnchor.equal(to: container.topAnchor.plus(inset.top))]
                constraintMap[view]?[.bottom] = [view.bottomAnchor.equal(to: container.bottomAnchor.plus(inset.bottom))]
            case (.vertical, _):
                constraintMap[view]?[.bottom] = [view.bottomAnchor.equal(to: container.bottomAnchor.plus(inset.bottom))]
            case (.horizontal, _):
                constraintMap[view]?[.trailing] = [view.trailingAnchor.equal(to: container.trailingAnchor.plus(inset.right))]
            }
        }
        return constraintMap
    }

    @discardableResult
    public func stack(_ axis: Constraint.Axis, spacing: LayoutConstant...) -> ConstraintHeirarchy {
        return stack(axis, spacing: spacing)
    }
    @discardableResult
    public func stack(_ axis: Constraint.Axis, spacing: [LayoutConstant]) -> ConstraintHeirarchy {

        assert(spacing.count == 0 || spacing.count == self.count - 1 || spacing.count == 1, "Invalid number of paramters for spacing")

        var constraintMap: ConstraintHeirarchy = [:]
        guard count > 1 else {
            return constraintMap
        }

        for (index, view) in self.enumerated() {
            guard index > 0 else {
                continue
            }
            let space = spacing[safe: index - 1] ?? spacing[safe: 0] ?? 0
            switch axis {
            case .vertical:
                constraintMap[view]?[.top] = [view.topAnchor.equal(to: self[index - 1].bottomAnchor.plus(space))]
            case .horizontal:
                constraintMap[view]?[.leading] = [view.leadingAnchor.equal(to: self[index - 1].trailingAnchor.plus(space))]
            }
        }
        return constraintMap
    }

}

private extension Collection {
    subscript(safe index: Index) -> Element? {
        return indices.contains(index) ? self[index] : nil
    }
}
