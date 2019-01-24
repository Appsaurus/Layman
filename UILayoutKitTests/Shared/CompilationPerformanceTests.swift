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

// swiftlint:disable type_body_length file_length
class CompilationPerformanceTests: UILayoutKitTestCase {

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

    func layoutDimensionEqualityImpliedCompilationBenchmark() {
        view1 == relatedView.width
        view1 == relatedView.width
        view1 == relatedView.width
        view1 == relatedView.width
        view1 == relatedView.width
        view1 == relatedView.width
        view1 == relatedView.width
        view1 == relatedView.width
        view1 == relatedView.width
        view1 == relatedView.width
        view1 == relatedView.width
        view1 == relatedView.width
        view1 == relatedView.width
        view1 == relatedView.width
        view1 == relatedView.width
        view1 == relatedView.width
        view1 == relatedView.width
        view1 == relatedView.width
        view1 == relatedView.width
        view1 == relatedView.width
        view1 == relatedView.width
        view1 == relatedView.width
        view1 == relatedView.width
        view1 == relatedView.width
        view1 == relatedView.width
        view1 == relatedView.width
        view1 == relatedView.width
        view1 == relatedView.width
        view1 == relatedView.width
        view1 == relatedView.width
        view1 == relatedView.width
        view1 == relatedView.width
        view1 == relatedView.width
        view1 == relatedView.width
        view1 == relatedView.width
        view1 == relatedView.width
        view1 == relatedView.width
        view1 == relatedView.width
        view1 == relatedView.width
        view1 == relatedView.width
        view1 == relatedView.width
        view1 == relatedView.width
        view1 == relatedView.width
        view1 == relatedView.width
        view1 == relatedView.width
        view1 == relatedView.width
        view1 == relatedView.width
        view1 == relatedView.width
        view1 == relatedView.width
        view1 == relatedView.width
    }

    func layoutDimensionEqualityShorthandCompilationBenchmark() {
        view1.width == relatedView.width
        view1.width == relatedView.width
        view1.width == relatedView.width
        view1.width == relatedView.width
        view1.width == relatedView.width
        view1.width == relatedView.width
        view1.width == relatedView.width
        view1.width == relatedView.width
        view1.width == relatedView.width
        view1.width == relatedView.width
        view1.width == relatedView.width
        view1.width == relatedView.width
        view1.width == relatedView.width
        view1.width == relatedView.width
        view1.width == relatedView.width
        view1.width == relatedView.width
        view1.width == relatedView.width
        view1.width == relatedView.width
        view1.width == relatedView.width
        view1.width == relatedView.width
        view1.width == relatedView.width
        view1.width == relatedView.width
        view1.width == relatedView.width
        view1.width == relatedView.width
        view1.width == relatedView.width
        view1.width == relatedView.width
        view1.width == relatedView.width
        view1.width == relatedView.width
        view1.width == relatedView.width
        view1.width == relatedView.width
        view1.width == relatedView.width
        view1.width == relatedView.width
        view1.width == relatedView.width
        view1.width == relatedView.width
        view1.width == relatedView.width
        view1.width == relatedView.width
        view1.width == relatedView.width
        view1.width == relatedView.width
        view1.width == relatedView.width
        view1.width == relatedView.width
        view1.width == relatedView.width
        view1.width == relatedView.width
        view1.width == relatedView.width
        view1.width == relatedView.width
        view1.width == relatedView.width
        view1.width == relatedView.width
        view1.width == relatedView.width
        view1.width == relatedView.width
        view1.width == relatedView.width
        view1.width == relatedView.width
    }

