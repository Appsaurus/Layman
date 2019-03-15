//
//  View+ContentSizeRelations.swift
//  Layman-iOS
//
//  Created by Brian Strobach on 2/22/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

extension View {

    public func matchContentSize(of view: View, padding: LayoutPadding = .zero, usingMargins: Bool = true) {
        matchContentHeight(of: view, padding: padding.vertical)
        matchContentWidth(of: view, padding: padding.horizontal)
    }

    public func matchContentWidth(of view: View, padding: (LayoutConstant, LayoutConstant) = (0, 0), usingMargins: Bool = true) {
        view.widthAnchor.greaterThanOrEqual(to: 0.0)
        view.horizontalEdges.equal(to: horizontalEdges.inset(padding))
        view.enforceContentSize()
    }

    public func matchContentHeight(of view: View, padding: (LayoutConstant, LayoutConstant) = (0, 0), usingMargins: Bool = true) {
        view.heightAnchor.greaterThanOrEqual(to: 0.0)
        view.verticalEdges.equal(to: verticalEdges.inset(padding))
        view.enforceContentSize()
    }

    public func forceSuperviewToMatchContentSize(insetBy insets: LayoutPadding = .zero, usingMargins: Bool = true) {
        assertSuperview.matchContentSize(of: self, padding: insets)
    }

    public func forceSuperviewToMatchContentWidth(insetBy insets: (LayoutConstant, LayoutConstant) = (0, 0), usingMargins: Bool = true) {
        assertSuperview.matchContentWidth(of: self, padding: insets)
    }

    public func forceSuperviewToMatchContentHeight(insetBy insets: (LayoutConstant, LayoutConstant) = (0, 0), usingMargins: Bool = true) {
        assertSuperview.matchContentHeight(of: self, padding: insets)
    }
}

public enum ExpandingHeightAttribute {
    case bottom
    case top
}
extension View {
    //For dynamic sized cells, apply to contentView
    public func autoExpandHeightToFit(views: [View], padding: LayoutConstantTuple, expandingAttribute: ExpandingHeightAttribute = .bottom, relativeToMargins: Bool = true) {
        let anchorable: XYAxisAnchorable = relativeToMargins ? margins : self
        switch expandingAttribute {
        case .top:
            anchorable.top.lessThanOrEqual(to: views.top.minus(padding.second))
            anchorable.bottom.equal(to: views.bottom.plus(padding.first))
        case .bottom:
            anchorable.top.equal(to: views.top.minus(padding.second))
            anchorable.bottom.greaterThanOrEqual(to: views.bottom.plus(padding.first))
        }
    }
}
