//
//  View+ContentSizeRelations.swift
//  Layman-iOS
//
//  Created by Brian Strobach on 2/22/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

extension View {

    public func matchContentSize(of view: View, padding: LayoutPadding = .zero) {
        matchContentHeight(of: view, padding: padding.vertical)
        matchContentWidth(of: view, padding: padding.horizontal)
    }

    public func matchContentWidth(of view: View, padding: (LayoutConstant, LayoutConstant) = (0, 0)) {
        view.widthAnchor.greaterThanOrEqual(to: 0.0)
        horizontalEdges.equal(to: view.horizontalEdges)
        view.enforceContentSize()
    }

    public func matchContentHeight(of view: View, padding: (LayoutConstant, LayoutConstant) = (0, 0)) {
        view.heightAnchor.greaterThanOrEqual(to: 0.0)
        verticalEdges.outsetOrEqual(to: view.verticalEdges.outset(padding))
        view.enforceContentSize()
    }

    public func matchContentSize(of views: [View], padding: LayoutPadding = .zero) {
        views.forEach { matchContentSize(of: $0, padding: padding) }
    }

    public func matchContentWidth(of views: [View], padding: (LayoutConstant, LayoutConstant) = (0, 0)) {
        views.forEach { matchContentWidth(of: $0, padding: padding) }
    }

    public func matchContentHeight(of views: [View], padding: (LayoutConstant, LayoutConstant) = (0, 0)) {
        views.forEach { matchContentHeight(of: $0, padding: padding) }
    }

    public func forceSuperviewToMatchContentSize(insetBy insets: LayoutPadding = .zero) {
        assertSuperview().matchContentSize(of: self, padding: insets)
    }

    public func forceSuperviewToMatchContentWidth(insetBy insets: (LayoutConstant, LayoutConstant) = (0, 0)) {
        assertSuperview().matchContentWidth(of: self, padding: insets)
    }

    public func forceSuperviewToMatchContentHeight(insetBy insets: (LayoutConstant, LayoutConstant) = (0, 0)) {
        assertSuperview().matchContentHeight(of: self, padding: insets)
    }
}
