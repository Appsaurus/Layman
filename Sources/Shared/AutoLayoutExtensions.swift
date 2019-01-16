//
//  AutoLayoutExtensions.swift
//  AppsaurusUIKit
//
//  Created by Brian Strobach on 12/7/18.
//
//
//#if canImport(UIKit)
//import UIKit
//import UIKitExtensions
//
////Dynamic Height TableView Header, need to fix bug where height breaks after rotation
//extension UITableView {
//    public func layoutDynamicHeightHeaderView(width: CGFloat) {
//        guard let headerView = tableHeaderView else { return }
//        headerView.translatesAutoresizingMaskIntoConstraints = false
//        let widthConstraint = headerView.autoSizeWidth(to: width)
//        headerView.addConstraint(widthConstraint)
//        headerView.forceAutolayoutPass()
//        let height = headerView.systemLayoutSizeFitting(UIView.layoutFittingExpandedSize).height
//        headerView.removeConstraint(widthConstraint)
//        headerView.frame = CGRect(x: 0, y: 0, width: width, height: height)
//        headerView.translatesAutoresizingMaskIntoConstraints = true
//        self.tableHeaderView = headerView
//    }
//
//    /// Dynamically Size TableView headers with AutoLayout
//    //  NOTE: Requires following override in UITableViewController
//    //    open override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
//    //        super.viewWillTransition(to: size, with: coordinator)
//    //        self.tableView.layoutDynamicHeightHeaderView(width: size.width)
//    //    }
//    //
//    //    override open func viewWillAppear(_ animated: Bool) {
//    //        super.viewWillAppear(animated)
//    //        self.tableView.layoutDynamicHeightHeaderView(width: self.tableView.bounds.width)
//    //    }
//    /// - Parameters:
//    ///   - view: Base view for header
//    ///   - insets: Insets for base view
//
//    public func setupDynamicHeightTableHeaderView(fittingContentView view: UIView,
//                                                  insets: UIEdgeInsets = 20) {
//        tableHeaderView = UIView.parentViewFittingContent(of: view, insetBy: insets)
//    }
//
//}
//
//#endif
