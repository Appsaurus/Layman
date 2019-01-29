////
////  CompilationPerformanceTests.swift
////  UILayoutKit
////
////  Created by Brian Strobach on 1/24/19.
////  Copyright © 2019 Brian Strobach. All rights reserved.
////
//
//// NOTE: These are not true automated tests. These are meant to be used in
//// conjunction with compiler flags to manually check if certain methods are
//// compilation bottlenecks. Each function builds the same constraint 50 times.
//
//@testable import UILayoutKit
//import XCTest
//import SwiftTestUtils
//
//// swiftlint:disable type_body_length file_length function_body_length
//// sourcery: functionName = "plusConstantCompilationBenchmark", body = "view1.widthAnchor + 10"
//// sourcery: functionName = "withPriorityCompilationBenchmark", body = "view1.widthAnchor ~ .low"
//// sourcery: functionName = "withPriorityArithmeticCompilationBenchmark", body = "view1.widthAnchor ~ .high - 1"
//// sourcery: functionName = "equalToConstantCompilationBenchmark", body = "view1.widthAnchor == 10"
//// sourcery: functionName = "equalToAnchorCompilationBenchmark", body = "view1.widthAnchor == relatedView.widthAnchor"
//// sourcery: functionName = "equalToAnchorPlusConstantCompilationBenchmark", body = "view1.widthAnchor == relatedView.widthAnchor + 10"
//// sourcery: functionName = "equalToAnchorMinusConstantCompilationBenchmark", body = "view1.widthAnchor == relatedView.widthAnchor - 10"
//// sourcery: functionName = "equalToAnchorMultiplyingConstantCompilationBenchmark", body = "view1.widthAnchor == relatedView.width * 3"
//// sourcery: functionName = "equalToAnchorMultipliedByConstantCompilationBenchmark", body = "view1.widthAnchor == 3 * relatedView.width"
//// sourcery: functionName = "equalToAnchorDividedByConstantCompilationBenchmark", body = "view1.widthAnchor == relatedView.width / 2"
//// sourcery: functionName = "impliedEqualToAnchorCompilationBenchmark", body = "view1 == relatedView.width"
//// sourcery: compilationTest
//class CompilationPerformanceTests: UILayoutKitTestCase {
//   
//// sourcery:end
//
//// sourcery:inline:auto:CompilationPerformanceTests.TemplateName
//    func impliedEqualToAnchorCompilationBenchmark() {
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
//    func equalToAnchorDividedByConstantCompilationBenchmark() {
//        view1.widthAnchor .= relatedView.width ./ 2
//        view1.widthAnchor .= relatedView.width ./ 2
//        view1.widthAnchor .= relatedView.width ./ 2
//        view1.widthAnchor .= relatedView.width ./ 2
//        view1.widthAnchor .= relatedView.width ./ 2
//        view1.widthAnchor .= relatedView.width ./ 2
//        view1.widthAnchor .= relatedView.width ./ 2
//        view1.widthAnchor .= relatedView.width ./ 2
//        view1.widthAnchor .= relatedView.width ./ 2
//        view1.widthAnchor .= relatedView.width ./ 2
//        view1.widthAnchor .= relatedView.width ./ 2
//        view1.widthAnchor .= relatedView.width ./ 2
//        view1.widthAnchor .= relatedView.width ./ 2
//        view1.widthAnchor .= relatedView.width ./ 2
//        view1.widthAnchor .= relatedView.width ./ 2
//        view1.widthAnchor .= relatedView.width ./ 2
//        view1.widthAnchor .= relatedView.width ./ 2
//        view1.widthAnchor .= relatedView.width ./ 2
//        view1.widthAnchor .= relatedView.width ./ 2
//        view1.widthAnchor .= relatedView.width ./ 2
//        view1.widthAnchor .= relatedView.width ./ 2
//        view1.widthAnchor .= relatedView.width ./ 2
//        view1.widthAnchor .= relatedView.width ./ 2
//        view1.widthAnchor .= relatedView.width ./ 2
//        view1.widthAnchor .= relatedView.width ./ 2
//        view1.widthAnchor .= relatedView.width ./ 2
//        view1.widthAnchor .= relatedView.width ./ 2
//        view1.widthAnchor .= relatedView.width ./ 2
//        view1.widthAnchor .= relatedView.width ./ 2
//        view1.widthAnchor .= relatedView.width ./ 2
//        view1.widthAnchor .= relatedView.width ./ 2
//        view1.widthAnchor .= relatedView.width ./ 2
//        view1.widthAnchor .= relatedView.width ./ 2
//        view1.widthAnchor .= relatedView.width ./ 2
//        view1.widthAnchor .= relatedView.width ./ 2
//        view1.widthAnchor .= relatedView.width ./ 2
//        view1.widthAnchor .= relatedView.width ./ 2
//        view1.widthAnchor .= relatedView.width ./ 2
//        view1.widthAnchor .= relatedView.width ./ 2
//        view1.widthAnchor .= relatedView.width ./ 2
//        view1.widthAnchor .= relatedView.width ./ 2
//        view1.widthAnchor .= relatedView.width ./ 2
//        view1.widthAnchor .= relatedView.width ./ 2
//        view1.widthAnchor .= relatedView.width ./ 2
//        view1.widthAnchor .= relatedView.width ./ 2
//        view1.widthAnchor .= relatedView.width ./ 2
//        view1.widthAnchor .= relatedView.width ./ 2
//        view1.widthAnchor .= relatedView.width ./ 2
//        view1.widthAnchor .= relatedView.width ./ 2
//        view1.widthAnchor .= relatedView.width ./ 2
//    }
//
//    func equalToAnchorMultipliedByConstantCompilationBenchmark() {
//        view1.widthAnchor .= 3 .* relatedView.width
//        view1.widthAnchor .= 3 .* relatedView.width
//        view1.widthAnchor .= 3 .* relatedView.width
//        view1.widthAnchor .= 3 .* relatedView.width
//        view1.widthAnchor .= 3 .* relatedView.width
//        view1.widthAnchor .= 3 .* relatedView.width
//        view1.widthAnchor .= 3 .* relatedView.width
//        view1.widthAnchor .= 3 .* relatedView.width
//        view1.widthAnchor .= 3 .* relatedView.width
//        view1.widthAnchor .= 3 .* relatedView.width
//        view1.widthAnchor .= 3 .* relatedView.width
//        view1.widthAnchor .= 3 .* relatedView.width
//        view1.widthAnchor .= 3 .* relatedView.width
//        view1.widthAnchor .= 3 .* relatedView.width
//        view1.widthAnchor .= 3 .* relatedView.width
//        view1.widthAnchor .= 3 .* relatedView.width
//        view1.widthAnchor .= 3 .* relatedView.width
//        view1.widthAnchor .= 3 .* relatedView.width
//        view1.widthAnchor .= 3 .* relatedView.width
//        view1.widthAnchor .= 3 .* relatedView.width
//        view1.widthAnchor .= 3 .* relatedView.width
//        view1.widthAnchor .= 3 .* relatedView.width
//        view1.widthAnchor .= 3 .* relatedView.width
//        view1.widthAnchor .= 3 .* relatedView.width
//        view1.widthAnchor .= 3 .* relatedView.width
//        view1.widthAnchor .= 3 .* relatedView.width
//        view1.widthAnchor .= 3 .* relatedView.width
//        view1.widthAnchor .= 3 .* relatedView.width
//        view1.widthAnchor .= 3 .* relatedView.width
//        view1.widthAnchor .= 3 .* relatedView.width
//        view1.widthAnchor .= 3 .* relatedView.width
//        view1.widthAnchor .= 3 .* relatedView.width
//        view1.widthAnchor .= 3 .* relatedView.width
//        view1.widthAnchor .= 3 .* relatedView.width
//        view1.widthAnchor .= 3 .* relatedView.width
//        view1.widthAnchor .= 3 .* relatedView.width
//        view1.widthAnchor .= 3 .* relatedView.width
//        view1.widthAnchor .= 3 .* relatedView.width
//        view1.widthAnchor .= 3 .* relatedView.width
//        view1.widthAnchor .= 3 .* relatedView.width
//        view1.widthAnchor .= 3 .* relatedView.width
//        view1.widthAnchor .= 3 .* relatedView.width
//        view1.widthAnchor .= 3 .* relatedView.width
//        view1.widthAnchor .= 3 .* relatedView.width
//        view1.widthAnchor .= 3 .* relatedView.width
//        view1.widthAnchor .= 3 .* relatedView.width
//        view1.widthAnchor .= 3 .* relatedView.width
//        view1.widthAnchor .= 3 .* relatedView.width
//        view1.widthAnchor .= 3 .* relatedView.width
//        view1.widthAnchor .= 3 .* relatedView.width
//    }
//
//    func equalToAnchorMultiplyingConstantCompilationBenchmark() {
//        view1.widthAnchor .= relatedView.width .* 3
//        view1.widthAnchor .= relatedView.width .* 3
//        view1.widthAnchor .= relatedView.width .* 3
//        view1.widthAnchor .= relatedView.width .* 3
//        view1.widthAnchor .= relatedView.width .* 3
//        view1.widthAnchor .= relatedView.width .* 3
//        view1.widthAnchor .= relatedView.width .* 3
//        view1.widthAnchor .= relatedView.width .* 3
//        view1.widthAnchor .= relatedView.width .* 3
//        view1.widthAnchor .= relatedView.width .* 3
//        view1.widthAnchor .= relatedView.width .* 3
//        view1.widthAnchor .= relatedView.width .* 3
//        view1.widthAnchor .= relatedView.width .* 3
//        view1.widthAnchor .= relatedView.width .* 3
//        view1.widthAnchor .= relatedView.width .* 3
//        view1.widthAnchor .= relatedView.width .* 3
//        view1.widthAnchor .= relatedView.width .* 3
//        view1.widthAnchor .= relatedView.width .* 3
//        view1.widthAnchor .= relatedView.width .* 3
//        view1.widthAnchor .= relatedView.width .* 3
//        view1.widthAnchor .= relatedView.width .* 3
//        view1.widthAnchor .= relatedView.width .* 3
//        view1.widthAnchor .= relatedView.width .* 3
//        view1.widthAnchor .= relatedView.width .* 3
//        view1.widthAnchor .= relatedView.width .* 3
//        view1.widthAnchor .= relatedView.width .* 3
//        view1.widthAnchor .= relatedView.width .* 3
//        view1.widthAnchor .= relatedView.width .* 3
//        view1.widthAnchor .= relatedView.width .* 3
//        view1.widthAnchor .= relatedView.width .* 3
//        view1.widthAnchor .= relatedView.width .* 3
//        view1.widthAnchor .= relatedView.width .* 3
//        view1.widthAnchor .= relatedView.width .* 3
//        view1.widthAnchor .= relatedView.width .* 3
//        view1.widthAnchor .= relatedView.width .* 3
//        view1.widthAnchor .= relatedView.width .* 3
//        view1.widthAnchor .= relatedView.width .* 3
//        view1.widthAnchor .= relatedView.width .* 3
//        view1.widthAnchor .= relatedView.width .* 3
//        view1.widthAnchor .= relatedView.width .* 3
//        view1.widthAnchor .= relatedView.width .* 3
//        view1.widthAnchor .= relatedView.width .* 3
//        view1.widthAnchor .= relatedView.width .* 3
//        view1.widthAnchor .= relatedView.width .* 3
//        view1.widthAnchor .= relatedView.width .* 3
//        view1.widthAnchor .= relatedView.width .* 3
//        view1.widthAnchor .= relatedView.width .* 3
//        view1.widthAnchor .= relatedView.width .* 3
//        view1.widthAnchor .= relatedView.width .* 3
//        view1.widthAnchor .= relatedView.width .* 3
//    }
//
//    func equalToAnchorMinusConstantCompilationBenchmark() {
//        view1.widthAnchor .= relatedView.widthAnchor .- 10
//        view1.widthAnchor .= relatedView.widthAnchor .- 10
//        view1.widthAnchor .= relatedView.widthAnchor .- 10
//        view1.widthAnchor .= relatedView.widthAnchor .- 10
//        view1.widthAnchor .= relatedView.widthAnchor .- 10
//        view1.widthAnchor .= relatedView.widthAnchor .- 10
//        view1.widthAnchor .= relatedView.widthAnchor .- 10
//        view1.widthAnchor .= relatedView.widthAnchor .- 10
//        view1.widthAnchor .= relatedView.widthAnchor .- 10
//        view1.widthAnchor .= relatedView.widthAnchor .- 10
//        view1.widthAnchor .= relatedView.widthAnchor .- 10
//        view1.widthAnchor .= relatedView.widthAnchor .- 10
//        view1.widthAnchor .= relatedView.widthAnchor .- 10
//        view1.widthAnchor .= relatedView.widthAnchor .- 10
//        view1.widthAnchor .= relatedView.widthAnchor .- 10
//        view1.widthAnchor .= relatedView.widthAnchor .- 10
//        view1.widthAnchor .= relatedView.widthAnchor .- 10
//        view1.widthAnchor .= relatedView.widthAnchor .- 10
//        view1.widthAnchor .= relatedView.widthAnchor .- 10
//        view1.widthAnchor .= relatedView.widthAnchor .- 10
//        view1.widthAnchor .= relatedView.widthAnchor .- 10
//        view1.widthAnchor .= relatedView.widthAnchor .- 10
//        view1.widthAnchor .= relatedView.widthAnchor .- 10
//        view1.widthAnchor .= relatedView.widthAnchor .- 10
//        view1.widthAnchor .= relatedView.widthAnchor .- 10
//        view1.widthAnchor .= relatedView.widthAnchor .- 10
//        view1.widthAnchor .= relatedView.widthAnchor .- 10
//        view1.widthAnchor .= relatedView.widthAnchor .- 10
//        view1.widthAnchor .= relatedView.widthAnchor .- 10
//        view1.widthAnchor .= relatedView.widthAnchor .- 10
//        view1.widthAnchor .= relatedView.widthAnchor .- 10
//        view1.widthAnchor .= relatedView.widthAnchor .- 10
//        view1.widthAnchor .= relatedView.widthAnchor .- 10
//        view1.widthAnchor .= relatedView.widthAnchor .- 10
//        view1.widthAnchor .= relatedView.widthAnchor .- 10
//        view1.widthAnchor .= relatedView.widthAnchor .- 10
//        view1.widthAnchor .= relatedView.widthAnchor .- 10
//        view1.widthAnchor .= relatedView.widthAnchor .- 10
//        view1.widthAnchor .= relatedView.widthAnchor .- 10
//        view1.widthAnchor .= relatedView.widthAnchor .- 10
//        view1.widthAnchor .= relatedView.widthAnchor .- 10
//        view1.widthAnchor .= relatedView.widthAnchor .- 10
//        view1.widthAnchor .= relatedView.widthAnchor .- 10
//        view1.widthAnchor .= relatedView.widthAnchor .- 10
//        view1.widthAnchor .= relatedView.widthAnchor .- 10
//        view1.widthAnchor .= relatedView.widthAnchor .- 10
//        view1.widthAnchor .= relatedView.widthAnchor .- 10
//        view1.widthAnchor .= relatedView.widthAnchor .- 10
//        view1.widthAnchor .= relatedView.widthAnchor .- 10
//        view1.widthAnchor .= relatedView.widthAnchor .- 10
//    }
//
//    func equalToAnchorPlusConstantCompilationBenchmark() {
//        view1.widthAnchor .= relatedView.widthAnchor .+ 10
//        view1.widthAnchor .= relatedView.widthAnchor .+ 10
//        view1.widthAnchor .= relatedView.widthAnchor .+ 10
//        view1.widthAnchor .= relatedView.widthAnchor .+ 10
//        view1.widthAnchor .= relatedView.widthAnchor .+ 10
//        view1.widthAnchor .= relatedView.widthAnchor .+ 10
//        view1.widthAnchor .= relatedView.widthAnchor .+ 10
//        view1.widthAnchor .= relatedView.widthAnchor .+ 10
//        view1.widthAnchor .= relatedView.widthAnchor .+ 10
//        view1.widthAnchor .= relatedView.widthAnchor .+ 10
//        view1.widthAnchor .= relatedView.widthAnchor .+ 10
//        view1.widthAnchor .= relatedView.widthAnchor .+ 10
//        view1.widthAnchor .= relatedView.widthAnchor .+ 10
//        view1.widthAnchor .= relatedView.widthAnchor .+ 10
//        view1.widthAnchor .= relatedView.widthAnchor .+ 10
//        view1.widthAnchor .= relatedView.widthAnchor .+ 10
//        view1.widthAnchor .= relatedView.widthAnchor .+ 10
//        view1.widthAnchor .= relatedView.widthAnchor .+ 10
//        view1.widthAnchor .= relatedView.widthAnchor .+ 10
//        view1.widthAnchor .= relatedView.widthAnchor .+ 10
//        view1.widthAnchor .= relatedView.widthAnchor .+ 10
//        view1.widthAnchor .= relatedView.widthAnchor .+ 10
//        view1.widthAnchor .= relatedView.widthAnchor .+ 10
//        view1.widthAnchor .= relatedView.widthAnchor .+ 10
//        view1.widthAnchor .= relatedView.widthAnchor .+ 10
//        view1.widthAnchor .= relatedView.widthAnchor .+ 10
//        view1.widthAnchor .= relatedView.widthAnchor .+ 10
//        view1.widthAnchor .= relatedView.widthAnchor .+ 10
//        view1.widthAnchor .= relatedView.widthAnchor .+ 10
//        view1.widthAnchor .= relatedView.widthAnchor .+ 10
//        view1.widthAnchor .= relatedView.widthAnchor .+ 10
//        view1.widthAnchor .= relatedView.widthAnchor .+ 10
//        view1.widthAnchor .= relatedView.widthAnchor .+ 10
//        view1.widthAnchor .= relatedView.widthAnchor .+ 10
//        view1.widthAnchor .= relatedView.widthAnchor .+ 10
//        view1.widthAnchor .= relatedView.widthAnchor .+ 10
//        view1.widthAnchor .= relatedView.widthAnchor .+ 10
//        view1.widthAnchor .= relatedView.widthAnchor .+ 10
//        view1.widthAnchor .= relatedView.widthAnchor .+ 10
//        view1.widthAnchor .= relatedView.widthAnchor .+ 10
//        view1.widthAnchor .= relatedView.widthAnchor .+ 10
//        view1.widthAnchor .= relatedView.widthAnchor .+ 10
//        view1.widthAnchor .= relatedView.widthAnchor .+ 10
//        view1.widthAnchor .= relatedView.widthAnchor .+ 10
//        view1.widthAnchor .= relatedView.widthAnchor .+ 10
//        view1.widthAnchor .= relatedView.widthAnchor .+ 10
//        view1.widthAnchor .= relatedView.widthAnchor .+ 10
//        view1.widthAnchor .= relatedView.widthAnchor .+ 10
//        view1.widthAnchor .= relatedView.widthAnchor .+ 10
//        view1.widthAnchor .= relatedView.widthAnchor .+ 10
//    }
//
//    func equalToAnchorCompilationBenchmark() {
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
//    func equalToConstantCompilationBenchmark() {
//        view1.widthAnchor .= 10
//        view1.widthAnchor .= 10
//        view1.widthAnchor .= 10
//        view1.widthAnchor .= 10
//        view1.widthAnchor .= 10
//        view1.widthAnchor .= 10
//        view1.widthAnchor .= 10
//        view1.widthAnchor .= 10
//        view1.widthAnchor .= 10
//        view1.widthAnchor .= 10
//        view1.widthAnchor .= 10
//        view1.widthAnchor .= 10
//        view1.widthAnchor .= 10
//        view1.widthAnchor .= 10
//        view1.widthAnchor .= 10
//        view1.widthAnchor .= 10
//        view1.widthAnchor .= 10
//        view1.widthAnchor .= 10
//        view1.widthAnchor .= 10
//        view1.widthAnchor .= 10
//        view1.widthAnchor .= 10
//        view1.widthAnchor .= 10
//        view1.widthAnchor .= 10
//        view1.widthAnchor .= 10
//        view1.widthAnchor .= 10
//        view1.widthAnchor .= 10
//        view1.widthAnchor .= 10
//        view1.widthAnchor .= 10
//        view1.widthAnchor .= 10
//        view1.widthAnchor .= 10
//        view1.widthAnchor .= 10
//        view1.widthAnchor .= 10
//        view1.widthAnchor .= 10
//        view1.widthAnchor .= 10
//        view1.widthAnchor .= 10
//        view1.widthAnchor .= 10
//        view1.widthAnchor .= 10
//        view1.widthAnchor .= 10
//        view1.widthAnchor .= 10
//        view1.widthAnchor .= 10
//        view1.widthAnchor .= 10
//        view1.widthAnchor .= 10
//        view1.widthAnchor .= 10
//        view1.widthAnchor .= 10
//        view1.widthAnchor .= 10
//        view1.widthAnchor .= 10
//        view1.widthAnchor .= 10
//        view1.widthAnchor .= 10
//        view1.widthAnchor .= 10
//        view1.widthAnchor .= 10
//    }
//
//    func withPriorityArithmeticCompilationBenchmark() {
//        view1.widthAnchor ~ .high .- 1
//        view1.widthAnchor ~ .high .- 1
//        view1.widthAnchor ~ .high .- 1
//        view1.widthAnchor ~ .high .- 1
//        view1.widthAnchor ~ .high .- 1
//        view1.widthAnchor ~ .high .- 1
//        view1.widthAnchor ~ .high .- 1
//        view1.widthAnchor ~ .high .- 1
//        view1.widthAnchor ~ .high .- 1
//        view1.widthAnchor ~ .high .- 1
//        view1.widthAnchor ~ .high .- 1
//        view1.widthAnchor ~ .high .- 1
//        view1.widthAnchor ~ .high .- 1
//        view1.widthAnchor ~ .high .- 1
//        view1.widthAnchor ~ .high .- 1
//        view1.widthAnchor ~ .high .- 1
//        view1.widthAnchor ~ .high .- 1
//        view1.widthAnchor ~ .high .- 1
//        view1.widthAnchor ~ .high .- 1
//        view1.widthAnchor ~ .high .- 1
//        view1.widthAnchor ~ .high .- 1
//        view1.widthAnchor ~ .high .- 1
//        view1.widthAnchor ~ .high .- 1
//        view1.widthAnchor ~ .high .- 1
//        view1.widthAnchor ~ .high .- 1
//        view1.widthAnchor ~ .high .- 1
//        view1.widthAnchor ~ .high .- 1
//        view1.widthAnchor ~ .high .- 1
//        view1.widthAnchor ~ .high .- 1
//        view1.widthAnchor ~ .high .- 1
//        view1.widthAnchor ~ .high .- 1
//        view1.widthAnchor ~ .high .- 1
//        view1.widthAnchor ~ .high .- 1
//        view1.widthAnchor ~ .high .- 1
//        view1.widthAnchor ~ .high .- 1
//        view1.widthAnchor ~ .high .- 1
//        view1.widthAnchor ~ .high .- 1
//        view1.widthAnchor ~ .high .- 1
//        view1.widthAnchor ~ .high .- 1
//        view1.widthAnchor ~ .high .- 1
//        view1.widthAnchor ~ .high .- 1
//        view1.widthAnchor ~ .high .- 1
//        view1.widthAnchor ~ .high .- 1
//        view1.widthAnchor ~ .high .- 1
//        view1.widthAnchor ~ .high .- 1
//        view1.widthAnchor ~ .high .- 1
//        view1.widthAnchor ~ .high .- 1
//        view1.widthAnchor ~ .high .- 1
//        view1.widthAnchor ~ .high .- 1
//        view1.widthAnchor ~ .high .- 1
//    }
//
//    func withPriorityCompilationBenchmark() {
//        view1.widthAnchor ~ .low
//        view1.widthAnchor ~ .low
//        view1.widthAnchor ~ .low
//        view1.widthAnchor ~ .low
//        view1.widthAnchor ~ .low
//        view1.widthAnchor ~ .low
//        view1.widthAnchor ~ .low
//        view1.widthAnchor ~ .low
//        view1.widthAnchor ~ .low
//        view1.widthAnchor ~ .low
//        view1.widthAnchor ~ .low
//        view1.widthAnchor ~ .low
//        view1.widthAnchor ~ .low
//        view1.widthAnchor ~ .low
//        view1.widthAnchor ~ .low
//        view1.widthAnchor ~ .low
//        view1.widthAnchor ~ .low
//        view1.widthAnchor ~ .low
//        view1.widthAnchor ~ .low
//        view1.widthAnchor ~ .low
//        view1.widthAnchor ~ .low
//        view1.widthAnchor ~ .low
//        view1.widthAnchor ~ .low
//        view1.widthAnchor ~ .low
//        view1.widthAnchor ~ .low
//        view1.widthAnchor ~ .low
//        view1.widthAnchor ~ .low
//        view1.widthAnchor ~ .low
//        view1.widthAnchor ~ .low
//        view1.widthAnchor ~ .low
//        view1.widthAnchor ~ .low
//        view1.widthAnchor ~ .low
//        view1.widthAnchor ~ .low
//        view1.widthAnchor ~ .low
//        view1.widthAnchor ~ .low
//        view1.widthAnchor ~ .low
//        view1.widthAnchor ~ .low
//        view1.widthAnchor ~ .low
//        view1.widthAnchor ~ .low
//        view1.widthAnchor ~ .low
//        view1.widthAnchor ~ .low
//        view1.widthAnchor ~ .low
//        view1.widthAnchor ~ .low
//        view1.widthAnchor ~ .low
//        view1.widthAnchor ~ .low
//        view1.widthAnchor ~ .low
//        view1.widthAnchor ~ .low
//        view1.widthAnchor ~ .low
//        view1.widthAnchor ~ .low
//        view1.widthAnchor ~ .low
//    }
//
//    func plusConstantCompilationBenchmark() {
//        view1.widthAnchor .+ 10
//        view1.widthAnchor .+ 10
//        view1.widthAnchor .+ 10
//        view1.widthAnchor .+ 10
//        view1.widthAnchor .+ 10
//        view1.widthAnchor .+ 10
//        view1.widthAnchor .+ 10
//        view1.widthAnchor .+ 10
//        view1.widthAnchor .+ 10
//        view1.widthAnchor .+ 10
//        view1.widthAnchor .+ 10
//        view1.widthAnchor .+ 10
//        view1.widthAnchor .+ 10
//        view1.widthAnchor .+ 10
//        view1.widthAnchor .+ 10
//        view1.widthAnchor .+ 10
//        view1.widthAnchor .+ 10
//        view1.widthAnchor .+ 10
//        view1.widthAnchor .+ 10
//        view1.widthAnchor .+ 10
//        view1.widthAnchor .+ 10
//        view1.widthAnchor .+ 10
//        view1.widthAnchor .+ 10
//        view1.widthAnchor .+ 10
//        view1.widthAnchor .+ 10
//        view1.widthAnchor .+ 10
//        view1.widthAnchor .+ 10
//        view1.widthAnchor .+ 10
//        view1.widthAnchor .+ 10
//        view1.widthAnchor .+ 10
//        view1.widthAnchor .+ 10
//        view1.widthAnchor .+ 10
//        view1.widthAnchor .+ 10
//        view1.widthAnchor .+ 10
//        view1.widthAnchor .+ 10
//        view1.widthAnchor .+ 10
//        view1.widthAnchor .+ 10
//        view1.widthAnchor .+ 10
//        view1.widthAnchor .+ 10
//        view1.widthAnchor .+ 10
//        view1.widthAnchor .+ 10
//        view1.widthAnchor .+ 10
//        view1.widthAnchor .+ 10
//        view1.widthAnchor .+ 10
//        view1.widthAnchor .+ 10
//        view1.widthAnchor .+ 10
//        view1.widthAnchor .+ 10
//        view1.widthAnchor .+ 10
//        view1.widthAnchor .+ 10
//        view1.widthAnchor .+ 10
//    }
//// sourcery:end
//}
