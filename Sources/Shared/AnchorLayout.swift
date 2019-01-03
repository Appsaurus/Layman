//
//  DynamicCellLayout.swift
//  Pods
//
//  Created by Brian Strobach on 7/13/17.
//
//

import UIKit

//public class AutoLayoutBuilder{
//	public enum LayoutAttribute{
//		case left
//		case right
//		case top
//		case bottom
//
//		case leading
//		case trailing
//
//		case width
//		case height
//
//		case centerX
//		case centerY
//
//		case lastBaseline
//
//		@available(iOS 8.0, *)
//		case firstBaseline
//
//
//		@available(iOS 8.0, *)
//		case leftMargin
//
//		@available(iOS 8.0, *)
//		case rightMargin
//
//		@available(iOS 8.0, *)
//		case topMargin
//
//		@available(iOS 8.0, *)
//		case bottomMargin
//
//		@available(iOS 8.0, *)
//		case leadingMargin
//
//		@available(iOS 8.0, *)
//		case trailingMargin
//
//		@available(iOS 8.0, *)
//		case centerXWithinMargins
//
//		@available(iOS 8.0, *)
//		case centerYWithinMargins
//
//		case topRight
//		case topLeft
//		case bottomRight
//		case bottomLeft
//	}
//}

extension UIView {
    fileprivate func assertSuperview() -> UIView{
        assert(superview != nil, "Åttempted to create constraint between a view and its superview without a superview.")
        return superview!
    }
    
    //Superview:
    
    @discardableResult
    public func anchorSidesToSuperview(constant: CGFloat = 0) -> Self {
        anchorLeftToSuperview(constant: constant)
        anchorRightToSuperview(constant: constant)
        return self
    }
    
    @discardableResult
    public func anchorTopAndBottomToSuperview(constant: CGFloat = 0) -> Self {
        anchorTopToSuperview(constant: constant)
        anchorBottomToSuperview(constant: constant)
        return self
    }
    
    @discardableResult
    public func anchorTopToSuperview(constant: CGFloat = 0) -> Self {
        topAnchor(equalTo: assertSuperview().topAnchor, constant: constant)
        return self
    }
    
    @discardableResult
    public func anchorBottomToSuperview(constant: CGFloat = 0) -> Self {
        bottomAnchor(equalTo: assertSuperview().bottomAnchor, constant: constant)
        return self
    }
    
    @discardableResult
    public func anchorRightToSuperview(constant: CGFloat = 0) -> Self {
        rightAnchor(equalTo: assertSuperview().rightAnchor, constant: constant)
        return self
    }
    
    @discardableResult
    public func anchorLeftToSuperview(constant: CGFloat = 0) -> Self {
        leftAnchor(equalTo: assertSuperview().leftAnchor, constant: constant)
        return self
    }
    
    @discardableResult
    public func anchorLeadingToSuperview(constant: CGFloat = 0) -> Self {
        leadingAnchor(equalTo: assertSuperview().leadingAnchor, constant: constant)
        return self
    }
    
    @discardableResult
    public func anchorTrailingToSuperview(constant: CGFloat = 0) -> Self {
        trailingAnchor(equalTo: assertSuperview().trailingAnchor, constant: constant)
        return self
    }
    
    @discardableResult
    public func anchorTop(equalTo anchor: NSLayoutYAxisAnchor, constant: CGFloat = 0) -> Self {
        topAnchor(equalTo: anchor, constant: constant)
        return self
    }
    
    @discardableResult
    public func anchorBottom(equalTo anchor: NSLayoutYAxisAnchor, constant: CGFloat = 0) -> Self {
        bottomAnchor(equalTo: anchor, constant: constant)
        return self
    }
    
    @discardableResult
    public func anchorLeading(equalTo anchor: NSLayoutXAxisAnchor, constant: CGFloat = 0) -> Self {
        leadingAnchor(equalTo: anchor, constant: constant)
        return self
    }
    
    @discardableResult
    public func anchorTrailing(equalTo anchor: NSLayoutXAxisAnchor, constant: CGFloat = 0) -> Self {
        trailingAnchor(equalTo: anchor, constant: constant)
        return self
    }
    
    @discardableResult
    public func anchorHeight(equalTo constant: CGFloat) -> Self {
        heightAnchor(equalTo: constant)
        return self
    }
    
    @discardableResult
    public func anchorWidth(equalTo constant: CGFloat) -> Self {
        widthAnchor(equalTo: constant)
        return self
    }
    
    @discardableResult
    public func topAnchor(equalTo anchor: NSLayoutYAxisAnchor, constant: CGFloat = 0) -> Constraint {
        return topAnchor.constraint(equalTo: anchor, constant: constant).activated()
    }
    