    func layoutDimensionEqualityCompilationBenchmark() {
        view1.widthAnchor == relatedView.widthAnchor
        view1.widthAnchor == relatedView.widthAnchor
        view1.widthAnchor == relatedView.widthAnchor
        view1.widthAnchor == relatedView.widthAnchor
        view1.widthAnchor == relatedView.widthAnchor
        view1.widthAnchor == relatedView.widthAnchor
        view1.widthAnchor == relatedView.widthAnchor
        view1.widthAnchor == relatedView.widthAnchor
        view1.widthAnchor == relatedView.widthAnchor
        view1.widthAnchor == relatedView.widthAnchor
        view1.widthAnchor == relatedView.widthAnchor
        view1.widthAnchor == relatedView.widthAnchor
        view1.widthAnchor == relatedView.widthAnchor
        view1.widthAnchor == relatedView.widthAnchor
        view1.widthAnchor == relatedView.widthAnchor
        view1.widthAnchor == relatedView.widthAnchor
        view1.widthAnchor == relatedView.widthAnchor
        view1.widthAnchor == relatedView.widthAnchor
        view1.widthAnchor == relatedView.widthAnchor
        view1.widthAnchor == relatedView.widthAnchor
        view1.widthAnchor == relatedView.widthAnchor
        view1.widthAnchor == relatedView.widthAnchor
        view1.widthAnchor == relatedView.widthAnchor
        view1.widthAnchor == relatedView.widthAnchor
        view1.widthAnchor == relatedView.widthAnchor
        view1.widthAnchor == relatedView.widthAnchor
        view1.widthAnchor == relatedView.widthAnchor
        view1.widthAnchor == relatedView.widthAnchor
        view1.widthAnchor == relatedView.widthAnchor
        view1.widthAnchor == relatedView.widthAnchor
        view1.widthAnchor == relatedView.widthAnchor
        view1.widthAnchor == relatedView.widthAnchor
        view1.widthAnchor == relatedView.widthAnchor
        view1.widthAnchor == relatedView.widthAnchor
        view1.widthAnchor == relatedView.widthAnchor
        view1.widthAnchor == relatedView.widthAnchor
        view1.widthAnchor == relatedView.widthAnchor
        view1.widthAnchor == relatedView.widthAnchor
        view1.widthAnchor == relatedView.widthAnchor
        view1.widthAnchor == relatedView.widthAnchor
        view1.widthAnchor == relatedView.widthAnchor
        view1.widthAnchor == relatedView.widthAnchor
        view1.widthAnchor == relatedView.widthAnchor
        view1.widthAnchor == relatedView.widthAnchor
        view1.widthAnchor == relatedView.widthAnchor
        view1.widthAnchor == relatedView.widthAnchor
        view1.widthAnchor == relatedView.widthAnchor
        view1.widthAnchor == relatedView.widthAnchor
        view1.widthAnchor == relatedView.widthAnchor
        view1.widthAnchor == relatedView.widthAnchor
    }


    func layoutDimensionShorthandPlusConstantCompilationBenchmark() {
        view1.width == relatedView.width + 10
        view1.width == relatedView.width + 10
        view1.width == relatedView.width + 10
        view1.width == relatedView.width + 10
        view1.width == relatedView.width + 10
        view1.width == relatedView.width + 10
        view1.width == relatedView.width + 10
        view1.width == relatedView.width + 10
        view1.width == relatedView.width + 10
        view1.width == relatedView.width + 10
        view1.width == relatedView.width + 10
        view1.width == relatedView.width + 10
        view1.width == relatedView.width + 10
        view1.width == relatedView.width + 10
        view1.width == relatedView.width + 10
        view1.width == relatedView.width + 10
        view1.width == relatedView.width + 10
        view1.width == relatedView.width + 10
        view1.width == relatedView.width + 10
        view1.width == relatedView.width + 10
        view1.width == relatedView.width + 10
        view1.width == relatedView.width + 10
        view1.width == relatedView.width + 10
        view1.width == relatedView.width + 10
        view1.width == relatedView.width + 10
        view1.width == relatedView.width + 10
        view1.width == relatedView.width + 10
        view1.width == relatedView.width + 10
        view1.width == relatedView.width + 10
        view1.width == relatedView.width + 10
        view1.width == relatedView.width + 10
        view1.width == relatedView.width + 10
        view1.width == relatedView.width + 10
        view1.width == relatedView.width + 10
        view1.width == relatedView.width + 10
        view1.width == relatedView.width + 10
        view1.width == relatedView.width + 10
        view1.width == relatedView.width + 10
        view1.width == relatedView.width + 10
        view1.width == relatedView.width + 10
        view1.width == relatedView.width + 10
        view1.width == relatedView.width + 10
        view1.width == relatedView.width + 10
        view1.width == relatedView.width + 10
        view1.width == relatedView.width + 10
        view1.width == relatedView.width + 10
        view1.width == relatedView.width + 10
        view1.width == relatedView.width + 10
        view1.width == relatedView.width + 10
        view1.width == relatedView.width + 10
    }

