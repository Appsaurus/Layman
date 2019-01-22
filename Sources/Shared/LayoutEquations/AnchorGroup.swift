////
////  AnchorGroup.swift
////  UILayoutKit
////
////  Created by Brian Strobach on 1/7/19.
////  Copyright © 2019 Brian Strobach. All rights reserved.
////
//
//#if canImport(Cocoa)
//import Cocoa
//#else
//import UIKit
//#endif
//
//public typealias Autolayoutable = LayoutAnchorable & LayoutConstrainable
//
//public protocol LayoutConstrainable {}
//
//extension View: LayoutConstrainable {}
//extension LayoutGuide: LayoutConstrainable {}
//extension ViewController: LayoutConstrainable {}
//
//public protocol AnyLayoutAnchorable: NSObjectProtocol {
//    func anchors(_ attributes: ConstraintAttributes) -> [AnyLayoutAnchor]
//    func anchor(_ attribute: ConstraintAttribute) -> AnyLayoutAnchor
//}
//
//extension AnyLayoutAnchorable {
//    public func anchors(_ attributes: ConstraintAttributes) -> [NSLayoutAnchor<AnchorType>] {
//        return attributes.map {anchor($0)}
//    }
//}
//
//private let viewAttributesToAnchorMap: [ConstraintAttribute: (View) -> AnchorType] = [
//    .left: { $0.leftAnchor },
//    .right: { $0.rightAnchor },
//    .top: { $0.topAnchor },
//    .bottom: { $0.bottomAnchor },
//    .leading: { $0.leadingAnchor },
//    .trailing: { $0.trailingAnchor },
//    .width: { $0.widthAnchor },
//    .height: { $0.heightAnchor },
//    .centerX: { $0.centerXAnchor },
//    .centerY: { $0.centerYAnchor },
//    .lastBaseline: { $0.lastBaselineAnchor },
//    .firstBaseline: { $0.firstBaselineAnchor },
//    .leftMargin: { $0.layoutMarginsGuide.leftAnchor },
//    .rightMargin: { $0.layoutMarginsGuide.rightAnchor},
//    .topMargin: { $0.layoutMarginsGuide.topAnchor },
//    .bottomMargin: { $0.layoutMarginsGuide.bottomAnchor },
//    .leadingMargin: { $0.layoutMarginsGuide.leadingAnchor },
//    .trailingMargin: { $0.layoutMarginsGuide.trailingAnchor },
//    .centerXWithinMargins: { $0.layoutMarginsGuide.centerXAnchor },
//    .centerYWithinMargins: { $0.layoutMarginsGuide.centerYAnchor }
//]
//extension View: AnyLayoutAnchorable {
//
//    private var attributeToAnchorMap: [ConstraintAttribute: (View) -> AnchorType] {
//        return viewAttributesToAnchorMap
//    }
//
//    public func anchor(_ attribute: ConstraintAttribute) -> AnyLayoutAnchor {
//        guard let anchor = viewAttributesToAnchorMap[attribute]?(self) as? AnyLayoutAnchor else {
//            preconditionFailure(String(describing: self) + " does not support \(attribute) constraint attribute.")
//        }
//        return anchor
//    }
//}
//
////private let viewControllerAttributesToAnchorMap: [ConstraintAttribute : (View) -> AnchorType] = [
////    .left : { $0.leftAnchor },
////    .right : { $0.rightAnchor },
////    .top : { $0.topAnchor },
////    .bottom : { $0.bottomAnchor },
////    .leading : { $0.leadingAnchor },
////    .trailing : { $0.trailingAnchor },
////    .width : { $0.widthAnchor },
////    .height : { $0.heightAnchor },
////    .centerX : { $0.centerXAnchor },
////    .centerY : { $0.centerYAnchor },
////    .lastBaseline : { $0.lastBaselineAnchor },
////    .firstBaseline : { $0.firstBaselineAnchor },
////    .leftMargin : { $0.layoutMarginsGuide.leftAnchor },
////    .rightMargin : { $0.layoutMarginsGuide.rightAnchor},
////    .topMargin : { $0.layoutMarginsGuide.topAnchor },
////    .bottomMargin : { $0.layoutMarginsGuide.bottomAnchor },
////    .leadingMargin : { $0.layoutMarginsGuide.leadingAnchor },
////    .trailingMargin : { $0.layoutMarginsGuide.trailingAnchor },
////    .centerXWithinMargins : { $0.layoutMarginsGuide.centerXAnchor },
////    .centerYWithinMargins : { $0.layoutMarginsGuide.centerYAnchor }
////]
//
//extension ViewController: AnyLayoutAnchorable {
//    public func anchor(_ attribute: ConstraintAttribute) -> AnyLayoutAnchor {
//        guard let anchor = viewAttributesToAnchorMap[attribute]?(self.view) as? AnyLayoutAnchor else {
//            preconditionFailure(String(describing: self) + " does not support \(attribute) constraint attribute.")
//        }
//        return anchor
//    }
//}
//private let layoutGuideAttributesToAnchorMap: [ConstraintAttribute: (UILayoutGuide) -> AnchorType] = [
//    .left: { $0.leftAnchor },
//    .right: { $0.rightAnchor },
//    .top: { $0.topAnchor },
//    .bottom: { $0.bottomAnchor },
//    .leading: { $0.leadingAnchor },
//    .trailing: { $0.trailingAnchor },
//    .width: { $0.widthAnchor },
//    .height: { $0.heightAnchor },
//    .centerX: { $0.centerXAnchor },
//    .centerY: { $0.centerYAnchor }
//]
//extension UILayoutGuide: AnyLayoutAnchorable {
//
//    public func anchor(_ attribute: ConstraintAttribute) -> AnyLayoutAnchor {
//        guard let anchor = layoutGuideAttributesToAnchorMap[attribute]?(self) as? AnyLayoutAnchor else {
//            preconditionFailure(String(describing: self) + " does not support \(attribute) constraint attribute.")
//        }
//        return anchor
//    }
//}
//
////// MARK: - EdgeAnchors
////
////public struct EdgeAnchors {
////    public var horizontal: XAxisAnchors
////    public var vertical: YAxisAnchors
////}
//
////internal extension EdgeAnchors {
////    
////}
//
//////MARK: LayoutAnchor<LayoutDimension> == Constant
////@discardableResult
////public func == <A: LayoutAnchorable>(lhs: A, rhs: ConstraintItemAttributePair<A>) -> Constraint {
////    return LayoutRelationship(lhs.anchor(rhs.attribute), .equal, rhs.anchor).constraint
////}
////
////@discardableResult
////public func == <A: LayoutAnchorable>(lhs: A, rhs: [ConstraintItemAttributePair<A>]) -> Constraints {
////    return rhs.map{lhs == $0}
////}
//
////Type erased to accommodate LayoutAnchor of AnchorType aka AnyObject
////public func == <A: AnchorType>(lhs: LayoutAnchor<A>, rhs: LayoutAnchor<A>) -> Constraint {
////    return LayoutRelationship(lhs, .equal, rhs).constraint
////}
////public func == <A: AnchorType>(lhs: [LayoutAnchor<A>], rhs: [LayoutAnchor<A>]) -> Constraints {
////    return lhs.enumerated().map { (arg) -> Constraint in
////        let (index, element) = arg
////        return element == rhs[index]
////    }
////}
//
////public func == (lhs: View, rhs: [ViewAnchorPair]) -> Constraints {
////    return lhs[rhs.map {$0.attribute}].anchors == rhs.anchors
////}
//
//extension ConstraintAttribute {
//    public func of<A: AnyLayoutAnchorable>(_ item: A) -> ConstraintItemAttributePair<A> {
//        return ConstraintItemAttributePair(item: item, attribute: self)
//    }
//
//    public func anchor<A: AnyLayoutAnchorable>(_ item: A) -> AnyLayoutAnchor {
//        return item.anchor(self)
//    }
//}
//
//public struct ConstraintItemAttributePair<A: AnyLayoutAnchorable> {
//    public var item: A
//    public var attribute: ConstraintAttribute
//}
//extension ConstraintItemAttributePair where A: AnyLayoutAnchorable {
//    public var anchor: AnyLayoutAnchor {
//        return item.anchor(attribute)
//    }
//}
//
//// MARK: ConstraintAttributes extension
//extension Array where Element == ConstraintAttribute {
//    public func of<A: AnyLayoutAnchorable>(_ item: A) -> [ConstraintItemAttributePair<A>] {
//        return self.map {$0.of(item)}
//    }
//
//    public func anchors<A: AnyLayoutAnchorable>(_ item: A) -> [AnyLayoutAnchor] {
//        return item.anchors(self)
//    }
//}
//
//private let anchorMap: [View.AnchorEnum: (View) -> AnchorType] = [
//    .left: { $0.leftAnchor },
//    .right: { $0.rightAnchor },
//    .top: { $0.topAnchor },
//    .bottom: { $0.bottomAnchor }
//]
//
//extension Collection where Element == ViewAnchorPair {
//    public var anchors: [AnyLayoutAnchor] {
//        return map {$0.anchor}
//    }
//}
//public struct ViewAnchorPair {
//    internal var item: View
//    internal var attribute: View.AnchorEnum
//
//    public var anchor: AnyLayoutAnchor {
//        // swiftlint:disable:next force_cast
//        return attribute.anchor(view: item) as! AnyLayoutAnchor
//    }
//}
//extension View {
//    public enum AnchorEnum {
//        case left
//        case right
//        case top
//        case bottom
//
//        internal func anchor(view: View) -> AnchorType {
//            switch self {
//            case .left: return view.leftAnchor
//            case .right: return view.rightAnchor
//            case .top: return view.topAnchor
//            case .bottom: return view.bottomAnchor
//            }
//        }
//    }
//
//    public func anchor(for anchorEnum: AnchorEnum) -> AnyLayoutAnchor {
//        // swiftlint:disable:next force_cast
//        return anchorEnum.anchor(view: self) as! AnyLayoutAnchor
//    }
//
//    public subscript (attributes: [AnchorEnum]) -> [ViewAnchorPair] {
//        return attributes.map { ViewAnchorPair(item: self, attribute: $0) }
//    }
//
//    public subscript (attributes: AnchorEnum...) -> [ViewAnchorPair] {
//        return self[attributes]
//    }
//}
