//
//  StackView+ArrangedSubviewsSugar.swift
//  Layman
//
//  Created by Brian Strobach on 1/3/20.
//  Copyright © 2020 Brian Strobach. All rights reserved.
//

import UIKit

@available(iOS 9.0, *)
public extension UIStackView {
    func addArrangedSubviews(_ views: [UIView]) {
        views.forEach {addArrangedSubview($0)}
    }

    func clearArrangedSubviews(removeFromSuperView: Bool = true) {
        removeArrangedSubviews(arrangedSubviews, removeFromSuperview: removeFromSuperView)
    }

    func swapArrangedSubviews(for arrangedSubviews: [UIView], removeFromSuperView: Bool = true) {
        clearArrangedSubviews(removeFromSuperView: removeFromSuperView)
        UIView.performWithoutAnimation {
            addArrangedSubviews(arrangedSubviews)
        }
    }

    func removeArrangedSubview(_ view: UIView, removeFromSuperview: Bool = true) {
        removeArrangedSubview(view)
        if removeFromSuperview == true {
            view.removeFromSuperview()
        }
    }

    func removeArrangedSubviews(_ views: [UIView], removeFromSuperview: Bool = true) {
        views.forEach {
            removeArrangedSubview($0, removeFromSuperview: removeFromSuperview)
        }
    }

    func replaceArrangedSubview(at index: Int, with subview: UIView, removeFromSuperview: Bool = true) {
        guard arrangedSubviews.count > index else { return }
        let view = arrangedSubviews[index]
        removeArrangedSubview(view, removeFromSuperview: removeFromSuperview)
        insertArrangedSubview(subview, at: index)
    }

    func replaceArrangedSubview(subview: UIView, with newSubview: UIView, removeFromSuperview: Bool = true) {
        guard let index = arrangedSubviews.firstIndex(of: subview) else { return }
        removeArrangedSubview(subview, removeFromSuperview: removeFromSuperview)
        insertArrangedSubview(newSubview, at: index)

    }

    func removeArrangedSubview(at index: Int, removeFromSuperview: Bool = true) {
        let subview = arrangedSubviews[index]
        removeArrangedSubview(subview, removeFromSuperview: removeFromSuperview)
    }

    func removeArrangedSubviews(after index: Int, removeFromSuperview: Bool = true) {
        for idx in (index + 1...arrangedSubviews.count - 1).reversed() {
            removeArrangedSubview(at: idx, removeFromSuperview: removeFromSuperview)
        }
    }
}