    func layoutDimensionPlusConstantCompilationBenchmark() {
        view1.widthAnchor == relatedView.widthAnchor + 10
        view1.widthAnchor == relatedView.widthAnchor + 10
        view1.widthAnchor == relatedView.widthAnchor + 10
        view1.widthAnchor == relatedView.widthAnchor + 10
        view1.widthAnchor == relatedView.widthAnchor + 10
        view1.widthAnchor == relatedView.widthAnchor + 10
        view1.widthAnchor == relatedView.widthAnchor + 10
        view1.widthAnchor == relatedView.widthAnchor + 10
        view1.widthAnchor == relatedView.widthAnchor + 10
        view1.widthAnchor == relatedView.widthAnchor + 10
        view1.widthAnchor == relatedView.widthAnchor + 10
        view1.widthAnchor == relatedView.widthAnchor + 10
        view1.widthAnchor == relatedView.widthAnchor + 10
        view1.widthAnchor == relatedView.widthAnchor + 10
        view1.widthAnchor == relatedView.widthAnchor + 10
        view1.widthAnchor == relatedView.widthAnchor + 10
        view1.widthAnchor == relatedView.widthAnchor + 10
        view1.widthAnchor == relatedView.widthAnchor + 10
        view1.widthAnchor == relatedView.widthAnchor + 10
        view1.widthAnchor == relatedView.widthAnchor + 10
        view1.widthAnchor == relatedView.widthAnchor + 10
        view1.widthAnchor == relatedView.widthAnchor + 10
        view1.widthAnchor == relatedView.widthAnchor + 10
        view1.widthAnchor == relatedView.widthAnchor + 10
        view1.widthAnchor == relatedView.widthAnchor + 10
        view1.widthAnchor == relatedView.widthAnchor + 10
        view1.widthAnchor == relatedView.widthAnchor + 10
        view1.widthAnchor == relatedView.widthAnchor + 10
        view1.widthAnchor == relatedView.widthAnchor + 10
        view1.widthAnchor == relatedView.widthAnchor + 10
        view1.widthAnchor == relatedView.widthAnchor + 10
        view1.widthAnchor == relatedView.widthAnchor + 10
        view1.widthAnchor == relatedView.widthAnchor + 10
        view1.widthAnchor == relatedView.widthAnchor + 10
        view1.widthAnchor == relatedView.widthAnchor + 10
        view1.widthAnchor == relatedView.widthAnchor + 10
        view1.widthAnchor == relatedView.widthAnchor + 10
        view1.widthAnchor == relatedView.widthAnchor + 10
        view1.widthAnchor == relatedView.widthAnchor + 10
        view1.widthAnchor == relatedView.widthAnchor + 10
        view1.widthAnchor == relatedView.widthAnchor + 10
        view1.widthAnchor == relatedView.widthAnchor + 10
        view1.widthAnchor == relatedView.widthAnchor + 10
        view1.widthAnchor == relatedView.widthAnchor + 10
        view1.widthAnchor == relatedView.widthAnchor + 10
        view1.widthAnchor == relatedView.widthAnchor + 10
        view1.widthAnchor == relatedView.widthAnchor + 10
        view1.widthAnchor == relatedView.widthAnchor + 10
        view1.widthAnchor == relatedView.widthAnchor + 10
        view1.widthAnchor == relatedView.widthAnchor + 10
    }

