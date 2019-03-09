//
//  View+ContentSizeRelations.swift
//  Layman-iOS
//
//  Created by Brian Strobach on 2/22/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

extension View {

    public func matchContentSize(of view: View, insets: LayoutPadding = .zero) {
        matchContentHeight(of: view, insets: insets)
        matchContentWidth(of: view, insets: insets)
    }

    public func matchContentWidth(of view: View, insets: LayoutPadding = .zero) {
        view.widthAnchor.greaterThanOrEqual(to: 0.0)
        horizontalEdges.equal(to: view.horizontalEdges)
        view.enforceContentSize()
    }

    public func matchContentHeight(of view: View, insets: LayoutPadding = .zero) {
        view.heightAnchor.greaterThanOrEqual(to: 0.0)
        verticalEdges.equal(to: view.verticalEdges)
        view.enforceContentSize()
    }

    public func forceSuperviewToMatchContentSize(insetBy insets: LayoutPadding = .zero) {
        assertSuperview().matchContentSize(of: self)
    }

    public func forceSuperviewToMatchContentWidth(insetBy insets: LayoutPadding = .zero) {
        assertSuperview().matchContentWidth(of: self)
    }

    public func forceSuperviewToMatchContentHeight(insetBy insets: LayoutPadding = .zero) {
        assertSuperview().matchContentHeight(of: self, insets: insets)
    }
}
