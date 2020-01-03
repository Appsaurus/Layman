//
//  StackViewSpacer.swift
//  Layman
//
//  Created by Brian Strobach on 1/3/20.
//  Copyright © 2020 Brian Strobach. All rights reserved.
//

import UIKit

public extension StackView {

    func insert(spacer: Spacer, axis: NSLayoutConstraint.Axis? = nil, at index: Int) {
        let view = UIView()
        view.backgroundColor = .blue
        view.resistCompression(.high)
        view.hugContent(.low)
        insertArrangedSubview(view, at: index)

        let axis = axis ?? self.axis
        let primaryAnchor = axis == .vertical ? view.heightAnchor : view.widthAnchor
        let secondaryAnchor = axis == .vertical ? view.widthAnchor : view.heightAnchor


        switch spacer {
        case .flexible:
            primaryAnchor.greaterThanOrEqual(to: 1)
            primaryAnchor.equal(to: CGFloat(Int.max)).priority(.low)
            secondaryAnchor.equal(to: self)
        case .fixed(let space):
            if #available(iOS 11.0, *) {
                setCustomSpacing(space, after: view)
             } else {
                primaryAnchor.equal(to: space)
                secondaryAnchor.equal(to: self)
             }
        case .upTo(let space):
            primaryAnchor.lessThanOrEqual(to: space).priority(.high)
            primaryAnchor.greaterThanOrEqual(to: 0)
            secondaryAnchor.equal(to: self)
        case .atLeast(let space):
            primaryAnchor.greaterThanOrEqual(to: space)
            secondaryAnchor.equal(to: self)
        case .between(let minSpace, let maxSpace):
            primaryAnchor.greaterThanOrEqual(to: minSpace)
            primaryAnchor.lessThanOrEqual(to: maxSpace).priority(.high)
            secondaryAnchor.equal(to: self)
        }
    }
    func add(spacer: Spacer, axis: NSLayoutConstraint.Axis? = nil) {
        insert(spacer: spacer, axis: axis, at: arrangedSubviews.count)
    }
    func insert(spacer: Spacer, axis: NSLayoutConstraint.Axis? = nil, after view: UIView) {
        guard let index = arrangedSubviews.firstIndex(of: view) else { return }
        insert(spacer: spacer, axis: axis, at: index)
    }

    public enum Spacer: LayoutStackable {
        case flexible
        case fixed(CGFloat)
        case upTo(CGFloat)
        case atLeast(CGFloat)
        case between(CGFloat, CGFloat)
    }
}