    func layoutDimensionPlusConstantAndPriorityArithmeticCompilationBenchmark() {
        view1.widthAnchor == relatedView.widthAnchor + 10 ~ .high - 1.0
        view1.widthAnchor == relatedView.widthAnchor + 10 ~ .high - 1.0
        view1.widthAnchor == relatedView.widthAnchor + 10 ~ .high - 1.0
        view1.widthAnchor == relatedView.widthAnchor + 10 ~ .high - 1.0
        view1.widthAnchor == relatedView.widthAnchor + 10 ~ .high - 1.0
        view1.widthAnchor == relatedView.widthAnchor + 10 ~ .high - 1.0
        view1.widthAnchor == relatedView.widthAnchor + 10 ~ .high - 1.0
        view1.widthAnchor == relatedView.widthAnchor + 10 ~ .high - 1.0
        view1.widthAnchor == relatedView.widthAnchor + 10 ~ .high - 1.0
        view1.widthAnchor == relatedView.widthAnchor + 10 ~ .high - 1.0
        view1.widthAnchor == relatedView.widthAnchor + 10 ~ .high - 1.0
        view1.widthAnchor == relatedView.widthAnchor + 10 ~ .high - 1.0
        view1.widthAnchor == relatedView.widthAnchor + 10 ~ .high - 1.0
        view1.widthAnchor == relatedView.widthAnchor + 10 ~ .high - 1.0
        view1.widthAnchor == relatedView.widthAnchor + 10 ~ .high - 1.0
        view1.widthAnchor == relatedView.widthAnchor + 10 ~ .high - 1.0
        view1.widthAnchor == relatedView.widthAnchor + 10 ~ .high - 1.0
        view1.widthAnchor == relatedView.widthAnchor + 10 ~ .high - 1.0
        view1.widthAnchor == relatedView.widthAnchor + 10 ~ .high - 1.0
        view1.widthAnchor == relatedView.widthAnchor + 10 ~ .high - 1.0
        view1.widthAnchor == relatedView.widthAnchor + 10 ~ .high - 1.0
        view1.widthAnchor == relatedView.widthAnchor + 10 ~ .high - 1.0
        view1.widthAnchor == relatedView.widthAnchor + 10 ~ .high - 1.0
        view1.widthAnchor == relatedView.widthAnchor + 10 ~ .high - 1.0
        view1.widthAnchor == relatedView.widthAnchor + 10 ~ .high - 1.0
        view1.widthAnchor == relatedView.widthAnchor + 10 ~ .high - 1.0
        view1.widthAnchor == relatedView.widthAnchor + 10 ~ .high - 1.0
        view1.widthAnchor == relatedView.widthAnchor + 10 ~ .high - 1.0
        view1.widthAnchor == relatedView.widthAnchor + 10 ~ .high - 1.0
        view1.widthAnchor == relatedView.widthAnchor + 10 ~ .high - 1.0
        view1.widthAnchor == relatedView.widthAnchor + 10 ~ .high - 1.0
        view1.widthAnchor == relatedView.widthAnchor + 10 ~ .high - 1.0
        view1.widthAnchor == relatedView.widthAnchor + 10 ~ .high - 1.0
        view1.widthAnchor == relatedView.widthAnchor + 10 ~ .high - 1.0
        view1.widthAnchor == relatedView.widthAnchor + 10 ~ .high - 1.0
        view1.widthAnchor == relatedView.widthAnchor + 10 ~ .high - 1.0
        view1.widthAnchor == relatedView.widthAnchor + 10 ~ .high - 1.0
        view1.widthAnchor == relatedView.widthAnchor + 10 ~ .high - 1.0
        view1.widthAnchor == relatedView.widthAnchor + 10 ~ .high - 1.0
        view1.widthAnchor == relatedView.widthAnchor + 10 ~ .high - 1.0
        view1.widthAnchor == relatedView.widthAnchor + 10 ~ .high - 1.0
        view1.widthAnchor == relatedView.widthAnchor + 10 ~ .high - 1.0
        view1.widthAnchor == relatedView.widthAnchor + 10 ~ .high - 1.0
        view1.widthAnchor == relatedView.widthAnchor + 10 ~ .high - 1.0
        view1.widthAnchor == relatedView.widthAnchor + 10 ~ .high - 1.0
        view1.widthAnchor == relatedView.widthAnchor + 10 ~ .high - 1.0
        view1.widthAnchor == relatedView.widthAnchor + 10 ~ .high - 1.0
        view1.widthAnchor == relatedView.widthAnchor + 10 ~ .high - 1.0
        view1.widthAnchor == relatedView.widthAnchor + 10 ~ .high - 1.0
        view1.widthAnchor == relatedView.widthAnchor + 10 ~ .high - 1.0
    }

