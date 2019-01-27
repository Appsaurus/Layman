//
//  CompilationPerformanceTests.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/24/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

// NOTE: These are not true automated tests. These are meant to be used in
// conjunction with compiler flags to manually check if certain methods are
// compilation bottlenecks. Each function builds the same constraint 50 times.

@testable import UILayoutKit
import XCTest
import SwiftTestUtils

// swiftlint:disable type_body_length file_length function_body_length
// sourcery: functionName = "dimensionAnchorPlusConstantCompilationBenchmark", body = "relatedView.widthAnchor + 10"
// sourcery: functionName = "layoutDimensionEqualityImpliedCompilationBenchmark", body = "view1 == relatedView.width"
// sourcery: compilationTest
class CompilationPerformanceTests: UILayoutKitTestCase {

//    func dimensionAnchorPlusConstantCompilationBenchmark() {
//        relatedView.widthAnchor + 10
//        relatedView.widthAnchor + 10
//        relatedView.widthAnchor + 10
//        relatedView.widthAnchor + 10
//        relatedView.widthAnchor + 10
//        relatedView.widthAnchor + 10
//        relatedView.widthAnchor + 10
//        relatedView.widthAnchor + 10
//        relatedView.widthAnchor + 10
//        relatedView.widthAnchor + 10
//        relatedView.widthAnchor + 10
//        relatedView.widthAnchor + 10
//        relatedView.widthAnchor + 10
//        relatedView.widthAnchor + 10
//        relatedView.widthAnchor + 10
//        relatedView.widthAnchor + 10
//        relatedView.widthAnchor + 10
//        relatedView.widthAnchor + 10
//        relatedView.widthAnchor + 10
//        relatedView.widthAnchor + 10
//        relatedView.widthAnchor + 10
//        relatedView.widthAnchor + 10
//        relatedView.widthAnchor + 10
//        relatedView.widthAnchor + 10
//        relatedView.widthAnchor + 10
//        relatedView.widthAnchor + 10
//        relatedView.widthAnchor + 10
//        relatedView.widthAnchor + 10
//        relatedView.widthAnchor + 10
//        relatedView.widthAnchor + 10
//        relatedView.widthAnchor + 10
//        relatedView.widthAnchor + 10
//        relatedView.widthAnchor + 10
//        relatedView.widthAnchor + 10
//        relatedView.widthAnchor + 10
//        relatedView.widthAnchor + 10
//        relatedView.widthAnchor + 10
//        relatedView.widthAnchor + 10
//        relatedView.widthAnchor + 10
//        relatedView.widthAnchor + 10
//        relatedView.widthAnchor + 10
//        relatedView.widthAnchor + 10
//        relatedView.widthAnchor + 10
//        relatedView.widthAnchor + 10
//        relatedView.widthAnchor + 10
//        relatedView.widthAnchor + 10
//        relatedView.widthAnchor + 10
//        relatedView.widthAnchor + 10
//        relatedView.widthAnchor + 10
//        relatedView.widthAnchor + 10
//    }
//
//    func layoutDimensionEqualityImpliedCompilationBenchmark() {
//        view1 .= relatedView.width
//        view1 .= relatedView.width
//        view1 .= relatedView.width
//        view1 .= relatedView.width
//        view1 .= relatedView.width
//        view1 .= relatedView.width
//        view1 .= relatedView.width
//        view1 .= relatedView.width
//        view1 .= relatedView.width
//        view1 .= relatedView.width
//        view1 .= relatedView.width
//        view1 .= relatedView.width
//        view1 .= relatedView.width
//        view1 .= relatedView.width
//        view1 .= relatedView.width
//        view1 .= relatedView.width
//        view1 .= relatedView.width
//        view1 .= relatedView.width
//        view1 .= relatedView.width
//        view1 .= relatedView.width
//        view1 .= relatedView.width
//        view1 .= relatedView.width
//        view1 .= relatedView.width
//        view1 .= relatedView.width
//        view1 .= relatedView.width
//        view1 .= relatedView.width
//        view1 .= relatedView.width
//        view1 .= relatedView.width
//        view1 .= relatedView.width
//        view1 .= relatedView.width
//        view1 .= relatedView.width
//        view1 .= relatedView.width
//        view1 .= relatedView.width
//        view1 .= relatedView.width
//        view1 .= relatedView.width
//        view1 .= relatedView.width
//        view1 .= relatedView.width
//        view1 .= relatedView.width
//        view1 .= relatedView.width
//        view1 .= relatedView.width
//        view1 .= relatedView.width
//        view1 .= relatedView.width
//        view1 .= relatedView.width
//        view1 .= relatedView.width
//        view1 .= relatedView.width
//        view1 .= relatedView.width
//        view1 .= relatedView.width
//        view1 .= relatedView.width
//        view1 .= relatedView.width
//        view1 .= relatedView.width
//    }
//
//    func layoutDimensionEqualityShorthandCompilationBenchmark() {
//        view1.width .= relatedView.width
//        view1.width .= relatedView.width
//        view1.width .= relatedView.width
//        view1.width .= relatedView.width
//        view1.width .= relatedView.width
//        view1.width .= relatedView.width
//        view1.width .= relatedView.width
//        view1.width .= relatedView.width
//        view1.width .= relatedView.width
//        view1.width .= relatedView.width
//        view1.width .= relatedView.width
//        view1.width .= relatedView.width
//        view1.width .= relatedView.width
//        view1.width .= relatedView.width
//        view1.width .= relatedView.width
//        view1.width .= relatedView.width
//        view1.width .= relatedView.width
//        view1.width .= relatedView.width
//        view1.width .= relatedView.width
//        view1.width .= relatedView.width
//        view1.width .= relatedView.width
//        view1.width .= relatedView.width
//        view1.width .= relatedView.width
//        view1.width .= relatedView.width
//        view1.width .= relatedView.width
//        view1.width .= relatedView.width
//        view1.width .= relatedView.width
//        view1.width .= relatedView.width
//        view1.width .= relatedView.width
//        view1.width .= relatedView.width
//        view1.width .= relatedView.width
//        view1.width .= relatedView.width
//        view1.width .= relatedView.width
//        view1.width .= relatedView.width
//        view1.width .= relatedView.width
//        view1.width .= relatedView.width
//        view1.width .= relatedView.width
//        view1.width .= relatedView.width
//        view1.width .= relatedView.width
//        view1.width .= relatedView.width
//        view1.width .= relatedView.width
//        view1.width .= relatedView.width
//        view1.width .= relatedView.width
//        view1.width .= relatedView.width
//        view1.width .= relatedView.width
//        view1.width .= relatedView.width
//        view1.width .= relatedView.width
//        view1.width .= relatedView.width
//        view1.width .= relatedView.width
//        view1.width .= relatedView.width
//    }
//
//    func layoutDimensionEqualityCompilationBenchmark() {
//        view1.widthAnchor .= relatedView.widthAnchor
//        view1.widthAnchor .= relatedView.widthAnchor
//        view1.widthAnchor .= relatedView.widthAnchor
//        view1.widthAnchor .= relatedView.widthAnchor
//        view1.widthAnchor .= relatedView.widthAnchor
//        view1.widthAnchor .= relatedView.widthAnchor
//        view1.widthAnchor .= relatedView.widthAnchor
//        view1.widthAnchor .= relatedView.widthAnchor
//        view1.widthAnchor .= relatedView.widthAnchor
//        view1.widthAnchor .= relatedView.widthAnchor
//        view1.widthAnchor .= relatedView.widthAnchor
//        view1.widthAnchor .= relatedView.widthAnchor
//        view1.widthAnchor .= relatedView.widthAnchor
//        view1.widthAnchor .= relatedView.widthAnchor
//        view1.widthAnchor .= relatedView.widthAnchor
//        view1.widthAnchor .= relatedView.widthAnchor
//        view1.widthAnchor .= relatedView.widthAnchor
//        view1.widthAnchor .= relatedView.widthAnchor
//        view1.widthAnchor .= relatedView.widthAnchor
//        view1.widthAnchor .= relatedView.widthAnchor
//        view1.widthAnchor .= relatedView.widthAnchor
//        view1.widthAnchor .= relatedView.widthAnchor
//        view1.widthAnchor .= relatedView.widthAnchor
//        view1.widthAnchor .= relatedView.widthAnchor
//        view1.widthAnchor .= relatedView.widthAnchor
//        view1.widthAnchor .= relatedView.widthAnchor
//        view1.widthAnchor .= relatedView.widthAnchor
//        view1.widthAnchor .= relatedView.widthAnchor
//        view1.widthAnchor .= relatedView.widthAnchor
//        view1.widthAnchor .= relatedView.widthAnchor
//        view1.widthAnchor .= relatedView.widthAnchor
//        view1.widthAnchor .= relatedView.widthAnchor
//        view1.widthAnchor .= relatedView.widthAnchor
//        view1.widthAnchor .= relatedView.widthAnchor
//        view1.widthAnchor .= relatedView.widthAnchor
//        view1.widthAnchor .= relatedView.widthAnchor
//        view1.widthAnchor .= relatedView.widthAnchor
//        view1.widthAnchor .= relatedView.widthAnchor
//        view1.widthAnchor .= relatedView.widthAnchor
//        view1.widthAnchor .= relatedView.widthAnchor
//        view1.widthAnchor .= relatedView.widthAnchor
//        view1.widthAnchor .= relatedView.widthAnchor
//        view1.widthAnchor .= relatedView.widthAnchor
//        view1.widthAnchor .= relatedView.widthAnchor
//        view1.widthAnchor .= relatedView.widthAnchor
//        view1.widthAnchor .= relatedView.widthAnchor
//        view1.widthAnchor .= relatedView.widthAnchor
//        view1.widthAnchor .= relatedView.widthAnchor
//        view1.widthAnchor .= relatedView.widthAnchor
//        view1.widthAnchor .= relatedView.widthAnchor
//    }
//
//    func layoutDimensionShorthandPlusConstantCompilationBenchmark() {
//        view1.width .= relatedView.width + 10
//        view1.width .= relatedView.width + 10
//        view1.width .= relatedView.width + 10
//        view1.width .= relatedView.width + 10
//        view1.width .= relatedView.width + 10
//        view1.width .= relatedView.width + 10
//        view1.width .= relatedView.width + 10
//        view1.width .= relatedView.width + 10
//        view1.width .= relatedView.width + 10
//        view1.width .= relatedView.width + 10
//        view1.width .= relatedView.width + 10
//        view1.width .= relatedView.width + 10
//        view1.width .= relatedView.width + 10
//        view1.width .= relatedView.width + 10
//        view1.width .= relatedView.width + 10
//        view1.width .= relatedView.width + 10
//        view1.width .= relatedView.width + 10
//        view1.width .= relatedView.width + 10
//        view1.width .= relatedView.width + 10
//        view1.width .= relatedView.width + 10
//        view1.width .= relatedView.width + 10
//        view1.width .= relatedView.width + 10
//        view1.width .= relatedView.width + 10
//        view1.width .= relatedView.width + 10
//        view1.width .= relatedView.width + 10
//        view1.width .= relatedView.width + 10
//        view1.width .= relatedView.width + 10
//        view1.width .= relatedView.width + 10
//        view1.width .= relatedView.width + 10
//        view1.width .= relatedView.width + 10
//        view1.width .= relatedView.width + 10
//        view1.width .= relatedView.width + 10
//        view1.width .= relatedView.width + 10
//        view1.width .= relatedView.width + 10
//        view1.width .= relatedView.width + 10
//        view1.width .= relatedView.width + 10
//        view1.width .= relatedView.width + 10
//        view1.width .= relatedView.width + 10
//        view1.width .= relatedView.width + 10
//        view1.width .= relatedView.width + 10
//        view1.width .= relatedView.width + 10
//        view1.width .= relatedView.width + 10
//        view1.width .= relatedView.width + 10
//        view1.width .= relatedView.width + 10
//        view1.width .= relatedView.width + 10
//        view1.width .= relatedView.width + 10
//        view1.width .= relatedView.width + 10
//        view1.width .= relatedView.width + 10
//        view1.width .= relatedView.width + 10
//        view1.width .= relatedView.width + 10
//    }
//
    func layoutDimensionPlusConstantCompilationBenchmark() {
        view1 .= 3 * (relatedView.width + 10) ~ .high - 1.0
        view1 .= 3 * (relatedView.width + 10) ~ .high - 1.0
        view1 .= 3 * (relatedView.width + 10) ~ .high - 1.0
        view1 .= 3 * (relatedView.width + 10) ~ .high - 1.0
        view1 .= 3 * (relatedView.width + 10) ~ .high - 1.0
        view1 .= 3 * (relatedView.width + 10) ~ .high - 1.0
        view1 .= 3 * (relatedView.width + 10) ~ .high - 1.0
        view1 .= 3 * (relatedView.width + 10) ~ .high - 1.0
        view1 .= 3 * (relatedView.width + 10) ~ .high - 1.0
        view1 .= 3 * (relatedView.width + 10) ~ .high - 1.0
        view1 .= 3 * (relatedView.width + 10) ~ .high - 1.0
        view1 .= 3 * (relatedView.width + 10) ~ .high - 1.0
        view1 .= 3 * (relatedView.width + 10) ~ .high - 1.0
        view1 .= 3 * (relatedView.width + 10) ~ .high - 1.0
        view1 .= 3 * (relatedView.width + 10) ~ .high - 1.0
        view1 .= 3 * (relatedView.width + 10) ~ .high - 1.0
        view1 .= 3 * (relatedView.width + 10) ~ .high - 1.0
        view1 .= 3 * (relatedView.width + 10) ~ .high - 1.0
        view1 .= 3 * (relatedView.width + 10) ~ .high - 1.0
        view1 .= 3 * (relatedView.width + 10) ~ .high - 1.0
        view1 .= 3 * (relatedView.width + 10) ~ .high - 1.0
        view1 .= 3 * (relatedView.width + 10) ~ .high - 1.0
        view1 .= 3 * (relatedView.width + 10) ~ .high - 1.0
        view1 .= 3 * (relatedView.width + 10) ~ .high - 1.0
        view1 .= 3 * (relatedView.width + 10) ~ .high - 1.0
        view1 .= 3 * (relatedView.width + 10) ~ .high - 1.0
        view1 .= 3 * (relatedView.width + 10) ~ .high - 1.0
        view1 .= 3 * (relatedView.width + 10) ~ .high - 1.0
        view1 .= 3 * (relatedView.width + 10) ~ .high - 1.0
        view1 .= 3 * (relatedView.width + 10) ~ .high - 1.0
        view1 .= 3 * (relatedView.width + 10) ~ .high - 1.0
        view1 .= 3 * (relatedView.width + 10) ~ .high - 1.0
        view1 .= 3 * (relatedView.width + 10) ~ .high - 1.0
        view1 .= 3 * (relatedView.width + 10) ~ .high - 1.0
        view1 .= 3 * (relatedView.width + 10) ~ .high - 1.0
        view1 .= 3 * (relatedView.width + 10) ~ .high - 1.0
        view1 .= 3 * (relatedView.width + 10) ~ .high - 1.0
        view1 .= 3 * (relatedView.width + 10) ~ .high - 1.0
        view1 .= 3 * (relatedView.width + 10) ~ .high - 1.0
        view1 .= 3 * (relatedView.width + 10) ~ .high - 1.0
        view1 .= 3 * (relatedView.width + 10) ~ .high - 1.0
        view1 .= 3 * (relatedView.width + 10) ~ .high - 1.0
        view1 .= 3 * (relatedView.width + 10) ~ .high - 1.0
        view1 .= 3 * (relatedView.width + 10) ~ .high - 1.0
        view1 .= 3 * (relatedView.width + 10) ~ .high - 1.0
        view1 .= 3 * (relatedView.width + 10) ~ .high - 1.0
        view1 .= 3 * (relatedView.width + 10) ~ .high - 1.0
        view1 .= 3 * (relatedView.width + 10) ~ .high - 1.0
        view1 .= 3 * (relatedView.width + 10) ~ .high - 1.0
        view1 .= 3 * (relatedView.width + 10) ~ .high - 1.0
    }

