//
//  LayoutAnchor+KeyPaths.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/16/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

import UIKit

private let xAxisAnchorMap: [ConstraintAttribute: KeyPath<LayoutAnchorable, XAxisAnchor>] = [
    .left: \.leftAnchor,
    .right: \.rightAnchor,
    .leading: \.leadingAnchor,
    .trailing: \.trailingAnchor,
    .centerX: \.centerXAnchor,
    .leftMargin: \.leftAnchor,
    .rightMargin: \.rightAnchor,
    .leadingMargin: \.leadingAnchor,
    .trailingMargin: \.trailingAnchor,
    .centerXWithinMargins: \.centerXAnchor
]

private let yAxisAnchorMap: [ConstraintAttribute: KeyPath<LayoutAnchorable, YAxisAnchor>] = [
    .top: \.topAnchor,
    .bottom: \.bottomAnchor,
    .centerY: \.centerYAnchor,
//    .lastBaseline: \.lastBaselineAnchor,
//    .firstBaseline: \.firstBaselineAnchor,
    .topMargin: \.topAnchor,
    .bottomMargin: \.bottomAnchor,
    .centerYWithinMargins: \.centerYAnchor
]

private let layoutDimensionMap: [ConstraintAttribute: KeyPath<LayoutAnchorable, LayoutDimension>] = [
    .width: \.widthAnchor,
    .height: \.heightAnchor
]

private func keyPath(_ anchor: LayoutAnchor<XAxisAnchor>) -> KeyPath<LayoutAnchorable, XAxisAnchor> {
    let attribute = anchor.constraint(equalTo: anchor).firstAttribute
    guard let keyPath = xAxisAnchorMap[attribute] else {
        preconditionFailure(String(describing: anchor) + " cannot be converted into \(attribute) constraint attribute.")
    }
    return keyPath
}

internal prefix func ... (_ anchor: LayoutAnchor<XAxisAnchor>) -> KeyPath<LayoutAnchorable, XAxisAnchor> {
    return keyPath(anchor)
}

private func keyPath(_ anchor: LayoutAnchor<YAxisAnchor>) -> KeyPath<LayoutAnchorable, YAxisAnchor> {
    let attribute = anchor.constraint(equalTo: anchor).firstAttribute
    guard let keyPath = yAxisAnchorMap[attribute] else {
        preconditionFailure(String(describing: anchor) + " cannot be converted into \(attribute) constraint attribute.")
    }
    return keyPath
}

internal prefix func ... (_ anchor: LayoutAnchor<YAxisAnchor>) -> KeyPath<LayoutAnchorable, YAxisAnchor> {
    return keyPath(anchor)
}

private func keyPath(_ anchor: LayoutAnchor<LayoutDimension>) -> KeyPath<LayoutAnchorable, LayoutDimension> {
    let attribute = anchor.constraint(equalTo: anchor).firstAttribute
    guard let keyPath = layoutDimensionMap[attribute] else {
        preconditionFailure(String(describing: anchor) + " cannot be converted into \(attribute) constraint attribute.")
    }
    return keyPath
}

internal prefix func ... (_ anchor: LayoutAnchor<LayoutDimension>) -> KeyPath<LayoutAnchorable, LayoutDimension> {
    return keyPath(anchor)
}