    func otherOperator() {
        view1.widthAnchor .= view2.widthAnchor
        view1.widthAnchor .= view2.widthAnchor
        view1.widthAnchor .= view2.widthAnchor
        view1.widthAnchor .= view2.widthAnchor
        view1.widthAnchor .= view2.widthAnchor
        view1.widthAnchor .= view2.widthAnchor
        view1.widthAnchor .= view2.widthAnchor
        view1.widthAnchor .= view2.widthAnchor
        view1.widthAnchor .= view2.widthAnchor
        view1.widthAnchor .= view2.widthAnchor
        view1.widthAnchor .= view2.widthAnchor
        view1.widthAnchor .= view2.widthAnchor
        view1.widthAnchor .= view2.widthAnchor
        view1.widthAnchor .= view2.widthAnchor
        view1.widthAnchor .= view2.widthAnchor
        view1.widthAnchor .= view2.widthAnchor
        view1.widthAnchor .= view2.widthAnchor
        view1.widthAnchor .= view2.widthAnchor
        view1.widthAnchor .= view2.widthAnchor
        view1.widthAnchor .= view2.widthAnchor
        view1.widthAnchor .= view2.widthAnchor
        view1.widthAnchor .= view2.widthAnchor
        view1.widthAnchor .= view2.widthAnchor
        view1.widthAnchor .= view2.widthAnchor
        view1.widthAnchor .= view2.widthAnchor
        view1.widthAnchor .= view2.widthAnchor
        view1.widthAnchor .= view2.widthAnchor
        view1.widthAnchor .= view2.widthAnchor
        view1.widthAnchor .= view2.widthAnchor
        view1.widthAnchor .= view2.widthAnchor
        view1.widthAnchor .= view2.widthAnchor
        view1.widthAnchor .= view2.widthAnchor
        view1.widthAnchor .= view2.widthAnchor
        view1.widthAnchor .= view2.widthAnchor
        view1.widthAnchor .= view2.widthAnchor
        view1.widthAnchor .= view2.widthAnchor
        view1.widthAnchor .= view2.widthAnchor
    }

    func otherOperator2() {
        view1.widthAnchor |=| view2.widthAnchor
        view1.widthAnchor |=| view2.widthAnchor
        view1.widthAnchor |=| view2.widthAnchor
        view1.widthAnchor |=| view2.widthAnchor
        view1.widthAnchor |=| view2.widthAnchor
        view1.widthAnchor |=| view2.widthAnchor
        view1.widthAnchor |=| view2.widthAnchor
        view1.widthAnchor |=| view2.widthAnchor
        view1.widthAnchor |=| view2.widthAnchor
        view1.widthAnchor |=| view2.widthAnchor
        view1.widthAnchor |=| view2.widthAnchor
        view1.widthAnchor |=| view2.widthAnchor
        view1.widthAnchor |=| view2.widthAnchor
        view1.widthAnchor |=| view2.widthAnchor
        view1.widthAnchor |=| view2.widthAnchor
        view1.widthAnchor |=| view2.widthAnchor
        view1.widthAnchor |=| view2.widthAnchor
        view1.widthAnchor |=| view2.widthAnchor
        view1.widthAnchor |=| view2.widthAnchor
        view1.widthAnchor |=| view2.widthAnchor
        view1.widthAnchor |=| view2.widthAnchor
        view1.widthAnchor |=| view2.widthAnchor
        view1.widthAnchor |=| view2.widthAnchor
        view1.widthAnchor |=| view2.widthAnchor
        view1.widthAnchor |=| view2.widthAnchor
        view1.widthAnchor |=| view2.widthAnchor
        view1.widthAnchor |=| view2.widthAnchor
        view1.widthAnchor |=| view2.widthAnchor
        view1.widthAnchor |=| view2.widthAnchor
        view1.widthAnchor |=| view2.widthAnchor
        view1.widthAnchor |=| view2.widthAnchor
        view1.widthAnchor |=| view2.widthAnchor
        view1.widthAnchor |=| view2.widthAnchor
        view1.widthAnchor |=| view2.widthAnchor
        view1.widthAnchor |=| view2.widthAnchor
        view1.widthAnchor |=| view2.widthAnchor
        view1.widthAnchor |=| view2.widthAnchor
    }

