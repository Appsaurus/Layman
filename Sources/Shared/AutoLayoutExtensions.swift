//
//  AutoLayoutExtensions.swift
//  AppsaurusUIKit
//
//  Created by Brian Strobach on 12/7/18.
//

import UIKit
import DinoDNA

//Dynamic Height TableView Header //TODO: Fix bug where height breaks after rotation
extension UITableView {
    public func layoutDynamicHeightHeaderView(width: CGFloat) {
        guard let headerView = tableHeaderView else { return }
        headerView.translatesAutoresizingMaskIntoConstraints = false
        let widthConstraint = headerView.autoSizeWidth(to: width)
        headerView.addConstraint(widthConstraint)
        headerView.forceAutolayoutPass()
        let height = headerView.systemLayoutSizeFitting(UIView.layoutFittingExpandedSize).height
        headerView.removeConstraint(widthConstraint)
        headerView.frame = CGRect(x: 0, y: 0, width: width, height: height)
        headerView.translatesAutoresizingMaskIntoConstraints = true
        self.tableHeaderView = headerView
    }
    
    /// Dynamically Size TableView headers with AutoLayout
    //  NOTE: Requires following override in UITableViewController
    //    open override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
    //        super.viewWillTransition(to: size, with: coordinator)
    //        self.tableView.layoutDynamicHeightHeaderView(width: size.width)
    //    }
    //
    //    override open func viewWillAppear(_ animated: Bool) {
    //        super.viewWillAppear(animated)
    //        self.tableView.layoutDynamicHeightHeaderView(width: self.tableView.bounds.width)
    //    }
    /// - Parameters:
    ///   - view: Base view for header
    ///   - insets: Insets for base view
    
    public func setupDynamicHeightTableHeaderView(fittingContentView view: UIView, insets: UIEdgeInsets = 20){
        tableHeaderView = UIView.parentViewFittingContent(of: view, insetBy: insets)
    }
    
}


public extension UIEdgeInsets{
    public init(padding: CGFloat){
        self.init(top: padding, left: padding, bottom: padding, right: padding)
    }
    
    public init(horizontalPadding: CGFloat = 0.0, verticalPadding: CGFloat = 0.0){
        self.init(top: verticalPadding, left: horizontalPadding, bottom: verticalPadding, right: horizontalPadding)
    }
    
    public init(t: CGFloat = 0.0, l: CGFloat = 0.0, b: CGFloat = 0.0, r: CGFloat = 0.0){
        self.init(top: t, left: l, bottom: b, right: r)
    }
    
    public static func padded(_ padding: CGFloat) -> UIEdgeInsets{
        return UIEdgeInsets(padding: padding)
    }
    
    public static func padded(horizontal: CGFloat = 0.0, vertical: CGFloat = 0.0) -> UIEdgeInsets{
        return UIEdgeInsets(horizontalPadding: horizontal, verticalPadding: vertical)
    }
}

extension UIEdgeInsets: ExpressibleByFloatLiteral{
    
    public init(floatLiteral value: Double) {
        self.init(padding: CGFloat(value))
    }
    
    public typealias FloatLiteralType = Double
}

extension UIEdgeInsets: ExpressibleByIntegerLiteral{
    public init(integerLiteral value: Int) {
         self.init(padding: CGFloat(value))
    }
    
    public typealias IntegerLiteralType = Int
}


extension UIEdgeInsets: ExpressibleByArrayLiteral{
    public init(arrayLiteral elements: DoubleConvertible...) {
        self.init(t: elements[safe: 0]?.toCGFloat ?? 0,
                  l: elements[safe: 1]?.toCGFloat ?? 0,
                  b: elements[safe: 2]?.toCGFloat ?? 0,
                  r: elements[safe: 3]?.toCGFloat ?? 0)
    }
    
    public typealias ArrayLiteralElement = DoubleConvertible
}
