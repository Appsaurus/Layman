////
////  ImpliedRelationTests.swift
////  SharedTests
////
////  Created by Brian Strobach on 1/3/19.
////  Copyright © 2019 Brian Strobach. All rights reserved.
////
//
//#if canImport(AppKit)
//import AppKit
//#else
//import UIKit
//#endif
//
//@testable import UILayoutKit
//import XCTest
//
//class ImpliedRelationTests: UILayoutKitTestCase {
//
//    // MARK: WidthAnchor
//    func testWidthEquality() {
//        let constraint = view1 == relatedView.widthAnchor
//        constraint.assert(view1, .width, .equal, relatedView, .width)
//    }
//
//    func testArrayWidthEquality() {
//        let constraints = viewArray == relatedView.widthAnchor
//        constraints.assert(viewArray, .width, .equal, relatedView, .width)
//    }
//
//    func testWidthLessThan() {
//        let constraint = view1 <= relatedView.widthAnchor
//        constraint.assert(view1, .width, .lessThanOrEqual, relatedView, .width)
//    }
//
//    func testArrayWidthLessThan() {
//        let constraints = viewArray <= relatedView.widthAnchor
//        constraints.assert(viewArray, .width, .lessThanOrEqual, relatedView, .width)
//    }
//
//    func testWidthGreaterThan() {
//        let constraint = view1 >= relatedView.widthAnchor
//        constraint.assert(view1, .width, .greaterThanOrEqual, relatedView, .width)
//    }
//
//    func testArrayWidthGreaterThan() {
//        let constraints = viewArray >= relatedView.widthAnchor
//        constraints.assert(viewArray, .width, .greaterThanOrEqual, relatedView, .width)
//    }
//
//    func testWidthEqualityWithOffset() {
//        let constraint = view1.widthAnchor == relatedView.widthAnchor + 10
//        constraint.assert(view1, .width, .equal, relatedView, .width, constant: 10)
//    }
//
//    func testArrayWidthEqualityWithOffset() {
//        let constraints = viewArray == relatedView.widthAnchor + 10
//        constraints.assert(viewArray, .width, .equal, relatedView, .width, constant: 10)
//    }
//
//    func testWidthEqualityWithMultiplier() {
//        let constraint = view1 == relatedView.widthAnchor / 2
//        constraint.assert(view1, .width, .equal, relatedView, .width, multiplier: 0.5)
//    }
//
//    func testArrayWidthEqualityWithMultiplier() {
//        let constraints = viewArray == relatedView.widthAnchor / 2
//        constraints.assert(viewArray, .width, .equal, relatedView, .width, multiplier: 0.5)
//    }
//
//    func testEqualityWithOffsetAndMultiplier() {
//        let constraint = view1 == (relatedView.widthAnchor + 10) / 2
//        constraint.assert(view1, .width, .equal, relatedView, .width, constant: 10.0, multiplier: 0.5)
//    }
//
//    func testArrayEqualityWithOffsetAndMultiplier() {
//        let constraints = viewArray == (relatedView.widthAnchor + 10) / 2
//        constraints.assert(viewArray, .width, .equal, relatedView, .width, constant: 10.0, multiplier: 0.5)
//    }
//
//    func testEqualityWithPriorityConstant() {
//        let constraint = view1 == relatedView.widthAnchor ~ .low
//        constraint.assert(view1, .width, .equal, relatedView, .width, priority: .low)
//    }
//
//    func testArrayEqualityWithPriorityConstant() {
//        let constraints = viewArray == relatedView.widthAnchor ~ .low
//        constraints.assert(viewArray, .width, .equal, relatedView, .width, priority: .low)
//    }
//
//    func testEqualityWithPriorityLiteral() {
//        let constraint = view1 == relatedView.widthAnchor ~ 750
//        constraint.assert(view1, .width, .equal, relatedView, .width, priority: 750)
//    }
//
//    func testArrayEqualityWithPriorityLiteral() {
//        let constraints = viewArray == relatedView.widthAnchor ~ 750
//        constraints.assert(viewArray, .width, .equal, relatedView, .width, priority: 750)
//    }
//
//    func testEqualityWithPriorityConstantMath() {
//        let constraint = view1 == relatedView.widthAnchor ~ .high - 1
//        constraint.assert(view1, .width, .equal, relatedView, .width, priority: LayoutPriority(rawValue: 749))
//    }
//
////    func testArrayEqualityWithPriorityConstantMath() {
////        let constraints = viewArray == relatedView.widthAnchor ~ .high - 1
////        constraints.assert(viewArray, .width, .equal, relatedView, .width, priority: LayoutPriority(rawValue: 749))
////    }
//
//    func testEqualityWithPriorityLiteralMath() {
//        let constraint = view1 == relatedView.widthAnchor ~ LayoutPriority(rawValue: 750 - 1)
//        constraint.assert(view1, .width, .equal, relatedView, .width, priority: LayoutPriority(rawValue: 749))
//    }
////
////    func testArrayEqualityWithPriorityLiteralMath() {
////        let constraints = viewArray == relatedView.widthAnchor ~ LayoutPriority(rawValue: 750 - 1)
////        constraints.assert(viewArray, .width, .equal, relatedView, .width, priority: LayoutPriority(rawValue: 749))
////    }
//
//    func testEqualityWithOffsetAndPriorityMath() {
//        let constraint = view1 == relatedView.widthAnchor + 10 ~ .high - 1
//        constraint.assert(view1, .width, .equal, relatedView, .width, constant: 10, priority: 749)
//    }
//
////    func testArrayEqualityWithOffsetAndPriorityMath() {
////        let constraints = viewArray == relatedView.widthAnchor + 10 ~ .high - 1
////        constraints.assert(viewArray, .width, .equal, relatedView, .width, constant: 10, priority: 749)
////    }
//
//    func testEqualityWithOffsetAndMultiplierAndPriorityMath() {
//        let constraint = view1 == (relatedView.widthAnchor + 10) / 2 ~ .high - 1
//        constraint.assert(view1, .width, .equal, relatedView, .width, constant: 10, multiplier: 0.5, priority: 749)
//    }
//
////    func testArrayEqualityWithOffsetAndMultiplierAndPriorityMath() {
////        let constraints = viewArray == (relatedView.widthAnchor + 10) / 2 ~ .high - 1
////        constraints.assert(viewArray, .width, .equal, relatedView, .width, constant: 10, multiplier: 0.5, priority: 749)
////    }
//
////    func testXYAxesAnchors() {
////        let constraints = view1 == relatedView.centerAnchors
////        constraints.first.assert(view1, .centerX, .equal, relatedView, .centerX)
////        constraints.second.assert(view1, .centerY, .equal, relatedView, .centerY)
////
////    }
////    func testArrayXYAxesAnchors() {
////        let constraints = viewArray == relatedView.centerAnchors
////        constraints.map {$0.first}.assert(viewArray, .centerX, .equal, relatedView, .centerX)
////        constraints.map {$0.second}.assert(viewArray, .centerY, .equal, relatedView, .centerY)
////    }
////
////    func testXYAxesAnchorsWithOffsetAndPriority() {
////        let constraints = view1 == relatedView.centerAnchors + 10 ~ .high - 1
////        constraints.first.assert(view1, .centerX, .equal, relatedView, .centerX, constant: 10, priority: 749)
////        constraints.second.assert(view1, .centerY, .equal, relatedView, .centerY, constant: 10, priority: 749)
////    }
////
////    func testArrayXYAxesAnchorsWithOffsetAndPriority() {
////        let constraints = viewArray == relatedView.centerAnchors + 10 ~ .high - 1
////        constraints.map {$0.first}.assert(viewArray, .centerX, .equal, relatedView, .centerX, constant: 10, priority: 749)
////        constraints.map {$0.second}.assert(viewArray, .centerY, .equal, relatedView, .centerY, constant: 10, priority: 749)
////
////    }
////
////    func testHorizontalAnchors() {
////        let constraints = view1 == relatedView.horizontalAnchors + 10 ~ .high - 1
////        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, constant: 10, priority: 749)
////        constraints.second.assert(view1, .trailing, .equal, relatedView, .trailing, constant: -10, priority: 749)
////    }
////
////    func testArrayHorizontalAnchors() {
////        let constraints = viewArray == relatedView.horizontalAnchors + 10 ~ .high - 1
////        constraints.map {$0.first}.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 10, priority: 749)
////        constraints.map {$0.second}.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: -10, priority: 749)
////    }
////
////    func testVerticalAnchors() {
////        let constraints = view1 == relatedView.verticalAnchors + 10 ~ .high - 1
////        constraints.first.assert(view1, .top, .equal, relatedView, .top, constant: 10, priority: 749)
////        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: -10, priority: 749)
////    }
////
////    func testArrayVerticalAnchors() {
////        let constraints = viewArray == relatedView.verticalAnchors + 10 ~ .high - 1
////        constraints.map {$0.first}.assert(viewArray, .top, .equal, relatedView, .top, constant: 10, priority: 749)
////        constraints.map {$0.second}.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: -10, priority: 749)
////    }
////
////    func testSizeAnchors() {
////        let constraints = view1 == relatedView.sizeAnchors + 10 ~ .high - 1
////        constraints.first.assert(view1, .width, .equal, relatedView, .width, constant: 10, priority: 749)
////        constraints.second.assert(view1, .height, .equal, relatedView, .height, constant: 10, priority: 749)
////    }
////
////    func testArraySizeAnchors() {
////        let constraints = viewArray == relatedView.sizeAnchors + 10 ~ .high - 1
////        constraints.map {$0.first}.assert(viewArray, .width, .equal, relatedView, .width, constant: 10, priority: 749)
////        constraints.map {$0.second}.assert(viewArray, .height, .equal, relatedView, .height, constant: 10, priority: 749)
////    }
////
////    func testSizeAnchorsWithConstants() {
////        let constraints = view1.sizeAnchors == CGSize(width: 50, height: 100) ~ .high - 1
////        constraints.first.assert(view1, .width, .equal, constant: 50, priority: 749)
////        constraints.second.assert(view1, .height, .equal, constant: 100, priority: 749)
////    }
////
////    func testArraySizeAnchorsWithConstants() {
////        let constraints = viewArray.sizeAnchors == CGSize(width: 50, height: 100) ~ .high - 1
////        constraints.map {$0.first}.assert(viewArray, .width, .equal, constant: 50, priority: 749)
////        constraints.map {$0.second}.assert(viewArray, .height, .equal, constant: 100, priority: 749)
////    }
////
////    func testEdgeAnchors() {
////        let constraints = view1 == relatedView.edgeAnchors + 10 ~ .high -
////        constraints.top.assert(view1, .top, .equal, relatedView, .top, constant: 10, priority: 749)
////        constraints.leading.assert(view1, .leading, .equal, relatedView, .leading, constant: 10, priority: 749)
////        constraints.bottom.assert(view1, .bottom, .equal, relatedView, .bottom, constant: -10, priority: 749)
////        constraints.trailing.assert(view1, .trailing, .equal, relatedView, .trailing, constant: -10, priority: 749)
////    }
////
////    func testEdgeAnchorsWithInsets() {
////        let insets = UIEdgeInsets(top: 10, left: 5, bottom: 15, right: 20)
////
////        let constraints = view1 == relatedView.edgeAnchors + insets ~ .high - 1
////        constraints.top.assert(view1, .top, .equal, relatedView, .top, constant: 10, priority: 749)
////        constraints.leading.assert(view1, .leading, .equal, relatedView, .leading, constant: 5, priority: 749)
////        constraints.bottom.assert(view1, .bottom, .equal, relatedView, .bottom, constant: -15, priority: 749)
////        constraints.trailing.assert(view1, .trailing, .equal, relatedView, .trailing, constant: -20, priority: 749)
////    }
//}