    func otherOperator3() {
        view1.widthAnchor ≈ view2.widthAnchor
        view1.widthAnchor ≈ view2.widthAnchor
        view1.widthAnchor ≈ view2.widthAnchor
        view1.widthAnchor ≈ view2.widthAnchor
        view1.widthAnchor ≈ view2.widthAnchor
        view1.widthAnchor ≈ view2.widthAnchor
        view1.widthAnchor ≈ view2.widthAnchor
        view1.widthAnchor ≈ view2.widthAnchor
        view1.widthAnchor ≈ view2.widthAnchor
        view1.widthAnchor ≈ view2.widthAnchor
        view1.widthAnchor ≈ view2.widthAnchor
        view1.widthAnchor ≈ view2.widthAnchor
        view1.widthAnchor ≈ view2.widthAnchor
        view1.widthAnchor ≈ view2.widthAnchor
        view1.widthAnchor ≈ view2.widthAnchor
        view1.widthAnchor ≈ view2.widthAnchor
        view1.widthAnchor ≈ view2.widthAnchor
        view1.widthAnchor ≈ view2.widthAnchor
        view1.widthAnchor ≈ view2.widthAnchor
        view1.widthAnchor ≈ view2.widthAnchor
        view1.widthAnchor ≈ view2.widthAnchor
        view1.widthAnchor ≈ view2.widthAnchor
        view1.widthAnchor ≈ view2.widthAnchor
        view1.widthAnchor ≈ view2.widthAnchor
        view1.widthAnchor ≈ view2.widthAnchor
        view1.widthAnchor ≈ view2.widthAnchor
        view1.widthAnchor ≈ view2.widthAnchor
        view1.widthAnchor ≈ view2.widthAnchor
        view1.widthAnchor ≈ view2.widthAnchor
        view1.widthAnchor ≈ view2.widthAnchor
        view1.widthAnchor ≈ view2.widthAnchor
        view1.widthAnchor ≈ view2.widthAnchor
        view1.widthAnchor ≈ view2.widthAnchor
        view1.widthAnchor ≈ view2.widthAnchor
        view1.widthAnchor ≈ view2.widthAnchor
        view1.widthAnchor ≈ view2.widthAnchor
        view1.widthAnchor ≈ view2.widthAnchor
    }

    func otherShorthandOperatorPlusConstant() {
        //        view1.width.equal(to: view2)
        //        view1.equal(to: view2.width.plus(10).with(priority: 20))
        view1.width .= view2.width .+ 20
        view1.width .= view2.width .+ 20
        view1.width .= view2.width .+ 20
        view1.width .= view2.width .+ 20
        view1.width .= view2.width .+ 20
        view1.width .= view2.width .+ 20
        view1.width .= view2.width .+ 20
        view1.width .= view2.width .+ 20
        view1.width .= view2.width .+ 20
        view1.width .= view2.width .+ 20
        view1.width .= view2.width .+ 20
        view1.width .= view2.width .+ 20
        view1.width .= view2.width .+ 20
        view1.width .= view2.width .+ 20
        view1.width .= view2.width .+ 20
        view1.width .= view2.width .+ 20
        view1.width .= view2.width .+ 20
        view1.width .= view2.width .+ 20
        view1.width .= view2.width .+ 20
        view1.width .= view2.width .+ 20
        view1.width .= view2.width .+ 20
        view1.width .= view2.width .+ 20
        view1.width .= view2.width .+ 20
        view1.width .= view2.width .+ 20
        view1.width .= view2.width .+ 20
        view1.width .= view2.width .+ 20
        view1.width .= view2.width .+ 20
        view1.width .= view2.width .+ 20
        view1.width .= view2.width .+ 20
        view1.width .= view2.width .+ 20
        view1.width .= view2.width .+ 20
        view1.width .= view2.width .+ 20
        view1.width .= view2.width .+ 20
        view1.width .= view2.width .+ 20
        view1.width .= view2.width .+ 20
        view1.width .= view2.width .+ 20
        view1.width .= view2.width .+ 20
    }