    @discardableResult
    public func bottomAnchor(equalTo anchor: NSLayoutYAxisAnchor, constant: CGFloat = 0) -> Constraint {
        return bottomAnchor.constraint(equalTo: anchor, constant: constant).activated()
    }
    
    @discardableResult
    public func leftAnchor(equalTo anchor: NSLayoutXAxisAnchor, constant: CGFloat = 0) -> Constraint {
        return leftAnchor.constraint(equalTo: anchor, constant: constant).activated()
    }
    
    @discardableResult
    public func rightAnchor(equalTo anchor: NSLayoutXAxisAnchor, constant: CGFloat = 0) -> Constraint {
        return rightAnchor.constraint(equalTo: anchor, constant: constant).activated()
    }
    
    @discardableResult
    public func leadingAnchor(equalTo anchor: NSLayoutXAxisAnchor, constant: CGFloat = 0) -> Constraint {
        return leadingAnchor.constraint(equalTo: anchor, constant: constant).activated()
    }
    
    @discardableResult
    public func trailingAnchor(equalTo anchor: NSLayoutXAxisAnchor, constant: CGFloat = 0) -> Constraint {
        return trailingAnchor.constraint(equalTo: anchor, constant: constant).activated()
    }
    
    @discardableResult
    public func heightAnchor(equalTo constant: CGFloat) -> Constraint {
        return heightAnchor.constraint(equalToConstant: constant).activated()
    }
    
    @discardableResult
    public func widthAnchor(equalTo constant: CGFloat) -> Constraint {
        return widthAnchor.constraint(equalToConstant: constant).activated()
    }
    
    //MARK: Inequality constraints
    
    //MARK: GreaterThan
    @discardableResult
    public func topAnchor(greaterThanOrEqualTo anchor: NSLayoutYAxisAnchor, constant: CGFloat = 0) -> Constraint {
        return topAnchor.constraint(greaterThanOrEqualTo: anchor, constant: constant).activated()
    }
    
    @discardableResult
    public func bottomAnchor(greaterThanOrEqualTo anchor: NSLayoutYAxisAnchor, constant: CGFloat = 0) -> Constraint {
        return bottomAnchor.constraint(greaterThanOrEqualTo: anchor, constant: constant).activated()
    }
    
    @discardableResult
    public func leftAnchor(greaterThanOrEqualTo anchor: NSLayoutXAxisAnchor, constant: CGFloat = 0) -> Constraint {
        return leftAnchor.constraint(greaterThanOrEqualTo: anchor, constant: constant).activated()
    }
    
    @discardableResult
    public func rightAnchor(greaterThanOrEqualTo anchor: NSLayoutXAxisAnchor, constant: CGFloat = 0) -> Constraint {
        return rightAnchor.constraint(greaterThanOrEqualTo: anchor, constant: constant).activated()
    }
    
    @discardableResult
    public func leadingAnchor(greaterThanOrEqualTo anchor: NSLayoutXAxisAnchor, constant: CGFloat = 0) -> Constraint {
        return leadingAnchor.constraint(greaterThanOrEqualTo: anchor, constant: constant).activated()
    }
    
    @discardableResult
    public func trailingAnchor(greaterThanOrEqualTo anchor: NSLayoutXAxisAnchor, constant: CGFloat = 0) -> Constraint {
        return trailingAnchor.constraint(greaterThanOrEqualTo: anchor, constant: constant).activated()
    }
    
    @discardableResult
    public func heightAnchor(greaterThanOrEqualTo constant: CGFloat) -> Constraint {
        return heightAnchor.constraint(greaterThanOrEqualToConstant: constant).activated()
    }
    
    @discardableResult
    public func widthAnchor(greaterThanOrEqualTo constant: CGFloat) -> Constraint {
        return widthAnchor.constraint(greaterThanOrEqualToConstant: constant).activated()
    }
    
    //MARK: LessThan
    @discardableResult
    public func topAnchor(lessThanOrEqualTo anchor: NSLayoutYAxisAnchor, constant: CGFloat = 0) -> Constraint {
        return topAnchor.constraint(lessThanOrEqualTo: anchor, constant: constant).activated()
    }
    
    @discardableResult
    public func bottomAnchor(lessThanOrEqualTo anchor: NSLayoutYAxisAnchor, constant: CGFloat = 0) -> Constraint {
        return bottomAnchor.constraint(lessThanOrEqualTo: anchor, constant: constant).activated()
    }
    
