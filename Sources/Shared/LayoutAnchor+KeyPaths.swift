//
//  LayoutAnchor+KeyPaths.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/16/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

import UIKit

// MARK: XAxisAnchor

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

internal prefix func ... (_ anchorExpression: XAxisAnchorExpression) -> KeyPath<LayoutAnchorable, XAxisAnchor> {
    return ...anchorExpression.anchor
}

// MARK: YAxisAnchor

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

internal prefix func ... (_ anchorExpression: YAxisAnchorExpression) -> KeyPath<LayoutAnchorable, YAxisAnchor> {
    return ...anchorExpression.anchor
}

// MARK: LayoutDimension

private let layoutDimensionMap: [ConstraintAttribute: KeyPath<LayoutAnchorable, LayoutDimension>] = [
    .width: \.widthAnchor,
    .height: \.heightAnchor
]

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

internal prefix func ... (_ anchorExpression: LayoutDimensionExpression) -> KeyPath<LayoutAnchorable, LayoutDimension> {
    return ...anchorExpression.anchor
}

internal protocol KeyPathExtracting {
    associatedtype Root
    associatedtype Value
    associatedtype Input

    static func keyPath(_ input: Input) -> K
}

extension KeyPathExtracting {
    typealias K = KeyPath<Root, Value>
}

internal protocol AnchorKeyPathExtracting: KeyPathExtracting where Value: AnchorType {
    associatedtype Root = LayoutAnchorable
    associatedtype Input = LayoutAnchor<Value>
    static var constraintKeyPathMap: [ConstraintAttribute: K] { get }
}

extension AnchorKeyPathExtracting {