    func testLayoutDimensionPlusConstantAndPriorityArithmeticCompilationBenchmark() {
//        self.benchmark {
            view1.widthAnchor .= relatedView.widthAnchor + 10 ~ .high - 1.0
            view1.widthAnchor .= relatedView.widthAnchor + 10 ~ .high - 1.0
            view1.widthAnchor .= relatedView.widthAnchor + 10 ~ .high - 1.0
            view1.widthAnchor .= relatedView.widthAnchor + 10 ~ .high - 1.0
            view1.widthAnchor .= relatedView.widthAnchor + 10 ~ .high - 1.0
            view1.widthAnchor .= relatedView.widthAnchor + 10 ~ .high - 1.0
            view1.widthAnchor .= relatedView.widthAnchor + 10 ~ .high - 1.0
            view1.widthAnchor .= relatedView.widthAnchor + 10 ~ .high - 1.0
            view1.widthAnchor .= relatedView.widthAnchor + 10 ~ .high - 1.0
            view1.widthAnchor .= relatedView.widthAnchor + 10 ~ .high - 1.0
            view1.widthAnchor .= relatedView.widthAnchor + 10 ~ .high - 1.0
            view1.widthAnchor .= relatedView.widthAnchor + 10 ~ .high - 1.0
            view1.widthAnchor .= relatedView.widthAnchor + 10 ~ .high - 1.0
            view1.widthAnchor .= relatedView.widthAnchor + 10 ~ .high - 1.0
            view1.widthAnchor .= relatedView.widthAnchor + 10 ~ .high - 1.0
            view1.widthAnchor .= relatedView.widthAnchor + 10 ~ .high - 1.0
            view1.widthAnchor .= relatedView.widthAnchor + 10 ~ .high - 1.0
            view1.widthAnchor .= relatedView.widthAnchor + 10 ~ .high - 1.0
            view1.widthAnchor .= relatedView.widthAnchor + 10 ~ .high - 1.0
            view1.widthAnchor .= relatedView.widthAnchor + 10 ~ .high - 1.0
            view1.widthAnchor .= relatedView.widthAnchor + 10 ~ .high - 1.0
            view1.widthAnchor .= relatedView.widthAnchor + 10 ~ .high - 1.0
            view1.widthAnchor .= relatedView.widthAnchor + 10 ~ .high - 1.0
            view1.widthAnchor .= relatedView.widthAnchor + 10 ~ .high - 1.0
            view1.widthAnchor .= relatedView.widthAnchor + 10 ~ .high - 1.0
            view1.widthAnchor .= relatedView.widthAnchor + 10 ~ .high - 1.0
            view1.widthAnchor .= relatedView.widthAnchor + 10 ~ .high - 1.0
            view1.widthAnchor .= relatedView.widthAnchor + 10 ~ .high - 1.0
            view1.widthAnchor .= relatedView.widthAnchor + 10 ~ .high - 1.0
            view1.widthAnchor .= relatedView.widthAnchor + 10 ~ .high - 1.0
            view1.widthAnchor .= relatedView.widthAnchor + 10 ~ .high - 1.0
            view1.widthAnchor .= relatedView.widthAnchor + 10 ~ .high - 1.0
            view1.widthAnchor .= relatedView.widthAnchor + 10 ~ .high - 1.0
            view1.widthAnchor .= relatedView.widthAnchor + 10 ~ .high - 1.0
            view1.widthAnchor .= relatedView.widthAnchor + 10 ~ .high - 1.0
            view1.widthAnchor .= relatedView.widthAnchor + 10 ~ .high - 1.0
            view1.widthAnchor .= relatedView.widthAnchor + 10 ~ .high - 1.0
            view1.widthAnchor .= relatedView.widthAnchor + 10 ~ .high - 1.0
            view1.widthAnchor .= relatedView.widthAnchor + 10 ~ .high - 1.0
            view1.widthAnchor .= relatedView.widthAnchor + 10 ~ .high - 1.0
            view1.widthAnchor .= relatedView.widthAnchor + 10 ~ .high - 1.0
            view1.widthAnchor .= relatedView.widthAnchor + 10 ~ .high - 1.0
            view1.widthAnchor .= relatedView.widthAnchor + 10 ~ .high - 1.0
            view1.widthAnchor .= relatedView.widthAnchor + 10 ~ .high - 1.0
            view1.widthAnchor .= relatedView.widthAnchor + 10 ~ .high - 1.0
            view1.widthAnchor .= relatedView.widthAnchor + 10 ~ .high - 1.0
            view1.widthAnchor .= relatedView.widthAnchor + 10 ~ .high - 1.0
            view1.widthAnchor .= relatedView.widthAnchor + 10 ~ .high - 1.0
            view1.widthAnchor .= relatedView.widthAnchor + 10 ~ .high - 1.0
            view1.widthAnchor .= relatedView.widthAnchor + 10 ~ .high - 1.0
//        }
    }
//
    func testOtherShorthandOperatorPlusConstantVerbose() {
        self.benchmark {
            view1.width.equal(to: view2.width.plus(10))
            view1.width.equal(to: view2.width.plus(10))
            view1.width.equal(to: view2.width.plus(10))
            view1.width.equal(to: view2.width.plus(10))
            view1.width.equal(to: view2.width.plus(10))
            view1.width.equal(to: view2.width.plus(10))
            view1.width.equal(to: view2.width.plus(10))
            view1.width.equal(to: view2.width.plus(10))
            view1.width.equal(to: view2.width.plus(10))
            view1.width.equal(to: view2.width.plus(10))
            view1.width.equal(to: view2.width.plus(10))
            view1.width.equal(to: view2.width.plus(10))
            view1.width.equal(to: view2.width.plus(10))
            view1.width.equal(to: view2.width.plus(10))
            view1.width.equal(to: view2.width.plus(10))
            view1.width.equal(to: view2.width.plus(10))
            view1.width.equal(to: view2.width.plus(10))
            view1.width.equal(to: view2.width.plus(10))
            view1.width.equal(to: view2.width.plus(10))
            view1.width.equal(to: view2.width.plus(10))
            view1.width.equal(to: view2.width.plus(10))
            view1.width.equal(to: view2.width.plus(10))
            view1.width.equal(to: view2.width.plus(10))
            view1.width.equal(to: view2.width.plus(10))
            view1.width.equal(to: view2.width.plus(10))
            view1.width.equal(to: view2.width.plus(10))
            view1.width.equal(to: view2.width.plus(10))
            view1.width.equal(to: view2.width.plus(10))
            view1.width.equal(to: view2.width.plus(10))
            view1.width.equal(to: view2.width.plus(10))
            view1.width.equal(to: view2.width.plus(10))
            view1.width.equal(to: view2.width.plus(10))
            view1.width.equal(to: view2.width.plus(10))
            view1.width.equal(to: view2.width.plus(10))
            view1.width.equal(to: view2.width.plus(10))
            view1.width.equal(to: view2.width.plus(10))
            view1.width.equal(to: view2.width.plus(10))
            view1.width.equal(to: view2.width.plus(10))
            view1.width.equal(to: view2.width.plus(10))
            view1.width.equal(to: view2.width.plus(10))
            view1.width.equal(to: view2.width.plus(10))
            view1.width.equal(to: view2.width.plus(10))
            view1.width.equal(to: view2.width.plus(10))
            view1.width.equal(to: view2.width.plus(10))
            view1.width.equal(to: view2.width.plus(10))
            view1.width.equal(to: view2.width.plus(10))
            view1.width.equal(to: view2.width.plus(10))
            view1.width.equal(to: view2.width.plus(10))
            view1.width.equal(to: view2.width.plus(10))
            view1.width.equal(to: view2.width.plus(10))
        }
    }
//
    func testCompilationBenchmarkRegular() {
        self.benchmark {
            view1.widthAnchor.constraint(equalTo: relatedView.widthAnchor, constant: 10)
            view1.widthAnchor.constraint(equalTo: relatedView.widthAnchor, constant: 10)
            view1.widthAnchor.constraint(equalTo: relatedView.widthAnchor, constant: 10)
            view1.widthAnchor.constraint(equalTo: relatedView.widthAnchor, constant: 10)
            view1.widthAnchor.constraint(equalTo: relatedView.widthAnchor, constant: 10)
            view1.widthAnchor.constraint(equalTo: relatedView.widthAnchor, constant: 10)
            view1.widthAnchor.constraint(equalTo: relatedView.widthAnchor, constant: 10)
            view1.widthAnchor.constraint(equalTo: relatedView.widthAnchor, constant: 10)
            view1.widthAnchor.constraint(equalTo: relatedView.widthAnchor, constant: 10)
            view1.widthAnchor.constraint(equalTo: relatedView.widthAnchor, constant: 10)
            view1.widthAnchor.constraint(equalTo: relatedView.widthAnchor, constant: 10)
            view1.widthAnchor.constraint(equalTo: relatedView.widthAnchor, constant: 10)
            view1.widthAnchor.constraint(equalTo: relatedView.widthAnchor, constant: 10)
            view1.widthAnchor.constraint(equalTo: relatedView.widthAnchor, constant: 10)
            view1.widthAnchor.constraint(equalTo: relatedView.widthAnchor, constant: 10)
            view1.widthAnchor.constraint(equalTo: relatedView.widthAnchor, constant: 10)
            view1.widthAnchor.constraint(equalTo: relatedView.widthAnchor, constant: 10)
            view1.widthAnchor.constraint(equalTo: relatedView.widthAnchor, constant: 10)
            view1.widthAnchor.constraint(equalTo: relatedView.widthAnchor, constant: 10)
            view1.widthAnchor.constraint(equalTo: relatedView.widthAnchor, constant: 10)
            view1.widthAnchor.constraint(equalTo: relatedView.widthAnchor, constant: 10)
            view1.widthAnchor.constraint(equalTo: relatedView.widthAnchor, constant: 10)
            view1.widthAnchor.constraint(equalTo: relatedView.widthAnchor, constant: 10)
            view1.widthAnchor.constraint(equalTo: relatedView.widthAnchor, constant: 10)
            view1.widthAnchor.constraint(equalTo: relatedView.widthAnchor, constant: 10)
            view1.widthAnchor.constraint(equalTo: relatedView.widthAnchor, constant: 10)
            view1.widthAnchor.constraint(equalTo: relatedView.widthAnchor, constant: 10)
            view1.widthAnchor.constraint(equalTo: relatedView.widthAnchor, constant: 10)
            view1.widthAnchor.constraint(equalTo: relatedView.widthAnchor, constant: 10)
            view1.widthAnchor.constraint(equalTo: relatedView.widthAnchor, constant: 10)
            view1.widthAnchor.constraint(equalTo: relatedView.widthAnchor, constant: 10)
            view1.widthAnchor.constraint(equalTo: relatedView.widthAnchor, constant: 10)
            view1.widthAnchor.constraint(equalTo: relatedView.widthAnchor, constant: 10)
            view1.widthAnchor.constraint(equalTo: relatedView.widthAnchor, constant: 10)
            view1.widthAnchor.constraint(equalTo: relatedView.widthAnchor, constant: 10)
            view1.widthAnchor.constraint(equalTo: relatedView.widthAnchor, constant: 10)
            view1.widthAnchor.constraint(equalTo: relatedView.widthAnchor, constant: 10)
            view1.widthAnchor.constraint(equalTo: relatedView.widthAnchor, constant: 10)
            view1.widthAnchor.constraint(equalTo: relatedView.widthAnchor, constant: 10)
            view1.widthAnchor.constraint(equalTo: relatedView.widthAnchor, constant: 10)
            view1.widthAnchor.constraint(equalTo: relatedView.widthAnchor, constant: 10)
            view1.widthAnchor.constraint(equalTo: relatedView.widthAnchor, constant: 10)
            view1.widthAnchor.constraint(equalTo: relatedView.widthAnchor, constant: 10)
            view1.widthAnchor.constraint(equalTo: relatedView.widthAnchor, constant: 10)
            view1.widthAnchor.constraint(equalTo: relatedView.widthAnchor, constant: 10)
            view1.widthAnchor.constraint(equalTo: relatedView.widthAnchor, constant: 10)
            view1.widthAnchor.constraint(equalTo: relatedView.widthAnchor, constant: 10)
            view1.widthAnchor.constraint(equalTo: relatedView.widthAnchor, constant: 10)
            view1.widthAnchor.constraint(equalTo: relatedView.widthAnchor, constant: 10)
            view1.widthAnchor.constraint(equalTo: relatedView.widthAnchor, constant: 10)
        }
    }

// sourcery:inline:auto:CompilationPerformanceTests.TemplateName
    func layoutDimensionEqualityImpliedCompilationBenchmark() {
        view1 .= relatedView.width
        view1 .= relatedView.width
        view1 .= relatedView.width
        view1 .= relatedView.width
        view1 .= relatedView.width
        view1 .= relatedView.width
        view1 .= relatedView.width
        view1 .= relatedView.width
        view1 .= relatedView.width
        view1 .= relatedView.width
        view1 .= relatedView.width
        view1 .= relatedView.width
        view1 .= relatedView.width
        view1 .= relatedView.width
        view1 .= relatedView.width
        view1 .= relatedView.width
        view1 .= relatedView.width
        view1 .= relatedView.width
        view1 .= relatedView.width
        view1 .= relatedView.width
        view1 .= relatedView.width
        view1 .= relatedView.width
        view1 .= relatedView.width
        view1 .= relatedView.width
        view1 .= relatedView.width
        view1 .= relatedView.width
        view1 .= relatedView.width
        view1 .= relatedView.width
        view1 .= relatedView.width
        view1 .= relatedView.width
        view1 .= relatedView.width
        view1 .= relatedView.width
        view1 .= relatedView.width
        view1 .= relatedView.width
        view1 .= relatedView.width
        view1 .= relatedView.width
        view1 .= relatedView.width
        view1 .= relatedView.width
        view1 .= relatedView.width
        view1 .= relatedView.width
        view1 .= relatedView.width
        view1 .= relatedView.width
        view1 .= relatedView.width
        view1 .= relatedView.width
        view1 .= relatedView.width
        view1 .= relatedView.width
        view1 .= relatedView.width
        view1 .= relatedView.width
        view1 .= relatedView.width
        view1 .= relatedView.width
    }