    @discardableResult
    public func leftAnchor(lessThanOrEqualTo anchor: NSLayoutXAxisAnchor, constant: CGFloat = 0) -> Constraint {
        return leftAnchor.constraint(lessThanOrEqualTo: anchor, constant: constant).activated()
    }
    
    @discardableResult
    public func rightAnchor(lessThanOrEqualTo anchor: NSLayoutXAxisAnchor, constant: CGFloat = 0) -> Constraint {
        return rightAnchor.constraint(lessThanOrEqualTo: anchor, constant: constant).activated()
    }
    
    @discardableResult
    public func leadingAnchor(lessThanOrEqualTo anchor: NSLayoutXAxisAnchor, constant: CGFloat = 0) -> Constraint {
        return leadingAnchor.constraint(lessThanOrEqualTo: anchor, constant: constant).activated()
    }
    
    @discardableResult
    public func trailingAnchor(lessThanOrEqualTo anchor: NSLayoutXAxisAnchor, constant: CGFloat = 0) -> Constraint {
        return trailingAnchor.constraint(lessThanOrEqualTo: anchor, constant: constant).activated()
    }
    
    @discardableResult
    public func heightAnchor(lessThanOrEqualTo constant: CGFloat) -> Constraint {
        return heightAnchor.constraint(lessThanOrEqualToConstant: constant).activated()
    }
    
    @discardableResult
    public func widthAnchor(lessThanOrEqualTo constant: CGFloat) -> Constraint {
        return widthAnchor.constraint(lessThanOrEqualToConstant: constant).activated()
    }
    
    
    public func anchorToSuperview(withInsets insets: UIEdgeInsets = .zero){
        anchorTopToSuperview(constant: insets.top)
        anchorBottomToSuperview(constant: -insets.bottom)
        anchorLeftToSuperview(constant: insets.left)
        anchorRightToSuperview(constant: -insets.right)
    }
//    public func expandSuperviewToFitContent(withInsets insets: UIEdgeInsets){
//        let sView = assertSuperview()
//        let insets = UIEdgeInsets.zero
//        sView.topAnchor(equalTo: topAnchor, constant: insets.top)
//        sView.leftAnchor(equalTo: leftAnchor, constant: insets.left)
//        sView.rightAnchor(equalTo: rightAnchor, constant: insets.right)
//        sView.bottomAnchor(equalTo: bottomAnchor, constant: insets.bottom)
//    }
    //MARK: To multiple views
    
    public func autoPinTop(toTopOf views: [UIView], offsetBy padding: CGFloat = 0.0){
        for view in views{
            topAnchor(equalTo: view.topAnchor, constant: -padding)
        }
    }
    
    public func autoPinBottom(toBottomOf views: [UIView], offsetBy padding: CGFloat = 0.0){
        for view in views{
            bottomAnchor(equalTo: view.bottomAnchor, constant: padding)
        }
    }
    
    public func autoPinTopAtOrAbove(views: [UIView], offsetByAtLeast padding: CGFloat = 0.0){
        for view in views{
            topAnchor(lessThanOrEqualTo: view.topAnchor, constant: -padding)
        }
    }
    
    public func autoPinBottomAtOrBelow(views: [UIView], offsetByAtLeast padding: CGFloat = 0.0){
        for view in views{
            bottomAnchor(greaterThanOrEqualTo: view.bottomAnchor, constant: padding)
        }
    }
    
    //For dynamic sized cells, apply to contentView
    //For dynamic sized cells, apply to contentView
    public func autoExpandHeight(toFitHeightOf views: [UIView], offsetBy padding: CGFloat, flexibleTop: Bool = false, flexibleBottom: Bool = true){
        autoExpandHeight(toFitHeightOf: views, topPadding: padding, flexibleTop: flexibleTop, bottomPadding: padding, flexibleBottom: flexibleBottom)
    }
    
    public func autoExpandHeight(toFitHeightOf views: [UIView], topPadding: CGFloat = 0.0, flexibleTop: Bool = false, bottomPadding: CGFloat = 0.0, flexibleBottom: Bool = true){
        if flexibleTop{
            autoPinTopAtOrAbove(views: views, offsetByAtLeast: topPadding)
        }
        else{
            autoPinTop(toTopOf: views, offsetBy: topPadding)
        }
        if flexibleBottom{
            autoPinBottomAtOrBelow(views: views, offsetByAtLeast: bottomPadding)
        }
        else{
            autoPinBottom(toBottomOf: views, offsetBy: bottomPadding)
        }
    }
    
}

extension Constraint{

    @discardableResult
    public func install() -> Constraint{

    }
    public func activated(_ active: Bool = true) -> Constraint{
        self.isActive = active
        return self
    }

    public func deactivated() -> Constraint{
        return activated(false)
    }
}