    internal static func keyPath(_ input: LayoutAnchor<Value>) -> K {
        let attribute = input.constraint(equalTo: input).firstAttribute
        guard let keyPath = constraintKeyPathMap[attribute] else {
            preconditionFailure(String(describing: input) + " cannot be converted into \(attribute) constraint attribute.")
        }
        return keyPath
    }
}
internal class XAxisKeyPathExctractor: AnchorKeyPathExtracting {
    typealias Value = XAxisAnchor
    static let constraintKeyPathMap: [ConstraintAttribute: KeyPath<LayoutAnchorable, XAxisAnchor>] = [
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
}

//
//internal protocol AnchorPairKeyPathExtracting: KeyPathExtracting where Value: LayoutAnchorPair<FirstAnchorType, SecondAnchorType> {
//
//    associatedtype FirstAnchorType: AnchorType
//    associatedtype SecondAnchorType: AnchorType
//    associatedtype Root = LayoutAnchorable
//    associatedtype Input = Value
//    static var constraintKeyPathMap: [ConstraintAttribute: K] { get }
//}
//
//extension AnchorPairKeyPathExtracting where Root == LayoutAnchorable{
//
//    internal static func keyPath(_ input: LayoutAnchorPair<FirstAnchorType, SecondAnchorType>) -> K {
//        let firstAnchorAttribute = input.first.constraint(equalTo: input.first).firstAttribute
//        let secondAnchorAttribute = input.second.constraint(equalTo: input.second).firstAttribute
//        switch (firstAnchorAttribute, secondAnchorAttribute) {
//            case (.top, .bottom):
//                return \LayoutAnchorable.verticalAnchors
//            case (.leading, .trailing):
//                return \.horizontalAnchors
//            case (.width, .height):
//                return \.sizeAnchors
//            case (.centerX, .centerY):
//                return \.centerAnchors
//
//        default:
//            preconditionFailure("\(input.first) and \(input.second) with attributes \(firstAnchorAttribute) and \(secondAnchorAttribute) cannot be inferred as an anchor pair.")
//        }
//    }
//}

internal prefix func ... (_ anchorPair: LayoutDimensionPair) -> KeyPath<LayoutAnchorable, LayoutDimensionPair> {
    let firstAnchorAttribute = anchorPair.first.attribute
    let secondAnchorAttribute = anchorPair.second.attribute
    guard firstAnchorAttribute == .width, secondAnchorAttribute == .height else {
        preconditionFailure("\(anchorPair.first) and \(anchorPair.second) with attributes \(firstAnchorAttribute) and \(secondAnchorAttribute) cannot be inferred as LayoutDimensionPair.")
    }
    return \.sizeAnchors
}

internal prefix func ... (_ anchorPairExpression: LayoutDimensionPairExpression) -> KeyPath<LayoutAnchorable, LayoutDimensionPair> {
    return ...anchorPairExpression.anchor
}

internal prefix func ... (_ anchorPair: XYAxesAnchorPair) -> KeyPath<LayoutAnchorable, XYAxesAnchorPair> {
    let firstAnchorAttribute = anchorPair.first.attribute
    let secondAnchorAttribute = anchorPair.second.attribute
    switch (firstAnchorAttribute, secondAnchorAttribute) {
    case (.left, .top):
        return \.topLeftAnchors
    case (.right, .top):
        return \.topRightAnchors
    case (.right, .bottom):
        return \.bottomRightAnchors
    case (.left, .bottom):
        return \.bottomLeftAnchors
    case (.centerX, .centerY):
        return \.centerAnchors
    default:
        preconditionFailure("\(anchorPair.first) and \(anchorPair.second) with attributes \(firstAnchorAttribute) and \(secondAnchorAttribute) cannot be inferred as XYAxesAnchorPair.")
    }
}

internal prefix func ... (_ anchorPairExpression: XYAxesAnchorPairExpression) -> KeyPath<LayoutAnchorable, XYAxesAnchorPair> {
    return ...anchorPairExpression.anchor
}

internal prefix func ... (_ anchorPair: YAxisAnchorPair) -> KeyPath<LayoutAnchorable, YAxisAnchorPair> {
    let firstAnchorAttribute = anchorPair.first.attribute
    let secondAnchorAttribute = anchorPair.second.attribute
    switch (firstAnchorAttribute, secondAnchorAttribute) {
    case (.top, .bottom):
        return \.verticalEdgeAnchors
    default:
        preconditionFailure("\(anchorPair.first) and \(anchorPair.second) with attributes \(firstAnchorAttribute) and \(secondAnchorAttribute) cannot be inferred as YAxisAnchorPair.")
    }
}

internal prefix func ... (_ anchorPairExpression: YAxisAnchorPairExpression) -> KeyPath<LayoutAnchorable, YAxisAnchorPair> {
    return ...anchorPairExpression.anchor
}

internal prefix func ... (_ anchorPair: XAxisAnchorPair) -> KeyPath<LayoutAnchorable, XAxisAnchorPair> {
    let firstAnchorAttribute = anchorPair.first.attribute
    let secondAnchorAttribute = anchorPair.second.attribute
    switch (firstAnchorAttribute, secondAnchorAttribute) {
    case (.leading, .trailing):
        return \.horizontalEdgeAnchors
    default:
        preconditionFailure("\(anchorPair.first) and \(anchorPair.second) with attributes \(firstAnchorAttribute) and \(secondAnchorAttribute) cannot be inferred as XAxisAnchorPair.")
    }
}

internal prefix func ... (_ anchorPairExpression: XAxisAnchorPairExpression) -> KeyPath<LayoutAnchorable, XAxisAnchorPair> {
    return ...anchorPairExpression.anchor
}

internal prefix func ... (_ anchorGroup: EdgeAnchorGroup) -> KeyPath<LayoutAnchorable, EdgeAnchorGroup> {
    return \LayoutAnchorable.edgeAnchors
}

internal prefix func ... (_ anchorGroupExpression: EdgeAnchorGroupExpression) -> KeyPath<LayoutAnchorable, EdgeAnchorGroup> {
    return \LayoutAnchorable.edgeAnchors
}

extension LayoutAnchor where AnchorType == LayoutDimension {
    public var attribute: ConstraintAttribute {
        return constraint(equalTo: self).firstAttribute
    }
}

extension LayoutAnchor where AnchorType == XAxisAnchor {
    public var attribute: ConstraintAttribute {
        return constraint(equalTo: self).firstAttribute
    }
}

extension LayoutAnchor where AnchorType == YAxisAnchor {
    public var attribute: ConstraintAttribute {
        return constraint(equalTo: self).firstAttribute
    }
}
