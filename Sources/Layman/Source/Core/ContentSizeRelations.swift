//
//  View+ContentSizeRelations.swift
//  Layman-iOS
//
//  Created by Brian Strobach on 2/22/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

extension View {

    public func matchContentSize(of view: View, padding: LayoutPadding = .zero, usingMargins: Bool = false) {
        matchContentHeight(of: view, padding: padding.vertical, usingMargins: usingMargins)
        matchContentWidth(of: view, padding: padding.horizontal, usingMargins: usingMargins)
    }

    public func matchContentWidth(of view: View, padding: (LayoutConstant, LayoutConstant) = (0, 0), usingMargins: Bool = false) {
        view.widthAnchor.greaterThanOrEqual(to: 0.0)
        var edgesToConstrain = usingMargins ? margins.horizontalEdges : horizontalEdges
        view.horizontalEdges.equal(to: edgesToConstrain.inset(padding))
        view.enforceContentSize()
    }

    public func matchContentHeight(of view: View, padding: (LayoutConstant, LayoutConstant) = (0, 0), usingMargins: Bool = false) {
        view.heightAnchor.greaterThanOrEqual(to: 0.0)
        var edgesToConstrain = usingMargins ? margins.verticalEdges : verticalEdges
        view.verticalEdges.equal(to: edgesToConstrain.inset(padding))
        view.enforceContentSize()
    }

    public func forceSuperviewToMatchContentSize(insetBy insets: LayoutPadding = .zero, usingMargins: Bool = false) {
        assertSuperview.matchContentSize(of: self, padding: insets, usingMargins: usingMargins)
    }

    public func forceSuperviewToMatchContentWidth(insetBy insets: (LayoutConstant, LayoutConstant) = (0, 0), usingMargins: Bool = false) {
        assertSuperview.matchContentWidth(of: self, padding: insets, usingMargins: usingMargins)
    }

    public func forceSuperviewToMatchContentHeight(insetBy insets: (LayoutConstant, LayoutConstant) = (0, 0), usingMargins: Bool = false) {
        assertSuperview.matchContentHeight(of: self, padding: insets, usingMargins: usingMargins)
    }
}

public enum ExpandingHeightAttribute {
    case bottom
    case top
}
extension View {
    //For dynamic sized cells, apply to contentView
    public func autoExpandHeightToFit(views: [View],
                                      padding: LayoutConstantTuple = (0, 0),
                                      expandingAttribute: ExpandingHeightAttribute = .bottom,
                                      relativeToMargins: Bool = false) {
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