    func otherShorthandOperatorPlusConstantVerbose() {
        //        view1.width.equal(to: view2)
        //        view1.equal(to: view2.width.plus(10).with(priority: 20))
        view1.widthAnchor.equal(to: view2.width.divided(by: 10).with(constant: 20))
        view1.widthAnchor.equal(to: view2.width.divided(by: 10).with(constant: 20))
        view1.widthAnchor.equal(to: view2.width.divided(by: 10).with(constant: 20))
        view1.widthAnchor.equal(to: view2.width.divided(by: 10).with(constant: 20))
        view1.widthAnchor.equal(to: view2.width.divided(by: 10).with(constant: 20))
        view1.widthAnchor.equal(to: view2.width.divided(by: 10).with(constant: 20))
        view1.widthAnchor.equal(to: view2.width.divided(by: 10).with(constant: 20))
        view1.widthAnchor.equal(to: view2.width.divided(by: 10).with(constant: 20))
        view1.widthAnchor.equal(to: view2.width.divided(by: 10).with(constant: 20))
        view1.widthAnchor.equal(to: view2.width.divided(by: 10).with(constant: 20))
        view1.widthAnchor.equal(to: view2.width.divided(by: 10).with(constant: 20))
        view1.widthAnchor.equal(to: view2.width.divided(by: 10).with(constant: 20))
        view1.widthAnchor.equal(to: view2.width.divided(by: 10).with(constant: 20))
        view1.widthAnchor.equal(to: view2.width.divided(by: 10).with(constant: 20))
        view1.widthAnchor.equal(to: view2.width.divided(by: 10).with(constant: 20))
        view1.widthAnchor.equal(to: view2.width.divided(by: 10).with(constant: 20))
        view1.widthAnchor.equal(to: view2.width.divided(by: 10).with(constant: 20))
        view1.widthAnchor.equal(to: view2.width.divided(by: 10).with(constant: 20))
        view1.widthAnchor.equal(to: view2.width.divided(by: 10).with(constant: 20))
        view1.widthAnchor.equal(to: view2.width.divided(by: 10).with(constant: 20))
        view1.widthAnchor.equal(to: view2.width.divided(by: 10).with(constant: 20))
        view1.widthAnchor.equal(to: view2.width.divided(by: 10).with(constant: 20))
        view1.widthAnchor.equal(to: view2.width.divided(by: 10).with(constant: 20))
        view1.widthAnchor.equal(to: view2.width.divided(by: 10).with(constant: 20))
        view1.widthAnchor.equal(to: view2.width.divided(by: 10).with(constant: 20))
        view1.widthAnchor.equal(to: view2.width.divided(by: 10).with(constant: 20))
        view1.widthAnchor.equal(to: view2.width.divided(by: 10).with(constant: 20))
        view1.widthAnchor.equal(to: view2.width.divided(by: 10).with(constant: 20))
        view1.widthAnchor.equal(to: view2.width.divided(by: 10).with(constant: 20))
        view1.widthAnchor.equal(to: view2.width.divided(by: 10).with(constant: 20))
        view1.widthAnchor.equal(to: view2.width.divided(by: 10).with(constant: 20))
        view1.widthAnchor.equal(to: view2.width.divided(by: 10).with(constant: 20))
        view1.widthAnchor.equal(to: view2.width.divided(by: 10).with(constant: 20))
        view1.widthAnchor.equal(to: view2.width.divided(by: 10).with(constant: 20))
        view1.widthAnchor.equal(to: view2.width.divided(by: 10).with(constant: 20))
        view1.widthAnchor.equal(to: view2.width.divided(by: 10).with(constant: 20))
        view1.widthAnchor.equal(to: view2.width.divided(by: 10).with(constant: 20))
    }


    func compilationBenchmarkRegular() {
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