    func dimensionAnchorPlusConstantCompilationBenchmark() {
        relatedView.widthAnchor + 10
        relatedView.widthAnchor + 10
        relatedView.widthAnchor + 10
        relatedView.widthAnchor + 10
        relatedView.widthAnchor + 10
        relatedView.widthAnchor + 10
        relatedView.widthAnchor + 10
        relatedView.widthAnchor + 10
        relatedView.widthAnchor + 10
        relatedView.widthAnchor + 10
        relatedView.widthAnchor + 10
        relatedView.widthAnchor + 10
        relatedView.widthAnchor + 10
        relatedView.widthAnchor + 10
        relatedView.widthAnchor + 10
        relatedView.widthAnchor + 10
        relatedView.widthAnchor + 10
        relatedView.widthAnchor + 10
        relatedView.widthAnchor + 10
        relatedView.widthAnchor + 10
        relatedView.widthAnchor + 10
        relatedView.widthAnchor + 10
        relatedView.widthAnchor + 10
        relatedView.widthAnchor + 10
        relatedView.widthAnchor + 10
        relatedView.widthAnchor + 10
        relatedView.widthAnchor + 10
        relatedView.widthAnchor + 10
        relatedView.widthAnchor + 10
        relatedView.widthAnchor + 10
        relatedView.widthAnchor + 10
        relatedView.widthAnchor + 10
        relatedView.widthAnchor + 10
        relatedView.widthAnchor + 10
        relatedView.widthAnchor + 10
        relatedView.widthAnchor + 10
        relatedView.widthAnchor + 10
        relatedView.widthAnchor + 10
        relatedView.widthAnchor + 10
        relatedView.widthAnchor + 10
        relatedView.widthAnchor + 10
        relatedView.widthAnchor + 10
        relatedView.widthAnchor + 10
        relatedView.widthAnchor + 10
        relatedView.widthAnchor + 10
        relatedView.widthAnchor + 10
        relatedView.widthAnchor + 10
        relatedView.widthAnchor + 10
        relatedView.widthAnchor + 10
        relatedView.widthAnchor + 10
    }
   
// sourcery:end
}
