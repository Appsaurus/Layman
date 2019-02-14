////
////  AutoLayout.swift
////  Pods
////
////  Created by Brian Strobach on 1/19/17. (used KGNAutoLayout as basis)
////
////
//
//import UIKit
//import Swiftest
//// swiftlint:disable line_length file_length
//public typealias ConstraintDictionary = [ConstraintAttribute: Constraint]
//public typealias ConstraintDictionaryMap = [View: ConstraintDictionary]
//
//public protocol LayoutItem {}
//extension View: LayoutItem {}

//
//@available(iOS 9.0, *)
//extension UILayoutGuide: LayoutItem {}
//
// MARK: - Expand size of superview
extension View {
    fileprivate func assertSuperview() -> View {
        assert(superview != nil, "Attempted to create constraint between a view and its superview without a superview.")
        return superview!
    }

    public func matchContentSize(of view: View, insets: LayoutPadding = .zero) {
//        return matchContentHeight(of: view).merging(with: matchContentWidth(of: view))
        matchContentHeight(of: view)
        matchContentWidth(of: view)
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

//// MARK: - Matching Size
//
//extension View {
//    
//    /// Centers in and matches size of superview. Paramaters only apply to size constraints.
//    @discardableResult
//    public func autoCenterAndMatchSizeOfSuperview(withSizeOffset offset: CGFloat = 0, relatedBy: Constraint.Relation = .equal, multiplier: CGFloat = 1, priority: LayoutPriority? = .required) -> ConstraintDictionary {
//        return autoCenterInSuperview().merged(with: autoMatchSizeOfSuperview(withOffset: offset, relatedBy: relatedBy, multiplier: multiplier, priority: priority))
//    }

//
//extension View {
//    public func swap(subview: View, with replacementView: View) {
//        addSubview(replacementView)
//        for constraint: Constraint in self.constraints {
//            if constraint.firstItem as? View == subview {
//                addConstraint(Constraint(item: replacementView, attribute: constraint.firstAttribute, relatedBy: constraint.relation, toItem: constraint.secondItem, attribute: constraint.secondAttribute, multiplier: constraint.multiplier, constant: constraint.constant))
//            } else if constraint.secondItem as? View == subview {
//                addConstraint(Constraint(item: constraint.firstItem as Any, attribute: constraint.firstAttribute, relatedBy: constraint.relation, toItem: replacementView, attribute: constraint.secondAttribute, multiplier: constraint.multiplier, constant: constraint.constant))
//            }
//        }
//        subview.removeFromSuperview()
//    }
//}
//
//extension View {
//    public class func parentViewFittingContent(of view: View, insetBy insets: UIEdgeInsets = UIEdgeInsets(top: 20, left: 20, bottom: 20, right: 20)) -> View {
//        let layoutView: View = View()
//        layoutView.addSubview(view)
//        view.autoForceSuperviewToMatchContentSize(insetBy: insets)
//        return layoutView
//    }
//}
//
//extension View {
//    public func layoutDynamicHeight(forWidth width: CGFloat) {
//        translatesAutoresizingMaskIntoConstraints = false
//        let widthConstraint = autoSizeWidth(to: width)
//        addConstraint(widthConstraint)
//        forceAutolayoutPass()
//        let height = systemLayoutSizeFitting(View.layoutFittingExpandedSize).height
//        removeConstraint(widthConstraint)
//        frame = CGRect(x: 0, y: 0, width: width, height: height)
//        translatesAutoresizingMaskIntoConstraints = true
//    }
//}
