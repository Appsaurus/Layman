//
//  LayoutDimensionCompilationBenchmark.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/29/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//
@testable import UILayoutKit
import XCTest
import SwiftTestUtils

// swiftlint:disable type_body_length file_length //function_body_length
// sourcery: anchorEquationCompilationBenchmark
// sourcery: lhsAttributes = widthAnchor
// sourcery: rhsAttributes = widthAnchor
// sourcery: lhsAttributes = width
// sourcery: rhsAttributes = width
// sourcery: lhsItem = view1
class LayoutDimensionCompilationBenchmark: UILayoutKitTestCase {
    
// sourcery:inline:auto:LayoutDimensionCompilationBenchmark.AnchorEquationCompilationBenchmark

    // MARK: view1Width <=> relatedViewWidth

    // MARK: LessThanOrEqual

    func compileView1WidthLessThanOrEqualToWidth() {
        view1.width ≤ relatedView.width
        view1.width ≤ relatedView.width
        view1.width ≤ relatedView.width
        view1.width ≤ relatedView.width
        view1.width ≤ relatedView.width
        view1.width ≤ relatedView.width
        view1.width ≤ relatedView.width
        view1.width ≤ relatedView.width
        view1.width ≤ relatedView.width
        view1.width ≤ relatedView.width
        view1.width ≤ relatedView.width
        view1.width ≤ relatedView.width
        view1.width ≤ relatedView.width
        view1.width ≤ relatedView.width
        view1.width ≤ relatedView.width
        view1.width ≤ relatedView.width
        view1.width ≤ relatedView.width
        view1.width ≤ relatedView.width
        view1.width ≤ relatedView.width
        view1.width ≤ relatedView.width
    }

    func impliedcompileView1WidthLessThanOrEqualToWidth() {
        view1 ≤ relatedView.width
        view1 ≤ relatedView.width
        view1 ≤ relatedView.width
        view1 ≤ relatedView.width
        view1 ≤ relatedView.width
        view1 ≤ relatedView.width
        view1 ≤ relatedView.width
        view1 ≤ relatedView.width
        view1 ≤ relatedView.width
        view1 ≤ relatedView.width
        view1 ≤ relatedView.width
        view1 ≤ relatedView.width
        view1 ≤ relatedView.width
        view1 ≤ relatedView.width
        view1 ≤ relatedView.width
        view1 ≤ relatedView.width
        view1 ≤ relatedView.width
        view1 ≤ relatedView.width
        view1 ≤ relatedView.width
        view1 ≤ relatedView.width
    }

    // MARK: LessThanOrEqual with constant
    func compileView1WidthLessThanOrEqualToWidthPlusConstant() {
        view1.width ≤ relatedView.width .+ 10
        view1.width ≤ relatedView.width .+ 10
        view1.width ≤ relatedView.width .+ 10
        view1.width ≤ relatedView.width .+ 10
        view1.width ≤ relatedView.width .+ 10
        view1.width ≤ relatedView.width .+ 10
        view1.width ≤ relatedView.width .+ 10
        view1.width ≤ relatedView.width .+ 10
        view1.width ≤ relatedView.width .+ 10
        view1.width ≤ relatedView.width .+ 10
        view1.width ≤ relatedView.width .+ 10
        view1.width ≤ relatedView.width .+ 10
        view1.width ≤ relatedView.width .+ 10
        view1.width ≤ relatedView.width .+ 10
        view1.width ≤ relatedView.width .+ 10
        view1.width ≤ relatedView.width .+ 10
        view1.width ≤ relatedView.width .+ 10
        view1.width ≤ relatedView.width .+ 10
        view1.width ≤ relatedView.width .+ 10
        view1.width ≤ relatedView.width .+ 10
    }

    func impliedcompileView1WidthLessThanOrEqualToWidthPlusConstant() {
        view1 ≤ relatedView.width .+ 10
        view1 ≤ relatedView.width .+ 10
        view1 ≤ relatedView.width .+ 10
        view1 ≤ relatedView.width .+ 10
        view1 ≤ relatedView.width .+ 10
        view1 ≤ relatedView.width .+ 10
        view1 ≤ relatedView.width .+ 10
        view1 ≤ relatedView.width .+ 10
        view1 ≤ relatedView.width .+ 10
        view1 ≤ relatedView.width .+ 10
        view1 ≤ relatedView.width .+ 10
        view1 ≤ relatedView.width .+ 10
        view1 ≤ relatedView.width .+ 10
        view1 ≤ relatedView.width .+ 10
        view1 ≤ relatedView.width .+ 10
        view1 ≤ relatedView.width .+ 10
        view1 ≤ relatedView.width .+ 10
        view1 ≤ relatedView.width .+ 10
        view1 ≤ relatedView.width .+ 10
        view1 ≤ relatedView.width .+ 10
    }

    func compileView1WidthLessThanOrEqualToWidthMinusConstant() {
        view1.width ≤ relatedView.width .- 10
        view1.width ≤ relatedView.width .- 10
        view1.width ≤ relatedView.width .- 10
        view1.width ≤ relatedView.width .- 10
        view1.width ≤ relatedView.width .- 10
        view1.width ≤ relatedView.width .- 10
        view1.width ≤ relatedView.width .- 10
        view1.width ≤ relatedView.width .- 10
        view1.width ≤ relatedView.width .- 10
        view1.width ≤ relatedView.width .- 10
        view1.width ≤ relatedView.width .- 10
        view1.width ≤ relatedView.width .- 10
        view1.width ≤ relatedView.width .- 10
        view1.width ≤ relatedView.width .- 10
        view1.width ≤ relatedView.width .- 10
        view1.width ≤ relatedView.width .- 10
        view1.width ≤ relatedView.width .- 10
        view1.width ≤ relatedView.width .- 10
        view1.width ≤ relatedView.width .- 10
        view1.width ≤ relatedView.width .- 10
    }

    func impliedcompileView1WidthLessThanOrEqualToWidthMinusConstant() {
        view1 ≤ relatedView.width .- 10
        view1 ≤ relatedView.width .- 10
        view1 ≤ relatedView.width .- 10
        view1 ≤ relatedView.width .- 10
        view1 ≤ relatedView.width .- 10
        view1 ≤ relatedView.width .- 10
        view1 ≤ relatedView.width .- 10
        view1 ≤ relatedView.width .- 10
        view1 ≤ relatedView.width .- 10
        view1 ≤ relatedView.width .- 10
        view1 ≤ relatedView.width .- 10
        view1 ≤ relatedView.width .- 10
        view1 ≤ relatedView.width .- 10
        view1 ≤ relatedView.width .- 10
        view1 ≤ relatedView.width .- 10
        view1 ≤ relatedView.width .- 10
        view1 ≤ relatedView.width .- 10
        view1 ≤ relatedView.width .- 10
        view1 ≤ relatedView.width .- 10
        view1 ≤ relatedView.width .- 10
    }

    // MARK: LessThanOrEqual with multiplier
    func compileView1WidthLessThanOrEqualToWidthMultiplyingConstant() {
        view1.width ≤ relatedView.width .* 3
        view1.width ≤ relatedView.width .* 3
        view1.width ≤ relatedView.width .* 3
        view1.width ≤ relatedView.width .* 3
        view1.width ≤ relatedView.width .* 3
        view1.width ≤ relatedView.width .* 3
        view1.width ≤ relatedView.width .* 3
        view1.width ≤ relatedView.width .* 3
        view1.width ≤ relatedView.width .* 3
        view1.width ≤ relatedView.width .* 3
        view1.width ≤ relatedView.width .* 3
        view1.width ≤ relatedView.width .* 3
        view1.width ≤ relatedView.width .* 3
        view1.width ≤ relatedView.width .* 3
        view1.width ≤ relatedView.width .* 3
        view1.width ≤ relatedView.width .* 3
        view1.width ≤ relatedView.width .* 3
        view1.width ≤ relatedView.width .* 3
        view1.width ≤ relatedView.width .* 3
        view1.width ≤ relatedView.width .* 3
    }

    func impliedcompileView1WidthLessThanOrEqualToWidthMultiplyingConstant() {
        view1 ≤ relatedView.width .* 3
        view1 ≤ relatedView.width .* 3
        view1 ≤ relatedView.width .* 3
        view1 ≤ relatedView.width .* 3
        view1 ≤ relatedView.width .* 3
        view1 ≤ relatedView.width .* 3
        view1 ≤ relatedView.width .* 3
        view1 ≤ relatedView.width .* 3
        view1 ≤ relatedView.width .* 3
        view1 ≤ relatedView.width .* 3
        view1 ≤ relatedView.width .* 3
        view1 ≤ relatedView.width .* 3
        view1 ≤ relatedView.width .* 3
        view1 ≤ relatedView.width .* 3
        view1 ≤ relatedView.width .* 3
        view1 ≤ relatedView.width .* 3
        view1 ≤ relatedView.width .* 3
        view1 ≤ relatedView.width .* 3
        view1 ≤ relatedView.width .* 3
        view1 ≤ relatedView.width .* 3
    }

    func compileView1WidthLessThanOrEqualToWidthMultipliedByConstant() {
        view1.width ≤ 3 .* relatedView.width
        view1.width ≤ 3 .* relatedView.width
        view1.width ≤ 3 .* relatedView.width
        view1.width ≤ 3 .* relatedView.width
        view1.width ≤ 3 .* relatedView.width
        view1.width ≤ 3 .* relatedView.width
        view1.width ≤ 3 .* relatedView.width
        view1.width ≤ 3 .* relatedView.width
        view1.width ≤ 3 .* relatedView.width
        view1.width ≤ 3 .* relatedView.width
        view1.width ≤ 3 .* relatedView.width
        view1.width ≤ 3 .* relatedView.width
        view1.width ≤ 3 .* relatedView.width
        view1.width ≤ 3 .* relatedView.width
        view1.width ≤ 3 .* relatedView.width
        view1.width ≤ 3 .* relatedView.width
        view1.width ≤ 3 .* relatedView.width
        view1.width ≤ 3 .* relatedView.width
        view1.width ≤ 3 .* relatedView.width
        view1.width ≤ 3 .* relatedView.width
    }

    func impliedcompileView1WidthLessThanOrEqualToWidthMultipliedByConstant() {
        view1 ≤ 3 .* relatedView.width
        view1 ≤ 3 .* relatedView.width
        view1 ≤ 3 .* relatedView.width
        view1 ≤ 3 .* relatedView.width
        view1 ≤ 3 .* relatedView.width
        view1 ≤ 3 .* relatedView.width
        view1 ≤ 3 .* relatedView.width
        view1 ≤ 3 .* relatedView.width
        view1 ≤ 3 .* relatedView.width
        view1 ≤ 3 .* relatedView.width
        view1 ≤ 3 .* relatedView.width
        view1 ≤ 3 .* relatedView.width
        view1 ≤ 3 .* relatedView.width
        view1 ≤ 3 .* relatedView.width
        view1 ≤ 3 .* relatedView.width
        view1 ≤ 3 .* relatedView.width
        view1 ≤ 3 .* relatedView.width
        view1 ≤ 3 .* relatedView.width
        view1 ≤ 3 .* relatedView.width
        view1 ≤ 3 .* relatedView.width
    }

    func compileView1WidthLessThanOrEqualToWidthDividedByConstant() {
        view1.width ≤ relatedView.width ./ 2
        view1.width ≤ relatedView.width ./ 2
        view1.width ≤ relatedView.width ./ 2
        view1.width ≤ relatedView.width ./ 2
        view1.width ≤ relatedView.width ./ 2
        view1.width ≤ relatedView.width ./ 2
        view1.width ≤ relatedView.width ./ 2
        view1.width ≤ relatedView.width ./ 2
        view1.width ≤ relatedView.width ./ 2
        view1.width ≤ relatedView.width ./ 2
        view1.width ≤ relatedView.width ./ 2
        view1.width ≤ relatedView.width ./ 2
        view1.width ≤ relatedView.width ./ 2
        view1.width ≤ relatedView.width ./ 2
        view1.width ≤ relatedView.width ./ 2
        view1.width ≤ relatedView.width ./ 2
        view1.width ≤ relatedView.width ./ 2
        view1.width ≤ relatedView.width ./ 2
        view1.width ≤ relatedView.width ./ 2
        view1.width ≤ relatedView.width ./ 2
    }

    func impliedcompileView1WidthLessThanOrEqualToWidthDividedByConstant() {
        view1 ≤ relatedView.width ./ 2
        view1 ≤ relatedView.width ./ 2
        view1 ≤ relatedView.width ./ 2
        view1 ≤ relatedView.width ./ 2
        view1 ≤ relatedView.width ./ 2
        view1 ≤ relatedView.width ./ 2
        view1 ≤ relatedView.width ./ 2
        view1 ≤ relatedView.width ./ 2
        view1 ≤ relatedView.width ./ 2
        view1 ≤ relatedView.width ./ 2
        view1 ≤ relatedView.width ./ 2
        view1 ≤ relatedView.width ./ 2
        view1 ≤ relatedView.width ./ 2
        view1 ≤ relatedView.width ./ 2
        view1 ≤ relatedView.width ./ 2
        view1 ≤ relatedView.width ./ 2
        view1 ≤ relatedView.width ./ 2
        view1 ≤ relatedView.width ./ 2
        view1 ≤ relatedView.width ./ 2
        view1 ≤ relatedView.width ./ 2
    }

    // MARK: LessThanOrEqual Prioritized
    func compileView1WidthLessThanOrEqualToWidthWithPriority() {
        view1.width ≤ relatedView.width ~ .low
        view1.width ≤ relatedView.width ~ .low
        view1.width ≤ relatedView.width ~ .low
        view1.width ≤ relatedView.width ~ .low
        view1.width ≤ relatedView.width ~ .low
        view1.width ≤ relatedView.width ~ .low
        view1.width ≤ relatedView.width ~ .low
        view1.width ≤ relatedView.width ~ .low
        view1.width ≤ relatedView.width ~ .low
        view1.width ≤ relatedView.width ~ .low
        view1.width ≤ relatedView.width ~ .low
        view1.width ≤ relatedView.width ~ .low
        view1.width ≤ relatedView.width ~ .low
        view1.width ≤ relatedView.width ~ .low
        view1.width ≤ relatedView.width ~ .low
        view1.width ≤ relatedView.width ~ .low
        view1.width ≤ relatedView.width ~ .low
        view1.width ≤ relatedView.width ~ .low
        view1.width ≤ relatedView.width ~ .low
        view1.width ≤ relatedView.width ~ .low
    }

    func impliedcompileView1WidthLessThanOrEqualToWidthWithPriority() {
        view1 ≤ relatedView.width ~ .low
        view1 ≤ relatedView.width ~ .low
        view1 ≤ relatedView.width ~ .low
        view1 ≤ relatedView.width ~ .low
        view1 ≤ relatedView.width ~ .low
        view1 ≤ relatedView.width ~ .low
        view1 ≤ relatedView.width ~ .low
        view1 ≤ relatedView.width ~ .low
        view1 ≤ relatedView.width ~ .low
        view1 ≤ relatedView.width ~ .low
        view1 ≤ relatedView.width ~ .low
        view1 ≤ relatedView.width ~ .low
        view1 ≤ relatedView.width ~ .low
        view1 ≤ relatedView.width ~ .low
        view1 ≤ relatedView.width ~ .low
        view1 ≤ relatedView.width ~ .low
        view1 ≤ relatedView.width ~ .low
        view1 ≤ relatedView.width ~ .low
        view1 ≤ relatedView.width ~ .low
        view1 ≤ relatedView.width ~ .low
    }

    func compileView1WidthLessThanOrEqualToWidthWithPriorityLiteral() {
        view1.width ≤ relatedView.width ~ 300
        view1.width ≤ relatedView.width ~ 300
        view1.width ≤ relatedView.width ~ 300
        view1.width ≤ relatedView.width ~ 300
        view1.width ≤ relatedView.width ~ 300
        view1.width ≤ relatedView.width ~ 300
        view1.width ≤ relatedView.width ~ 300
        view1.width ≤ relatedView.width ~ 300
        view1.width ≤ relatedView.width ~ 300
        view1.width ≤ relatedView.width ~ 300
        view1.width ≤ relatedView.width ~ 300
        view1.width ≤ relatedView.width ~ 300
        view1.width ≤ relatedView.width ~ 300
        view1.width ≤ relatedView.width ~ 300
        view1.width ≤ relatedView.width ~ 300
        view1.width ≤ relatedView.width ~ 300
        view1.width ≤ relatedView.width ~ 300
        view1.width ≤ relatedView.width ~ 300
        view1.width ≤ relatedView.width ~ 300
        view1.width ≤ relatedView.width ~ 300
    }

    func impliedcompileView1WidthLessThanOrEqualToWidthWithPriorityLiteral() {
        view1 ≤ relatedView.width ~ 300
        view1 ≤ relatedView.width ~ 300
        view1 ≤ relatedView.width ~ 300
        view1 ≤ relatedView.width ~ 300
        view1 ≤ relatedView.width ~ 300
        view1 ≤ relatedView.width ~ 300
        view1 ≤ relatedView.width ~ 300
        view1 ≤ relatedView.width ~ 300
        view1 ≤ relatedView.width ~ 300
        view1 ≤ relatedView.width ~ 300
        view1 ≤ relatedView.width ~ 300
        view1 ≤ relatedView.width ~ 300
        view1 ≤ relatedView.width ~ 300
        view1 ≤ relatedView.width ~ 300
        view1 ≤ relatedView.width ~ 300
        view1 ≤ relatedView.width ~ 300
        view1 ≤ relatedView.width ~ 300
        view1 ≤ relatedView.width ~ 300
        view1 ≤ relatedView.width ~ 300
        view1 ≤ relatedView.width ~ 300
    }

    func compileView1WidthLessThanOrEqualToWidthWithPriorityArithmetic() {
        view1.width ≤ relatedView.width ~ .high .- 1
        view1.width ≤ relatedView.width ~ .high .- 1
        view1.width ≤ relatedView.width ~ .high .- 1
        view1.width ≤ relatedView.width ~ .high .- 1
        view1.width ≤ relatedView.width ~ .high .- 1
        view1.width ≤ relatedView.width ~ .high .- 1
        view1.width ≤ relatedView.width ~ .high .- 1
        view1.width ≤ relatedView.width ~ .high .- 1
        view1.width ≤ relatedView.width ~ .high .- 1
        view1.width ≤ relatedView.width ~ .high .- 1
        view1.width ≤ relatedView.width ~ .high .- 1
        view1.width ≤ relatedView.width ~ .high .- 1
        view1.width ≤ relatedView.width ~ .high .- 1
        view1.width ≤ relatedView.width ~ .high .- 1
        view1.width ≤ relatedView.width ~ .high .- 1
        view1.width ≤ relatedView.width ~ .high .- 1
        view1.width ≤ relatedView.width ~ .high .- 1
        view1.width ≤ relatedView.width ~ .high .- 1
        view1.width ≤ relatedView.width ~ .high .- 1
        view1.width ≤ relatedView.width ~ .high .- 1
    }

    func impliedcompileView1WidthLessThanOrEqualToWidthWithPriorityArithmetic() {
        view1 ≤ relatedView.width ~ .high .- 1
        view1 ≤ relatedView.width ~ .high .- 1
        view1 ≤ relatedView.width ~ .high .- 1
        view1 ≤ relatedView.width ~ .high .- 1
        view1 ≤ relatedView.width ~ .high .- 1
        view1 ≤ relatedView.width ~ .high .- 1
        view1 ≤ relatedView.width ~ .high .- 1
        view1 ≤ relatedView.width ~ .high .- 1
        view1 ≤ relatedView.width ~ .high .- 1
        view1 ≤ relatedView.width ~ .high .- 1
        view1 ≤ relatedView.width ~ .high .- 1
        view1 ≤ relatedView.width ~ .high .- 1
        view1 ≤ relatedView.width ~ .high .- 1
        view1 ≤ relatedView.width ~ .high .- 1
        view1 ≤ relatedView.width ~ .high .- 1
        view1 ≤ relatedView.width ~ .high .- 1
        view1 ≤ relatedView.width ~ .high .- 1
        view1 ≤ relatedView.width ~ .high .- 1
        view1 ≤ relatedView.width ~ .high .- 1
        view1 ≤ relatedView.width ~ .high .- 1
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func compileView1WidthLessThanOrEqualToWidthPlusConstantMultiplyingConstant() {
        view1.width ≤ (relatedView.width .+ 10) .* 3
        view1.width ≤ (relatedView.width .+ 10) .* 3
        view1.width ≤ (relatedView.width .+ 10) .* 3
        view1.width ≤ (relatedView.width .+ 10) .* 3
        view1.width ≤ (relatedView.width .+ 10) .* 3
        view1.width ≤ (relatedView.width .+ 10) .* 3
        view1.width ≤ (relatedView.width .+ 10) .* 3
        view1.width ≤ (relatedView.width .+ 10) .* 3
        view1.width ≤ (relatedView.width .+ 10) .* 3
        view1.width ≤ (relatedView.width .+ 10) .* 3
        view1.width ≤ (relatedView.width .+ 10) .* 3
        view1.width ≤ (relatedView.width .+ 10) .* 3
        view1.width ≤ (relatedView.width .+ 10) .* 3
        view1.width ≤ (relatedView.width .+ 10) .* 3
        view1.width ≤ (relatedView.width .+ 10) .* 3
        view1.width ≤ (relatedView.width .+ 10) .* 3
        view1.width ≤ (relatedView.width .+ 10) .* 3
        view1.width ≤ (relatedView.width .+ 10) .* 3
        view1.width ≤ (relatedView.width .+ 10) .* 3
        view1.width ≤ (relatedView.width .+ 10) .* 3
    }

    func impliedcompileView1WidthLessThanOrEqualToWidthPlusConstantMultiplyingConstant() {
        view1 ≤ (relatedView.width .+ 10) .* 3
        view1 ≤ (relatedView.width .+ 10) .* 3
        view1 ≤ (relatedView.width .+ 10) .* 3
        view1 ≤ (relatedView.width .+ 10) .* 3
        view1 ≤ (relatedView.width .+ 10) .* 3
        view1 ≤ (relatedView.width .+ 10) .* 3
        view1 ≤ (relatedView.width .+ 10) .* 3
        view1 ≤ (relatedView.width .+ 10) .* 3
        view1 ≤ (relatedView.width .+ 10) .* 3
        view1 ≤ (relatedView.width .+ 10) .* 3
        view1 ≤ (relatedView.width .+ 10) .* 3
        view1 ≤ (relatedView.width .+ 10) .* 3
        view1 ≤ (relatedView.width .+ 10) .* 3
        view1 ≤ (relatedView.width .+ 10) .* 3
        view1 ≤ (relatedView.width .+ 10) .* 3
        view1 ≤ (relatedView.width .+ 10) .* 3
        view1 ≤ (relatedView.width .+ 10) .* 3
        view1 ≤ (relatedView.width .+ 10) .* 3
        view1 ≤ (relatedView.width .+ 10) .* 3
        view1 ≤ (relatedView.width .+ 10) .* 3
    }

    func compileView1WidthLessThanOrEqualToWidthPlusConstantMultipliedByConstant() {
        view1.width ≤ 3 .* (relatedView.width .+ 10)
        view1.width ≤ 3 .* (relatedView.width .+ 10)
        view1.width ≤ 3 .* (relatedView.width .+ 10)
        view1.width ≤ 3 .* (relatedView.width .+ 10)
        view1.width ≤ 3 .* (relatedView.width .+ 10)
        view1.width ≤ 3 .* (relatedView.width .+ 10)
        view1.width ≤ 3 .* (relatedView.width .+ 10)
        view1.width ≤ 3 .* (relatedView.width .+ 10)
        view1.width ≤ 3 .* (relatedView.width .+ 10)
        view1.width ≤ 3 .* (relatedView.width .+ 10)
        view1.width ≤ 3 .* (relatedView.width .+ 10)
        view1.width ≤ 3 .* (relatedView.width .+ 10)
        view1.width ≤ 3 .* (relatedView.width .+ 10)
        view1.width ≤ 3 .* (relatedView.width .+ 10)
        view1.width ≤ 3 .* (relatedView.width .+ 10)
        view1.width ≤ 3 .* (relatedView.width .+ 10)
        view1.width ≤ 3 .* (relatedView.width .+ 10)
        view1.width ≤ 3 .* (relatedView.width .+ 10)
        view1.width ≤ 3 .* (relatedView.width .+ 10)
        view1.width ≤ 3 .* (relatedView.width .+ 10)
    }

    func impliedcompileView1WidthLessThanOrEqualToWidthPlusConstantMultipliedByConstant() {
        view1 ≤ 3 .* (relatedView.width .+ 10)
        view1 ≤ 3 .* (relatedView.width .+ 10)
        view1 ≤ 3 .* (relatedView.width .+ 10)
        view1 ≤ 3 .* (relatedView.width .+ 10)
        view1 ≤ 3 .* (relatedView.width .+ 10)
        view1 ≤ 3 .* (relatedView.width .+ 10)
        view1 ≤ 3 .* (relatedView.width .+ 10)
        view1 ≤ 3 .* (relatedView.width .+ 10)
        view1 ≤ 3 .* (relatedView.width .+ 10)
        view1 ≤ 3 .* (relatedView.width .+ 10)
        view1 ≤ 3 .* (relatedView.width .+ 10)
        view1 ≤ 3 .* (relatedView.width .+ 10)
        view1 ≤ 3 .* (relatedView.width .+ 10)
        view1 ≤ 3 .* (relatedView.width .+ 10)
        view1 ≤ 3 .* (relatedView.width .+ 10)
        view1 ≤ 3 .* (relatedView.width .+ 10)
        view1 ≤ 3 .* (relatedView.width .+ 10)
        view1 ≤ 3 .* (relatedView.width .+ 10)
        view1 ≤ 3 .* (relatedView.width .+ 10)
        view1 ≤ 3 .* (relatedView.width .+ 10)
    }

    func compileView1WidthLessThanOrEqualToWidthMultipliedByConstantPlusConstant() {
        view1.width ≤ 3 .* relatedView.width .+ 10
        view1.width ≤ 3 .* relatedView.width .+ 10
        view1.width ≤ 3 .* relatedView.width .+ 10
        view1.width ≤ 3 .* relatedView.width .+ 10
        view1.width ≤ 3 .* relatedView.width .+ 10
        view1.width ≤ 3 .* relatedView.width .+ 10
        view1.width ≤ 3 .* relatedView.width .+ 10
        view1.width ≤ 3 .* relatedView.width .+ 10
        view1.width ≤ 3 .* relatedView.width .+ 10
        view1.width ≤ 3 .* relatedView.width .+ 10
        view1.width ≤ 3 .* relatedView.width .+ 10
        view1.width ≤ 3 .* relatedView.width .+ 10
        view1.width ≤ 3 .* relatedView.width .+ 10
        view1.width ≤ 3 .* relatedView.width .+ 10
        view1.width ≤ 3 .* relatedView.width .+ 10
        view1.width ≤ 3 .* relatedView.width .+ 10
        view1.width ≤ 3 .* relatedView.width .+ 10
        view1.width ≤ 3 .* relatedView.width .+ 10
        view1.width ≤ 3 .* relatedView.width .+ 10
        view1.width ≤ 3 .* relatedView.width .+ 10
    }

    func impliedcompileView1WidthLessThanOrEqualToWidthMultipliedByConstantPlusConstant() {
        view1 ≤ 3 .* relatedView.width .+ 10
        view1 ≤ 3 .* relatedView.width .+ 10
        view1 ≤ 3 .* relatedView.width .+ 10
        view1 ≤ 3 .* relatedView.width .+ 10
        view1 ≤ 3 .* relatedView.width .+ 10
        view1 ≤ 3 .* relatedView.width .+ 10
        view1 ≤ 3 .* relatedView.width .+ 10
        view1 ≤ 3 .* relatedView.width .+ 10
        view1 ≤ 3 .* relatedView.width .+ 10
        view1 ≤ 3 .* relatedView.width .+ 10
        view1 ≤ 3 .* relatedView.width .+ 10
        view1 ≤ 3 .* relatedView.width .+ 10
        view1 ≤ 3 .* relatedView.width .+ 10
        view1 ≤ 3 .* relatedView.width .+ 10
        view1 ≤ 3 .* relatedView.width .+ 10
        view1 ≤ 3 .* relatedView.width .+ 10
        view1 ≤ 3 .* relatedView.width .+ 10
        view1 ≤ 3 .* relatedView.width .+ 10
        view1 ≤ 3 .* relatedView.width .+ 10
        view1 ≤ 3 .* relatedView.width .+ 10
    }

    func compileView1WidthLessThanOrEqualToWidthPlusConstantDividedByConstant() {
        view1.width ≤ (relatedView.width .+ 10) ./ 2
        view1.width ≤ (relatedView.width .+ 10) ./ 2
        view1.width ≤ (relatedView.width .+ 10) ./ 2
        view1.width ≤ (relatedView.width .+ 10) ./ 2
        view1.width ≤ (relatedView.width .+ 10) ./ 2
        view1.width ≤ (relatedView.width .+ 10) ./ 2
        view1.width ≤ (relatedView.width .+ 10) ./ 2
        view1.width ≤ (relatedView.width .+ 10) ./ 2
        view1.width ≤ (relatedView.width .+ 10) ./ 2
        view1.width ≤ (relatedView.width .+ 10) ./ 2
        view1.width ≤ (relatedView.width .+ 10) ./ 2
        view1.width ≤ (relatedView.width .+ 10) ./ 2
        view1.width ≤ (relatedView.width .+ 10) ./ 2
        view1.width ≤ (relatedView.width .+ 10) ./ 2
        view1.width ≤ (relatedView.width .+ 10) ./ 2
        view1.width ≤ (relatedView.width .+ 10) ./ 2
        view1.width ≤ (relatedView.width .+ 10) ./ 2
        view1.width ≤ (relatedView.width .+ 10) ./ 2
        view1.width ≤ (relatedView.width .+ 10) ./ 2
        view1.width ≤ (relatedView.width .+ 10) ./ 2
    }

    func impliedcompileView1WidthLessThanOrEqualToWidthPlusConstantDividedByConstant() {
        view1 ≤ (relatedView.width .+ 10) ./ 2
        view1 ≤ (relatedView.width .+ 10) ./ 2
        view1 ≤ (relatedView.width .+ 10) ./ 2
        view1 ≤ (relatedView.width .+ 10) ./ 2
        view1 ≤ (relatedView.width .+ 10) ./ 2
        view1 ≤ (relatedView.width .+ 10) ./ 2
        view1 ≤ (relatedView.width .+ 10) ./ 2
        view1 ≤ (relatedView.width .+ 10) ./ 2
        view1 ≤ (relatedView.width .+ 10) ./ 2
        view1 ≤ (relatedView.width .+ 10) ./ 2
        view1 ≤ (relatedView.width .+ 10) ./ 2
        view1 ≤ (relatedView.width .+ 10) ./ 2
        view1 ≤ (relatedView.width .+ 10) ./ 2
        view1 ≤ (relatedView.width .+ 10) ./ 2
        view1 ≤ (relatedView.width .+ 10) ./ 2
        view1 ≤ (relatedView.width .+ 10) ./ 2
        view1 ≤ (relatedView.width .+ 10) ./ 2
        view1 ≤ (relatedView.width .+ 10) ./ 2
        view1 ≤ (relatedView.width .+ 10) ./ 2
        view1 ≤ (relatedView.width .+ 10) ./ 2
    }

// MARK: LessThanOrEqual with constant .+ multiplier and priority

    func compileView1WidthLessThanOrEqualToWidthPlusConstantMultiplyingConstantWithPriority() {
        view1.width ≤ (relatedView.width .+ 10) .* 3 ~ .low
        view1.width ≤ (relatedView.width .+ 10) .* 3 ~ .low
        view1.width ≤ (relatedView.width .+ 10) .* 3 ~ .low
        view1.width ≤ (relatedView.width .+ 10) .* 3 ~ .low
        view1.width ≤ (relatedView.width .+ 10) .* 3 ~ .low
        view1.width ≤ (relatedView.width .+ 10) .* 3 ~ .low
        view1.width ≤ (relatedView.width .+ 10) .* 3 ~ .low
        view1.width ≤ (relatedView.width .+ 10) .* 3 ~ .low
        view1.width ≤ (relatedView.width .+ 10) .* 3 ~ .low
        view1.width ≤ (relatedView.width .+ 10) .* 3 ~ .low
        view1.width ≤ (relatedView.width .+ 10) .* 3 ~ .low
        view1.width ≤ (relatedView.width .+ 10) .* 3 ~ .low
        view1.width ≤ (relatedView.width .+ 10) .* 3 ~ .low
        view1.width ≤ (relatedView.width .+ 10) .* 3 ~ .low
        view1.width ≤ (relatedView.width .+ 10) .* 3 ~ .low
        view1.width ≤ (relatedView.width .+ 10) .* 3 ~ .low
        view1.width ≤ (relatedView.width .+ 10) .* 3 ~ .low
        view1.width ≤ (relatedView.width .+ 10) .* 3 ~ .low
        view1.width ≤ (relatedView.width .+ 10) .* 3 ~ .low
        view1.width ≤ (relatedView.width .+ 10) .* 3 ~ .low
    }

    func impliedcompileView1WidthLessThanOrEqualToWidthPlusConstantMultiplyingConstantWithPriority() {
        view1 ≤ (relatedView.width .+ 10) .* 3 ~ .low
        view1 ≤ (relatedView.width .+ 10) .* 3 ~ .low
        view1 ≤ (relatedView.width .+ 10) .* 3 ~ .low
        view1 ≤ (relatedView.width .+ 10) .* 3 ~ .low
        view1 ≤ (relatedView.width .+ 10) .* 3 ~ .low
        view1 ≤ (relatedView.width .+ 10) .* 3 ~ .low
        view1 ≤ (relatedView.width .+ 10) .* 3 ~ .low
        view1 ≤ (relatedView.width .+ 10) .* 3 ~ .low
        view1 ≤ (relatedView.width .+ 10) .* 3 ~ .low
        view1 ≤ (relatedView.width .+ 10) .* 3 ~ .low
        view1 ≤ (relatedView.width .+ 10) .* 3 ~ .low
        view1 ≤ (relatedView.width .+ 10) .* 3 ~ .low
        view1 ≤ (relatedView.width .+ 10) .* 3 ~ .low
        view1 ≤ (relatedView.width .+ 10) .* 3 ~ .low
        view1 ≤ (relatedView.width .+ 10) .* 3 ~ .low
        view1 ≤ (relatedView.width .+ 10) .* 3 ~ .low
        view1 ≤ (relatedView.width .+ 10) .* 3 ~ .low
        view1 ≤ (relatedView.width .+ 10) .* 3 ~ .low
        view1 ≤ (relatedView.width .+ 10) .* 3 ~ .low
        view1 ≤ (relatedView.width .+ 10) .* 3 ~ .low
    }

    func compileView1WidthLessThanOrEqualToWidthPlusConstantMultipliedByConstantWithPriority() {
        view1.width ≤ 3 .* (relatedView.width .+ 10) ~ .low
        view1.width ≤ 3 .* (relatedView.width .+ 10) ~ .low
        view1.width ≤ 3 .* (relatedView.width .+ 10) ~ .low
        view1.width ≤ 3 .* (relatedView.width .+ 10) ~ .low
        view1.width ≤ 3 .* (relatedView.width .+ 10) ~ .low
        view1.width ≤ 3 .* (relatedView.width .+ 10) ~ .low
        view1.width ≤ 3 .* (relatedView.width .+ 10) ~ .low
        view1.width ≤ 3 .* (relatedView.width .+ 10) ~ .low
        view1.width ≤ 3 .* (relatedView.width .+ 10) ~ .low
        view1.width ≤ 3 .* (relatedView.width .+ 10) ~ .low
        view1.width ≤ 3 .* (relatedView.width .+ 10) ~ .low
        view1.width ≤ 3 .* (relatedView.width .+ 10) ~ .low
        view1.width ≤ 3 .* (relatedView.width .+ 10) ~ .low
        view1.width ≤ 3 .* (relatedView.width .+ 10) ~ .low
        view1.width ≤ 3 .* (relatedView.width .+ 10) ~ .low
        view1.width ≤ 3 .* (relatedView.width .+ 10) ~ .low
        view1.width ≤ 3 .* (relatedView.width .+ 10) ~ .low
        view1.width ≤ 3 .* (relatedView.width .+ 10) ~ .low
        view1.width ≤ 3 .* (relatedView.width .+ 10) ~ .low
        view1.width ≤ 3 .* (relatedView.width .+ 10) ~ .low
    }

    func impliedcompileView1WidthLessThanOrEqualToWidthPlusConstantMultipliedByConstantWithPriority() {
        view1 ≤ 3 .* (relatedView.width .+ 10) ~ .low
        view1 ≤ 3 .* (relatedView.width .+ 10) ~ .low
        view1 ≤ 3 .* (relatedView.width .+ 10) ~ .low
        view1 ≤ 3 .* (relatedView.width .+ 10) ~ .low
        view1 ≤ 3 .* (relatedView.width .+ 10) ~ .low
        view1 ≤ 3 .* (relatedView.width .+ 10) ~ .low
        view1 ≤ 3 .* (relatedView.width .+ 10) ~ .low
        view1 ≤ 3 .* (relatedView.width .+ 10) ~ .low
        view1 ≤ 3 .* (relatedView.width .+ 10) ~ .low
        view1 ≤ 3 .* (relatedView.width .+ 10) ~ .low
        view1 ≤ 3 .* (relatedView.width .+ 10) ~ .low
        view1 ≤ 3 .* (relatedView.width .+ 10) ~ .low
        view1 ≤ 3 .* (relatedView.width .+ 10) ~ .low
        view1 ≤ 3 .* (relatedView.width .+ 10) ~ .low
        view1 ≤ 3 .* (relatedView.width .+ 10) ~ .low
        view1 ≤ 3 .* (relatedView.width .+ 10) ~ .low
        view1 ≤ 3 .* (relatedView.width .+ 10) ~ .low
        view1 ≤ 3 .* (relatedView.width .+ 10) ~ .low
        view1 ≤ 3 .* (relatedView.width .+ 10) ~ .low
        view1 ≤ 3 .* (relatedView.width .+ 10) ~ .low
    }

    func compileView1WidthLessThanOrEqualToWidthMultipliedByConstantPlusConstantWithPriority() {
        view1.width ≤ 3 .* relatedView.width .+ 10 ~ .low
        view1.width ≤ 3 .* relatedView.width .+ 10 ~ .low
        view1.width ≤ 3 .* relatedView.width .+ 10 ~ .low
        view1.width ≤ 3 .* relatedView.width .+ 10 ~ .low
        view1.width ≤ 3 .* relatedView.width .+ 10 ~ .low
        view1.width ≤ 3 .* relatedView.width .+ 10 ~ .low
        view1.width ≤ 3 .* relatedView.width .+ 10 ~ .low
        view1.width ≤ 3 .* relatedView.width .+ 10 ~ .low
        view1.width ≤ 3 .* relatedView.width .+ 10 ~ .low
        view1.width ≤ 3 .* relatedView.width .+ 10 ~ .low
        view1.width ≤ 3 .* relatedView.width .+ 10 ~ .low
        view1.width ≤ 3 .* relatedView.width .+ 10 ~ .low
        view1.width ≤ 3 .* relatedView.width .+ 10 ~ .low
        view1.width ≤ 3 .* relatedView.width .+ 10 ~ .low
        view1.width ≤ 3 .* relatedView.width .+ 10 ~ .low
        view1.width ≤ 3 .* relatedView.width .+ 10 ~ .low
        view1.width ≤ 3 .* relatedView.width .+ 10 ~ .low
        view1.width ≤ 3 .* relatedView.width .+ 10 ~ .low
        view1.width ≤ 3 .* relatedView.width .+ 10 ~ .low
        view1.width ≤ 3 .* relatedView.width .+ 10 ~ .low
    }

    func impliedcompileView1WidthLessThanOrEqualToWidthMultipliedByConstantPlusConstantWithPriority() {
        view1 ≤ 3 .* relatedView.width .+ 10 ~ .low
        view1 ≤ 3 .* relatedView.width .+ 10 ~ .low
        view1 ≤ 3 .* relatedView.width .+ 10 ~ .low
        view1 ≤ 3 .* relatedView.width .+ 10 ~ .low
        view1 ≤ 3 .* relatedView.width .+ 10 ~ .low
        view1 ≤ 3 .* relatedView.width .+ 10 ~ .low
        view1 ≤ 3 .* relatedView.width .+ 10 ~ .low
        view1 ≤ 3 .* relatedView.width .+ 10 ~ .low
        view1 ≤ 3 .* relatedView.width .+ 10 ~ .low
        view1 ≤ 3 .* relatedView.width .+ 10 ~ .low
        view1 ≤ 3 .* relatedView.width .+ 10 ~ .low
        view1 ≤ 3 .* relatedView.width .+ 10 ~ .low
        view1 ≤ 3 .* relatedView.width .+ 10 ~ .low
        view1 ≤ 3 .* relatedView.width .+ 10 ~ .low
        view1 ≤ 3 .* relatedView.width .+ 10 ~ .low
        view1 ≤ 3 .* relatedView.width .+ 10 ~ .low
        view1 ≤ 3 .* relatedView.width .+ 10 ~ .low
        view1 ≤ 3 .* relatedView.width .+ 10 ~ .low
        view1 ≤ 3 .* relatedView.width .+ 10 ~ .low
        view1 ≤ 3 .* relatedView.width .+ 10 ~ .low
    }

    func compileView1WidthLessThanOrEqualToWidthPlusConstantDividedByConstantWithPriority() {
        view1.width ≤ (relatedView.width .+ 10) ./ 2 ~ .low
        view1.width ≤ (relatedView.width .+ 10) ./ 2 ~ .low
        view1.width ≤ (relatedView.width .+ 10) ./ 2 ~ .low
        view1.width ≤ (relatedView.width .+ 10) ./ 2 ~ .low
        view1.width ≤ (relatedView.width .+ 10) ./ 2 ~ .low
        view1.width ≤ (relatedView.width .+ 10) ./ 2 ~ .low
        view1.width ≤ (relatedView.width .+ 10) ./ 2 ~ .low
        view1.width ≤ (relatedView.width .+ 10) ./ 2 ~ .low
        view1.width ≤ (relatedView.width .+ 10) ./ 2 ~ .low
        view1.width ≤ (relatedView.width .+ 10) ./ 2 ~ .low
        view1.width ≤ (relatedView.width .+ 10) ./ 2 ~ .low
        view1.width ≤ (relatedView.width .+ 10) ./ 2 ~ .low
        view1.width ≤ (relatedView.width .+ 10) ./ 2 ~ .low
        view1.width ≤ (relatedView.width .+ 10) ./ 2 ~ .low
        view1.width ≤ (relatedView.width .+ 10) ./ 2 ~ .low
        view1.width ≤ (relatedView.width .+ 10) ./ 2 ~ .low
        view1.width ≤ (relatedView.width .+ 10) ./ 2 ~ .low
        view1.width ≤ (relatedView.width .+ 10) ./ 2 ~ .low
        view1.width ≤ (relatedView.width .+ 10) ./ 2 ~ .low
        view1.width ≤ (relatedView.width .+ 10) ./ 2 ~ .low
    }

    func impliedcompileView1WidthLessThanOrEqualToWidthPlusConstantDividedByConstantWithPriority() {
        view1 ≤ (relatedView.width .+ 10) ./ 2 ~ .low
        view1 ≤ (relatedView.width .+ 10) ./ 2 ~ .low
        view1 ≤ (relatedView.width .+ 10) ./ 2 ~ .low
        view1 ≤ (relatedView.width .+ 10) ./ 2 ~ .low
        view1 ≤ (relatedView.width .+ 10) ./ 2 ~ .low
        view1 ≤ (relatedView.width .+ 10) ./ 2 ~ .low
        view1 ≤ (relatedView.width .+ 10) ./ 2 ~ .low
        view1 ≤ (relatedView.width .+ 10) ./ 2 ~ .low
        view1 ≤ (relatedView.width .+ 10) ./ 2 ~ .low
        view1 ≤ (relatedView.width .+ 10) ./ 2 ~ .low
        view1 ≤ (relatedView.width .+ 10) ./ 2 ~ .low
        view1 ≤ (relatedView.width .+ 10) ./ 2 ~ .low
        view1 ≤ (relatedView.width .+ 10) ./ 2 ~ .low
        view1 ≤ (relatedView.width .+ 10) ./ 2 ~ .low
        view1 ≤ (relatedView.width .+ 10) ./ 2 ~ .low
        view1 ≤ (relatedView.width .+ 10) ./ 2 ~ .low
        view1 ≤ (relatedView.width .+ 10) ./ 2 ~ .low
        view1 ≤ (relatedView.width .+ 10) ./ 2 ~ .low
        view1 ≤ (relatedView.width .+ 10) ./ 2 ~ .low
        view1 ≤ (relatedView.width .+ 10) ./ 2 ~ .low
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func compileView1WidthLessThanOrEqualToWidthPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        view1.width ≤ (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1.width ≤ (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1.width ≤ (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1.width ≤ (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1.width ≤ (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1.width ≤ (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1.width ≤ (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1.width ≤ (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1.width ≤ (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1.width ≤ (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1.width ≤ (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1.width ≤ (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1.width ≤ (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1.width ≤ (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1.width ≤ (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1.width ≤ (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1.width ≤ (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1.width ≤ (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1.width ≤ (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1.width ≤ (relatedView.width .+ 10) .* 3  ~ .high .- 1
    }

    func impliedcompileView1WidthLessThanOrEqualToWidthPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        view1 ≤ (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1 ≤ (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1 ≤ (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1 ≤ (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1 ≤ (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1 ≤ (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1 ≤ (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1 ≤ (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1 ≤ (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1 ≤ (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1 ≤ (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1 ≤ (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1 ≤ (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1 ≤ (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1 ≤ (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1 ≤ (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1 ≤ (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1 ≤ (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1 ≤ (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1 ≤ (relatedView.width .+ 10) .* 3  ~ .high .- 1
    }

    func compileView1WidthLessThanOrEqualToWidthPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        view1.width ≤ 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1.width ≤ 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1.width ≤ 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1.width ≤ 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1.width ≤ 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1.width ≤ 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1.width ≤ 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1.width ≤ 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1.width ≤ 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1.width ≤ 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1.width ≤ 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1.width ≤ 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1.width ≤ 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1.width ≤ 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1.width ≤ 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1.width ≤ 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1.width ≤ 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1.width ≤ 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1.width ≤ 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1.width ≤ 3 .* (relatedView.width .+ 10)  ~ .high .- 1
    }

    func impliedcompileView1WidthLessThanOrEqualToWidthPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        view1 ≤ 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1 ≤ 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1 ≤ 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1 ≤ 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1 ≤ 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1 ≤ 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1 ≤ 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1 ≤ 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1 ≤ 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1 ≤ 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1 ≤ 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1 ≤ 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1 ≤ 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1 ≤ 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1 ≤ 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1 ≤ 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1 ≤ 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1 ≤ 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1 ≤ 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1 ≤ 3 .* (relatedView.width .+ 10)  ~ .high .- 1
    }

    func compileView1WidthLessThanOrEqualToWidthMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        view1.width ≤ 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1.width ≤ 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1.width ≤ 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1.width ≤ 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1.width ≤ 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1.width ≤ 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1.width ≤ 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1.width ≤ 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1.width ≤ 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1.width ≤ 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1.width ≤ 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1.width ≤ 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1.width ≤ 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1.width ≤ 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1.width ≤ 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1.width ≤ 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1.width ≤ 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1.width ≤ 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1.width ≤ 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1.width ≤ 3 .* relatedView.width .+ 10  ~ .high .- 1
    }

    func impliedcompileView1WidthLessThanOrEqualToWidthMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        view1 ≤ 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1 ≤ 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1 ≤ 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1 ≤ 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1 ≤ 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1 ≤ 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1 ≤ 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1 ≤ 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1 ≤ 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1 ≤ 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1 ≤ 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1 ≤ 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1 ≤ 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1 ≤ 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1 ≤ 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1 ≤ 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1 ≤ 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1 ≤ 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1 ≤ 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1 ≤ 3 .* relatedView.width .+ 10  ~ .high .- 1
    }

    func compileView1WidthLessThanOrEqualToWidthPlusConstantDividedByConstantWithPriorityArithmetic() {
        view1.width ≤ (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1.width ≤ (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1.width ≤ (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1.width ≤ (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1.width ≤ (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1.width ≤ (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1.width ≤ (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1.width ≤ (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1.width ≤ (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1.width ≤ (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1.width ≤ (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1.width ≤ (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1.width ≤ (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1.width ≤ (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1.width ≤ (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1.width ≤ (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1.width ≤ (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1.width ≤ (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1.width ≤ (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1.width ≤ (relatedView.width .+ 10) ./ 2  ~ .high .- 1
    }

    func impliedcompileView1WidthLessThanOrEqualToWidthPlusConstantDividedByConstantWithPriorityArithmetic() {
        view1 ≤ (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1 ≤ (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1 ≤ (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1 ≤ (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1 ≤ (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1 ≤ (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1 ≤ (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1 ≤ (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1 ≤ (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1 ≤ (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1 ≤ (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1 ≤ (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1 ≤ (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1 ≤ (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1 ≤ (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1 ≤ (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1 ≤ (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1 ≤ (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1 ≤ (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1 ≤ (relatedView.width .+ 10) ./ 2  ~ .high .- 1
    }

    // MARK: GreaterThanOrEqual

    func compileView1WidthGreaterThanOrEqualToWidth() {
        view1.width ≥ relatedView.width
        view1.width ≥ relatedView.width
        view1.width ≥ relatedView.width
        view1.width ≥ relatedView.width
        view1.width ≥ relatedView.width
        view1.width ≥ relatedView.width
        view1.width ≥ relatedView.width
        view1.width ≥ relatedView.width
        view1.width ≥ relatedView.width
        view1.width ≥ relatedView.width
        view1.width ≥ relatedView.width
        view1.width ≥ relatedView.width
        view1.width ≥ relatedView.width
        view1.width ≥ relatedView.width
        view1.width ≥ relatedView.width
        view1.width ≥ relatedView.width
        view1.width ≥ relatedView.width
        view1.width ≥ relatedView.width
        view1.width ≥ relatedView.width
        view1.width ≥ relatedView.width
    }

    func impliedcompileView1WidthGreaterThanOrEqualToWidth() {
        view1 ≥ relatedView.width
        view1 ≥ relatedView.width
        view1 ≥ relatedView.width
        view1 ≥ relatedView.width
        view1 ≥ relatedView.width
        view1 ≥ relatedView.width
        view1 ≥ relatedView.width
        view1 ≥ relatedView.width
        view1 ≥ relatedView.width
        view1 ≥ relatedView.width
        view1 ≥ relatedView.width
        view1 ≥ relatedView.width
        view1 ≥ relatedView.width
        view1 ≥ relatedView.width
        view1 ≥ relatedView.width
        view1 ≥ relatedView.width
        view1 ≥ relatedView.width
        view1 ≥ relatedView.width
        view1 ≥ relatedView.width
        view1 ≥ relatedView.width
    }

    // MARK: GreaterThanOrEqual with constant
    func compileView1WidthGreaterThanOrEqualToWidthPlusConstant() {
        view1.width ≥ relatedView.width .+ 10
        view1.width ≥ relatedView.width .+ 10
        view1.width ≥ relatedView.width .+ 10
        view1.width ≥ relatedView.width .+ 10
        view1.width ≥ relatedView.width .+ 10
        view1.width ≥ relatedView.width .+ 10
        view1.width ≥ relatedView.width .+ 10
        view1.width ≥ relatedView.width .+ 10
        view1.width ≥ relatedView.width .+ 10
        view1.width ≥ relatedView.width .+ 10
        view1.width ≥ relatedView.width .+ 10
        view1.width ≥ relatedView.width .+ 10
        view1.width ≥ relatedView.width .+ 10
        view1.width ≥ relatedView.width .+ 10
        view1.width ≥ relatedView.width .+ 10
        view1.width ≥ relatedView.width .+ 10
        view1.width ≥ relatedView.width .+ 10
        view1.width ≥ relatedView.width .+ 10
        view1.width ≥ relatedView.width .+ 10
        view1.width ≥ relatedView.width .+ 10
    }

    func impliedcompileView1WidthGreaterThanOrEqualToWidthPlusConstant() {
        view1 ≥ relatedView.width .+ 10
        view1 ≥ relatedView.width .+ 10
        view1 ≥ relatedView.width .+ 10
        view1 ≥ relatedView.width .+ 10
        view1 ≥ relatedView.width .+ 10
        view1 ≥ relatedView.width .+ 10
        view1 ≥ relatedView.width .+ 10
        view1 ≥ relatedView.width .+ 10
        view1 ≥ relatedView.width .+ 10
        view1 ≥ relatedView.width .+ 10
        view1 ≥ relatedView.width .+ 10
        view1 ≥ relatedView.width .+ 10
        view1 ≥ relatedView.width .+ 10
        view1 ≥ relatedView.width .+ 10
        view1 ≥ relatedView.width .+ 10
        view1 ≥ relatedView.width .+ 10
        view1 ≥ relatedView.width .+ 10
        view1 ≥ relatedView.width .+ 10
        view1 ≥ relatedView.width .+ 10
        view1 ≥ relatedView.width .+ 10
    }

    func compileView1WidthGreaterThanOrEqualToWidthMinusConstant() {
        view1.width ≥ relatedView.width .- 10
        view1.width ≥ relatedView.width .- 10
        view1.width ≥ relatedView.width .- 10
        view1.width ≥ relatedView.width .- 10
        view1.width ≥ relatedView.width .- 10
        view1.width ≥ relatedView.width .- 10
        view1.width ≥ relatedView.width .- 10
        view1.width ≥ relatedView.width .- 10
        view1.width ≥ relatedView.width .- 10
        view1.width ≥ relatedView.width .- 10
        view1.width ≥ relatedView.width .- 10
        view1.width ≥ relatedView.width .- 10
        view1.width ≥ relatedView.width .- 10
        view1.width ≥ relatedView.width .- 10
        view1.width ≥ relatedView.width .- 10
        view1.width ≥ relatedView.width .- 10
        view1.width ≥ relatedView.width .- 10
        view1.width ≥ relatedView.width .- 10
        view1.width ≥ relatedView.width .- 10
        view1.width ≥ relatedView.width .- 10
    }

    func impliedcompileView1WidthGreaterThanOrEqualToWidthMinusConstant() {
        view1 ≥ relatedView.width .- 10
        view1 ≥ relatedView.width .- 10
        view1 ≥ relatedView.width .- 10
        view1 ≥ relatedView.width .- 10
        view1 ≥ relatedView.width .- 10
        view1 ≥ relatedView.width .- 10
        view1 ≥ relatedView.width .- 10
        view1 ≥ relatedView.width .- 10
        view1 ≥ relatedView.width .- 10
        view1 ≥ relatedView.width .- 10
        view1 ≥ relatedView.width .- 10
        view1 ≥ relatedView.width .- 10
        view1 ≥ relatedView.width .- 10
        view1 ≥ relatedView.width .- 10
        view1 ≥ relatedView.width .- 10
        view1 ≥ relatedView.width .- 10
        view1 ≥ relatedView.width .- 10
        view1 ≥ relatedView.width .- 10
        view1 ≥ relatedView.width .- 10
        view1 ≥ relatedView.width .- 10
    }

    // MARK: GreaterThanOrEqual with multiplier
    func compileView1WidthGreaterThanOrEqualToWidthMultiplyingConstant() {
        view1.width ≥ relatedView.width .* 3
        view1.width ≥ relatedView.width .* 3
        view1.width ≥ relatedView.width .* 3
        view1.width ≥ relatedView.width .* 3
        view1.width ≥ relatedView.width .* 3
        view1.width ≥ relatedView.width .* 3
        view1.width ≥ relatedView.width .* 3
        view1.width ≥ relatedView.width .* 3
        view1.width ≥ relatedView.width .* 3
        view1.width ≥ relatedView.width .* 3
        view1.width ≥ relatedView.width .* 3
        view1.width ≥ relatedView.width .* 3
        view1.width ≥ relatedView.width .* 3
        view1.width ≥ relatedView.width .* 3
        view1.width ≥ relatedView.width .* 3
        view1.width ≥ relatedView.width .* 3
        view1.width ≥ relatedView.width .* 3
        view1.width ≥ relatedView.width .* 3
        view1.width ≥ relatedView.width .* 3
        view1.width ≥ relatedView.width .* 3
    }

    func impliedcompileView1WidthGreaterThanOrEqualToWidthMultiplyingConstant() {
        view1 ≥ relatedView.width .* 3
        view1 ≥ relatedView.width .* 3
        view1 ≥ relatedView.width .* 3
        view1 ≥ relatedView.width .* 3
        view1 ≥ relatedView.width .* 3
        view1 ≥ relatedView.width .* 3
        view1 ≥ relatedView.width .* 3
        view1 ≥ relatedView.width .* 3
        view1 ≥ relatedView.width .* 3
        view1 ≥ relatedView.width .* 3
        view1 ≥ relatedView.width .* 3
        view1 ≥ relatedView.width .* 3
        view1 ≥ relatedView.width .* 3
        view1 ≥ relatedView.width .* 3
        view1 ≥ relatedView.width .* 3
        view1 ≥ relatedView.width .* 3
        view1 ≥ relatedView.width .* 3
        view1 ≥ relatedView.width .* 3
        view1 ≥ relatedView.width .* 3
        view1 ≥ relatedView.width .* 3
    }

    func compileView1WidthGreaterThanOrEqualToWidthMultipliedByConstant() {
        view1.width ≥ 3 .* relatedView.width
        view1.width ≥ 3 .* relatedView.width
        view1.width ≥ 3 .* relatedView.width
        view1.width ≥ 3 .* relatedView.width
        view1.width ≥ 3 .* relatedView.width
        view1.width ≥ 3 .* relatedView.width
        view1.width ≥ 3 .* relatedView.width
        view1.width ≥ 3 .* relatedView.width
        view1.width ≥ 3 .* relatedView.width
        view1.width ≥ 3 .* relatedView.width
        view1.width ≥ 3 .* relatedView.width
        view1.width ≥ 3 .* relatedView.width
        view1.width ≥ 3 .* relatedView.width
        view1.width ≥ 3 .* relatedView.width
        view1.width ≥ 3 .* relatedView.width
        view1.width ≥ 3 .* relatedView.width
        view1.width ≥ 3 .* relatedView.width
        view1.width ≥ 3 .* relatedView.width
        view1.width ≥ 3 .* relatedView.width
        view1.width ≥ 3 .* relatedView.width
    }

    func impliedcompileView1WidthGreaterThanOrEqualToWidthMultipliedByConstant() {
        view1 ≥ 3 .* relatedView.width
        view1 ≥ 3 .* relatedView.width
        view1 ≥ 3 .* relatedView.width
        view1 ≥ 3 .* relatedView.width
        view1 ≥ 3 .* relatedView.width
        view1 ≥ 3 .* relatedView.width
        view1 ≥ 3 .* relatedView.width
        view1 ≥ 3 .* relatedView.width
        view1 ≥ 3 .* relatedView.width
        view1 ≥ 3 .* relatedView.width
        view1 ≥ 3 .* relatedView.width
        view1 ≥ 3 .* relatedView.width
        view1 ≥ 3 .* relatedView.width
        view1 ≥ 3 .* relatedView.width
        view1 ≥ 3 .* relatedView.width
        view1 ≥ 3 .* relatedView.width
        view1 ≥ 3 .* relatedView.width
        view1 ≥ 3 .* relatedView.width
        view1 ≥ 3 .* relatedView.width
        view1 ≥ 3 .* relatedView.width
    }

    func compileView1WidthGreaterThanOrEqualToWidthDividedByConstant() {
        view1.width ≥ relatedView.width ./ 2
        view1.width ≥ relatedView.width ./ 2
        view1.width ≥ relatedView.width ./ 2
        view1.width ≥ relatedView.width ./ 2
        view1.width ≥ relatedView.width ./ 2
        view1.width ≥ relatedView.width ./ 2
        view1.width ≥ relatedView.width ./ 2
        view1.width ≥ relatedView.width ./ 2
        view1.width ≥ relatedView.width ./ 2
        view1.width ≥ relatedView.width ./ 2
        view1.width ≥ relatedView.width ./ 2
        view1.width ≥ relatedView.width ./ 2
        view1.width ≥ relatedView.width ./ 2
        view1.width ≥ relatedView.width ./ 2
        view1.width ≥ relatedView.width ./ 2
        view1.width ≥ relatedView.width ./ 2
        view1.width ≥ relatedView.width ./ 2
        view1.width ≥ relatedView.width ./ 2
        view1.width ≥ relatedView.width ./ 2
        view1.width ≥ relatedView.width ./ 2
    }

    func impliedcompileView1WidthGreaterThanOrEqualToWidthDividedByConstant() {
        view1 ≥ relatedView.width ./ 2
        view1 ≥ relatedView.width ./ 2
        view1 ≥ relatedView.width ./ 2
        view1 ≥ relatedView.width ./ 2
        view1 ≥ relatedView.width ./ 2
        view1 ≥ relatedView.width ./ 2
        view1 ≥ relatedView.width ./ 2
        view1 ≥ relatedView.width ./ 2
        view1 ≥ relatedView.width ./ 2
        view1 ≥ relatedView.width ./ 2
        view1 ≥ relatedView.width ./ 2
        view1 ≥ relatedView.width ./ 2
        view1 ≥ relatedView.width ./ 2
        view1 ≥ relatedView.width ./ 2
        view1 ≥ relatedView.width ./ 2
        view1 ≥ relatedView.width ./ 2
        view1 ≥ relatedView.width ./ 2
        view1 ≥ relatedView.width ./ 2
        view1 ≥ relatedView.width ./ 2
        view1 ≥ relatedView.width ./ 2
    }

    // MARK: GreaterThanOrEqual Prioritized
    func compileView1WidthGreaterThanOrEqualToWidthWithPriority() {
        view1.width ≥ relatedView.width ~ .low
        view1.width ≥ relatedView.width ~ .low
        view1.width ≥ relatedView.width ~ .low
        view1.width ≥ relatedView.width ~ .low
        view1.width ≥ relatedView.width ~ .low
        view1.width ≥ relatedView.width ~ .low
        view1.width ≥ relatedView.width ~ .low
        view1.width ≥ relatedView.width ~ .low
        view1.width ≥ relatedView.width ~ .low
        view1.width ≥ relatedView.width ~ .low
        view1.width ≥ relatedView.width ~ .low
        view1.width ≥ relatedView.width ~ .low
        view1.width ≥ relatedView.width ~ .low
        view1.width ≥ relatedView.width ~ .low
        view1.width ≥ relatedView.width ~ .low
        view1.width ≥ relatedView.width ~ .low
        view1.width ≥ relatedView.width ~ .low
        view1.width ≥ relatedView.width ~ .low
        view1.width ≥ relatedView.width ~ .low
        view1.width ≥ relatedView.width ~ .low
    }

    func impliedcompileView1WidthGreaterThanOrEqualToWidthWithPriority() {
        view1 ≥ relatedView.width ~ .low
        view1 ≥ relatedView.width ~ .low
        view1 ≥ relatedView.width ~ .low
        view1 ≥ relatedView.width ~ .low
        view1 ≥ relatedView.width ~ .low
        view1 ≥ relatedView.width ~ .low
        view1 ≥ relatedView.width ~ .low
        view1 ≥ relatedView.width ~ .low
        view1 ≥ relatedView.width ~ .low
        view1 ≥ relatedView.width ~ .low
        view1 ≥ relatedView.width ~ .low
        view1 ≥ relatedView.width ~ .low
        view1 ≥ relatedView.width ~ .low
        view1 ≥ relatedView.width ~ .low
        view1 ≥ relatedView.width ~ .low
        view1 ≥ relatedView.width ~ .low
        view1 ≥ relatedView.width ~ .low
        view1 ≥ relatedView.width ~ .low
        view1 ≥ relatedView.width ~ .low
        view1 ≥ relatedView.width ~ .low
    }

    func compileView1WidthGreaterThanOrEqualToWidthWithPriorityLiteral() {
        view1.width ≥ relatedView.width ~ 300
        view1.width ≥ relatedView.width ~ 300
        view1.width ≥ relatedView.width ~ 300
        view1.width ≥ relatedView.width ~ 300
        view1.width ≥ relatedView.width ~ 300
        view1.width ≥ relatedView.width ~ 300
        view1.width ≥ relatedView.width ~ 300
        view1.width ≥ relatedView.width ~ 300
        view1.width ≥ relatedView.width ~ 300
        view1.width ≥ relatedView.width ~ 300
        view1.width ≥ relatedView.width ~ 300
        view1.width ≥ relatedView.width ~ 300
        view1.width ≥ relatedView.width ~ 300
        view1.width ≥ relatedView.width ~ 300
        view1.width ≥ relatedView.width ~ 300
        view1.width ≥ relatedView.width ~ 300
        view1.width ≥ relatedView.width ~ 300
        view1.width ≥ relatedView.width ~ 300
        view1.width ≥ relatedView.width ~ 300
        view1.width ≥ relatedView.width ~ 300
    }

    func impliedcompileView1WidthGreaterThanOrEqualToWidthWithPriorityLiteral() {
        view1 ≥ relatedView.width ~ 300
        view1 ≥ relatedView.width ~ 300
        view1 ≥ relatedView.width ~ 300
        view1 ≥ relatedView.width ~ 300
        view1 ≥ relatedView.width ~ 300
        view1 ≥ relatedView.width ~ 300
        view1 ≥ relatedView.width ~ 300
        view1 ≥ relatedView.width ~ 300
        view1 ≥ relatedView.width ~ 300
        view1 ≥ relatedView.width ~ 300
        view1 ≥ relatedView.width ~ 300
        view1 ≥ relatedView.width ~ 300
        view1 ≥ relatedView.width ~ 300
        view1 ≥ relatedView.width ~ 300
        view1 ≥ relatedView.width ~ 300
        view1 ≥ relatedView.width ~ 300
        view1 ≥ relatedView.width ~ 300
        view1 ≥ relatedView.width ~ 300
        view1 ≥ relatedView.width ~ 300
        view1 ≥ relatedView.width ~ 300
    }

    func compileView1WidthGreaterThanOrEqualToWidthWithPriorityArithmetic() {
        view1.width ≥ relatedView.width ~ .high .- 1
        view1.width ≥ relatedView.width ~ .high .- 1
        view1.width ≥ relatedView.width ~ .high .- 1
        view1.width ≥ relatedView.width ~ .high .- 1
        view1.width ≥ relatedView.width ~ .high .- 1
        view1.width ≥ relatedView.width ~ .high .- 1
        view1.width ≥ relatedView.width ~ .high .- 1
        view1.width ≥ relatedView.width ~ .high .- 1
        view1.width ≥ relatedView.width ~ .high .- 1
        view1.width ≥ relatedView.width ~ .high .- 1
        view1.width ≥ relatedView.width ~ .high .- 1
        view1.width ≥ relatedView.width ~ .high .- 1
        view1.width ≥ relatedView.width ~ .high .- 1
        view1.width ≥ relatedView.width ~ .high .- 1
        view1.width ≥ relatedView.width ~ .high .- 1
        view1.width ≥ relatedView.width ~ .high .- 1
        view1.width ≥ relatedView.width ~ .high .- 1
        view1.width ≥ relatedView.width ~ .high .- 1
        view1.width ≥ relatedView.width ~ .high .- 1
        view1.width ≥ relatedView.width ~ .high .- 1
    }

    func impliedcompileView1WidthGreaterThanOrEqualToWidthWithPriorityArithmetic() {
        view1 ≥ relatedView.width ~ .high .- 1
        view1 ≥ relatedView.width ~ .high .- 1
        view1 ≥ relatedView.width ~ .high .- 1
        view1 ≥ relatedView.width ~ .high .- 1
        view1 ≥ relatedView.width ~ .high .- 1
        view1 ≥ relatedView.width ~ .high .- 1
        view1 ≥ relatedView.width ~ .high .- 1
        view1 ≥ relatedView.width ~ .high .- 1
        view1 ≥ relatedView.width ~ .high .- 1
        view1 ≥ relatedView.width ~ .high .- 1
        view1 ≥ relatedView.width ~ .high .- 1
        view1 ≥ relatedView.width ~ .high .- 1
        view1 ≥ relatedView.width ~ .high .- 1
        view1 ≥ relatedView.width ~ .high .- 1
        view1 ≥ relatedView.width ~ .high .- 1
        view1 ≥ relatedView.width ~ .high .- 1
        view1 ≥ relatedView.width ~ .high .- 1
        view1 ≥ relatedView.width ~ .high .- 1
        view1 ≥ relatedView.width ~ .high .- 1
        view1 ≥ relatedView.width ~ .high .- 1
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func compileView1WidthGreaterThanOrEqualToWidthPlusConstantMultiplyingConstant() {
        view1.width ≥ (relatedView.width .+ 10) .* 3
        view1.width ≥ (relatedView.width .+ 10) .* 3
        view1.width ≥ (relatedView.width .+ 10) .* 3
        view1.width ≥ (relatedView.width .+ 10) .* 3
        view1.width ≥ (relatedView.width .+ 10) .* 3
        view1.width ≥ (relatedView.width .+ 10) .* 3
        view1.width ≥ (relatedView.width .+ 10) .* 3
        view1.width ≥ (relatedView.width .+ 10) .* 3
        view1.width ≥ (relatedView.width .+ 10) .* 3
        view1.width ≥ (relatedView.width .+ 10) .* 3
        view1.width ≥ (relatedView.width .+ 10) .* 3
        view1.width ≥ (relatedView.width .+ 10) .* 3
        view1.width ≥ (relatedView.width .+ 10) .* 3
        view1.width ≥ (relatedView.width .+ 10) .* 3
        view1.width ≥ (relatedView.width .+ 10) .* 3
        view1.width ≥ (relatedView.width .+ 10) .* 3
        view1.width ≥ (relatedView.width .+ 10) .* 3
        view1.width ≥ (relatedView.width .+ 10) .* 3
        view1.width ≥ (relatedView.width .+ 10) .* 3
        view1.width ≥ (relatedView.width .+ 10) .* 3
    }

    func impliedcompileView1WidthGreaterThanOrEqualToWidthPlusConstantMultiplyingConstant() {
        view1 ≥ (relatedView.width .+ 10) .* 3
        view1 ≥ (relatedView.width .+ 10) .* 3
        view1 ≥ (relatedView.width .+ 10) .* 3
        view1 ≥ (relatedView.width .+ 10) .* 3
        view1 ≥ (relatedView.width .+ 10) .* 3
        view1 ≥ (relatedView.width .+ 10) .* 3
        view1 ≥ (relatedView.width .+ 10) .* 3
        view1 ≥ (relatedView.width .+ 10) .* 3
        view1 ≥ (relatedView.width .+ 10) .* 3
        view1 ≥ (relatedView.width .+ 10) .* 3
        view1 ≥ (relatedView.width .+ 10) .* 3
        view1 ≥ (relatedView.width .+ 10) .* 3
        view1 ≥ (relatedView.width .+ 10) .* 3
        view1 ≥ (relatedView.width .+ 10) .* 3
        view1 ≥ (relatedView.width .+ 10) .* 3
        view1 ≥ (relatedView.width .+ 10) .* 3
        view1 ≥ (relatedView.width .+ 10) .* 3
        view1 ≥ (relatedView.width .+ 10) .* 3
        view1 ≥ (relatedView.width .+ 10) .* 3
        view1 ≥ (relatedView.width .+ 10) .* 3
    }

    func compileView1WidthGreaterThanOrEqualToWidthPlusConstantMultipliedByConstant() {
        view1.width ≥ 3 .* (relatedView.width .+ 10)
        view1.width ≥ 3 .* (relatedView.width .+ 10)
        view1.width ≥ 3 .* (relatedView.width .+ 10)
        view1.width ≥ 3 .* (relatedView.width .+ 10)
        view1.width ≥ 3 .* (relatedView.width .+ 10)
        view1.width ≥ 3 .* (relatedView.width .+ 10)
        view1.width ≥ 3 .* (relatedView.width .+ 10)
        view1.width ≥ 3 .* (relatedView.width .+ 10)
        view1.width ≥ 3 .* (relatedView.width .+ 10)
        view1.width ≥ 3 .* (relatedView.width .+ 10)
        view1.width ≥ 3 .* (relatedView.width .+ 10)
        view1.width ≥ 3 .* (relatedView.width .+ 10)
        view1.width ≥ 3 .* (relatedView.width .+ 10)
        view1.width ≥ 3 .* (relatedView.width .+ 10)
        view1.width ≥ 3 .* (relatedView.width .+ 10)
        view1.width ≥ 3 .* (relatedView.width .+ 10)
        view1.width ≥ 3 .* (relatedView.width .+ 10)
        view1.width ≥ 3 .* (relatedView.width .+ 10)
        view1.width ≥ 3 .* (relatedView.width .+ 10)
        view1.width ≥ 3 .* (relatedView.width .+ 10)
    }

    func impliedcompileView1WidthGreaterThanOrEqualToWidthPlusConstantMultipliedByConstant() {
        view1 ≥ 3 .* (relatedView.width .+ 10)
        view1 ≥ 3 .* (relatedView.width .+ 10)
        view1 ≥ 3 .* (relatedView.width .+ 10)
        view1 ≥ 3 .* (relatedView.width .+ 10)
        view1 ≥ 3 .* (relatedView.width .+ 10)
        view1 ≥ 3 .* (relatedView.width .+ 10)
        view1 ≥ 3 .* (relatedView.width .+ 10)
        view1 ≥ 3 .* (relatedView.width .+ 10)
        view1 ≥ 3 .* (relatedView.width .+ 10)
        view1 ≥ 3 .* (relatedView.width .+ 10)
        view1 ≥ 3 .* (relatedView.width .+ 10)
        view1 ≥ 3 .* (relatedView.width .+ 10)
        view1 ≥ 3 .* (relatedView.width .+ 10)
        view1 ≥ 3 .* (relatedView.width .+ 10)
        view1 ≥ 3 .* (relatedView.width .+ 10)
        view1 ≥ 3 .* (relatedView.width .+ 10)
        view1 ≥ 3 .* (relatedView.width .+ 10)
        view1 ≥ 3 .* (relatedView.width .+ 10)
        view1 ≥ 3 .* (relatedView.width .+ 10)
        view1 ≥ 3 .* (relatedView.width .+ 10)
    }

    func compileView1WidthGreaterThanOrEqualToWidthMultipliedByConstantPlusConstant() {
        view1.width ≥ 3 .* relatedView.width .+ 10
        view1.width ≥ 3 .* relatedView.width .+ 10
        view1.width ≥ 3 .* relatedView.width .+ 10
        view1.width ≥ 3 .* relatedView.width .+ 10
        view1.width ≥ 3 .* relatedView.width .+ 10
        view1.width ≥ 3 .* relatedView.width .+ 10
        view1.width ≥ 3 .* relatedView.width .+ 10
        view1.width ≥ 3 .* relatedView.width .+ 10
        view1.width ≥ 3 .* relatedView.width .+ 10
        view1.width ≥ 3 .* relatedView.width .+ 10
        view1.width ≥ 3 .* relatedView.width .+ 10
        view1.width ≥ 3 .* relatedView.width .+ 10
        view1.width ≥ 3 .* relatedView.width .+ 10
        view1.width ≥ 3 .* relatedView.width .+ 10
        view1.width ≥ 3 .* relatedView.width .+ 10
        view1.width ≥ 3 .* relatedView.width .+ 10
        view1.width ≥ 3 .* relatedView.width .+ 10
        view1.width ≥ 3 .* relatedView.width .+ 10
        view1.width ≥ 3 .* relatedView.width .+ 10
        view1.width ≥ 3 .* relatedView.width .+ 10
    }

    func impliedcompileView1WidthGreaterThanOrEqualToWidthMultipliedByConstantPlusConstant() {
        view1 ≥ 3 .* relatedView.width .+ 10
        view1 ≥ 3 .* relatedView.width .+ 10
        view1 ≥ 3 .* relatedView.width .+ 10
        view1 ≥ 3 .* relatedView.width .+ 10
        view1 ≥ 3 .* relatedView.width .+ 10
        view1 ≥ 3 .* relatedView.width .+ 10
        view1 ≥ 3 .* relatedView.width .+ 10
        view1 ≥ 3 .* relatedView.width .+ 10
        view1 ≥ 3 .* relatedView.width .+ 10
        view1 ≥ 3 .* relatedView.width .+ 10
        view1 ≥ 3 .* relatedView.width .+ 10
        view1 ≥ 3 .* relatedView.width .+ 10
        view1 ≥ 3 .* relatedView.width .+ 10
        view1 ≥ 3 .* relatedView.width .+ 10
        view1 ≥ 3 .* relatedView.width .+ 10
        view1 ≥ 3 .* relatedView.width .+ 10
        view1 ≥ 3 .* relatedView.width .+ 10
        view1 ≥ 3 .* relatedView.width .+ 10
        view1 ≥ 3 .* relatedView.width .+ 10
        view1 ≥ 3 .* relatedView.width .+ 10
    }

    func compileView1WidthGreaterThanOrEqualToWidthPlusConstantDividedByConstant() {
        view1.width ≥ (relatedView.width .+ 10) ./ 2
        view1.width ≥ (relatedView.width .+ 10) ./ 2
        view1.width ≥ (relatedView.width .+ 10) ./ 2
        view1.width ≥ (relatedView.width .+ 10) ./ 2
        view1.width ≥ (relatedView.width .+ 10) ./ 2
        view1.width ≥ (relatedView.width .+ 10) ./ 2
        view1.width ≥ (relatedView.width .+ 10) ./ 2
        view1.width ≥ (relatedView.width .+ 10) ./ 2
        view1.width ≥ (relatedView.width .+ 10) ./ 2
        view1.width ≥ (relatedView.width .+ 10) ./ 2
        view1.width ≥ (relatedView.width .+ 10) ./ 2
        view1.width ≥ (relatedView.width .+ 10) ./ 2
        view1.width ≥ (relatedView.width .+ 10) ./ 2
        view1.width ≥ (relatedView.width .+ 10) ./ 2
        view1.width ≥ (relatedView.width .+ 10) ./ 2
        view1.width ≥ (relatedView.width .+ 10) ./ 2
        view1.width ≥ (relatedView.width .+ 10) ./ 2
        view1.width ≥ (relatedView.width .+ 10) ./ 2
        view1.width ≥ (relatedView.width .+ 10) ./ 2
        view1.width ≥ (relatedView.width .+ 10) ./ 2
    }

    func impliedcompileView1WidthGreaterThanOrEqualToWidthPlusConstantDividedByConstant() {
        view1 ≥ (relatedView.width .+ 10) ./ 2
        view1 ≥ (relatedView.width .+ 10) ./ 2
        view1 ≥ (relatedView.width .+ 10) ./ 2
        view1 ≥ (relatedView.width .+ 10) ./ 2
        view1 ≥ (relatedView.width .+ 10) ./ 2
        view1 ≥ (relatedView.width .+ 10) ./ 2
        view1 ≥ (relatedView.width .+ 10) ./ 2
        view1 ≥ (relatedView.width .+ 10) ./ 2
        view1 ≥ (relatedView.width .+ 10) ./ 2
        view1 ≥ (relatedView.width .+ 10) ./ 2
        view1 ≥ (relatedView.width .+ 10) ./ 2
        view1 ≥ (relatedView.width .+ 10) ./ 2
        view1 ≥ (relatedView.width .+ 10) ./ 2
        view1 ≥ (relatedView.width .+ 10) ./ 2
        view1 ≥ (relatedView.width .+ 10) ./ 2
        view1 ≥ (relatedView.width .+ 10) ./ 2
        view1 ≥ (relatedView.width .+ 10) ./ 2
        view1 ≥ (relatedView.width .+ 10) ./ 2
        view1 ≥ (relatedView.width .+ 10) ./ 2
        view1 ≥ (relatedView.width .+ 10) ./ 2
    }

// MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func compileView1WidthGreaterThanOrEqualToWidthPlusConstantMultiplyingConstantWithPriority() {
        view1.width ≥ (relatedView.width .+ 10) .* 3 ~ .low
        view1.width ≥ (relatedView.width .+ 10) .* 3 ~ .low
        view1.width ≥ (relatedView.width .+ 10) .* 3 ~ .low
        view1.width ≥ (relatedView.width .+ 10) .* 3 ~ .low
        view1.width ≥ (relatedView.width .+ 10) .* 3 ~ .low
        view1.width ≥ (relatedView.width .+ 10) .* 3 ~ .low
        view1.width ≥ (relatedView.width .+ 10) .* 3 ~ .low
        view1.width ≥ (relatedView.width .+ 10) .* 3 ~ .low
        view1.width ≥ (relatedView.width .+ 10) .* 3 ~ .low
        view1.width ≥ (relatedView.width .+ 10) .* 3 ~ .low
        view1.width ≥ (relatedView.width .+ 10) .* 3 ~ .low
        view1.width ≥ (relatedView.width .+ 10) .* 3 ~ .low
        view1.width ≥ (relatedView.width .+ 10) .* 3 ~ .low
        view1.width ≥ (relatedView.width .+ 10) .* 3 ~ .low
        view1.width ≥ (relatedView.width .+ 10) .* 3 ~ .low
        view1.width ≥ (relatedView.width .+ 10) .* 3 ~ .low
        view1.width ≥ (relatedView.width .+ 10) .* 3 ~ .low
        view1.width ≥ (relatedView.width .+ 10) .* 3 ~ .low
        view1.width ≥ (relatedView.width .+ 10) .* 3 ~ .low
        view1.width ≥ (relatedView.width .+ 10) .* 3 ~ .low
    }

    func impliedcompileView1WidthGreaterThanOrEqualToWidthPlusConstantMultiplyingConstantWithPriority() {
        view1 ≥ (relatedView.width .+ 10) .* 3 ~ .low
        view1 ≥ (relatedView.width .+ 10) .* 3 ~ .low
        view1 ≥ (relatedView.width .+ 10) .* 3 ~ .low
        view1 ≥ (relatedView.width .+ 10) .* 3 ~ .low
        view1 ≥ (relatedView.width .+ 10) .* 3 ~ .low
        view1 ≥ (relatedView.width .+ 10) .* 3 ~ .low
        view1 ≥ (relatedView.width .+ 10) .* 3 ~ .low
        view1 ≥ (relatedView.width .+ 10) .* 3 ~ .low
        view1 ≥ (relatedView.width .+ 10) .* 3 ~ .low
        view1 ≥ (relatedView.width .+ 10) .* 3 ~ .low
        view1 ≥ (relatedView.width .+ 10) .* 3 ~ .low
        view1 ≥ (relatedView.width .+ 10) .* 3 ~ .low
        view1 ≥ (relatedView.width .+ 10) .* 3 ~ .low
        view1 ≥ (relatedView.width .+ 10) .* 3 ~ .low
        view1 ≥ (relatedView.width .+ 10) .* 3 ~ .low
        view1 ≥ (relatedView.width .+ 10) .* 3 ~ .low
        view1 ≥ (relatedView.width .+ 10) .* 3 ~ .low
        view1 ≥ (relatedView.width .+ 10) .* 3 ~ .low
        view1 ≥ (relatedView.width .+ 10) .* 3 ~ .low
        view1 ≥ (relatedView.width .+ 10) .* 3 ~ .low
    }

    func compileView1WidthGreaterThanOrEqualToWidthPlusConstantMultipliedByConstantWithPriority() {
        view1.width ≥ 3 .* (relatedView.width .+ 10) ~ .low
        view1.width ≥ 3 .* (relatedView.width .+ 10) ~ .low
        view1.width ≥ 3 .* (relatedView.width .+ 10) ~ .low
        view1.width ≥ 3 .* (relatedView.width .+ 10) ~ .low
        view1.width ≥ 3 .* (relatedView.width .+ 10) ~ .low
        view1.width ≥ 3 .* (relatedView.width .+ 10) ~ .low
        view1.width ≥ 3 .* (relatedView.width .+ 10) ~ .low
        view1.width ≥ 3 .* (relatedView.width .+ 10) ~ .low
        view1.width ≥ 3 .* (relatedView.width .+ 10) ~ .low
        view1.width ≥ 3 .* (relatedView.width .+ 10) ~ .low
        view1.width ≥ 3 .* (relatedView.width .+ 10) ~ .low
        view1.width ≥ 3 .* (relatedView.width .+ 10) ~ .low
        view1.width ≥ 3 .* (relatedView.width .+ 10) ~ .low
        view1.width ≥ 3 .* (relatedView.width .+ 10) ~ .low
        view1.width ≥ 3 .* (relatedView.width .+ 10) ~ .low
        view1.width ≥ 3 .* (relatedView.width .+ 10) ~ .low
        view1.width ≥ 3 .* (relatedView.width .+ 10) ~ .low
        view1.width ≥ 3 .* (relatedView.width .+ 10) ~ .low
        view1.width ≥ 3 .* (relatedView.width .+ 10) ~ .low
        view1.width ≥ 3 .* (relatedView.width .+ 10) ~ .low
    }

    func impliedcompileView1WidthGreaterThanOrEqualToWidthPlusConstantMultipliedByConstantWithPriority() {
        view1 ≥ 3 .* (relatedView.width .+ 10) ~ .low
        view1 ≥ 3 .* (relatedView.width .+ 10) ~ .low
        view1 ≥ 3 .* (relatedView.width .+ 10) ~ .low
        view1 ≥ 3 .* (relatedView.width .+ 10) ~ .low
        view1 ≥ 3 .* (relatedView.width .+ 10) ~ .low
        view1 ≥ 3 .* (relatedView.width .+ 10) ~ .low
        view1 ≥ 3 .* (relatedView.width .+ 10) ~ .low
        view1 ≥ 3 .* (relatedView.width .+ 10) ~ .low
        view1 ≥ 3 .* (relatedView.width .+ 10) ~ .low
        view1 ≥ 3 .* (relatedView.width .+ 10) ~ .low
        view1 ≥ 3 .* (relatedView.width .+ 10) ~ .low
        view1 ≥ 3 .* (relatedView.width .+ 10) ~ .low
        view1 ≥ 3 .* (relatedView.width .+ 10) ~ .low
        view1 ≥ 3 .* (relatedView.width .+ 10) ~ .low
        view1 ≥ 3 .* (relatedView.width .+ 10) ~ .low
        view1 ≥ 3 .* (relatedView.width .+ 10) ~ .low
        view1 ≥ 3 .* (relatedView.width .+ 10) ~ .low
        view1 ≥ 3 .* (relatedView.width .+ 10) ~ .low
        view1 ≥ 3 .* (relatedView.width .+ 10) ~ .low
        view1 ≥ 3 .* (relatedView.width .+ 10) ~ .low
    }

    func compileView1WidthGreaterThanOrEqualToWidthMultipliedByConstantPlusConstantWithPriority() {
        view1.width ≥ 3 .* relatedView.width .+ 10 ~ .low
        view1.width ≥ 3 .* relatedView.width .+ 10 ~ .low
        view1.width ≥ 3 .* relatedView.width .+ 10 ~ .low
        view1.width ≥ 3 .* relatedView.width .+ 10 ~ .low
        view1.width ≥ 3 .* relatedView.width .+ 10 ~ .low
        view1.width ≥ 3 .* relatedView.width .+ 10 ~ .low
        view1.width ≥ 3 .* relatedView.width .+ 10 ~ .low
        view1.width ≥ 3 .* relatedView.width .+ 10 ~ .low
        view1.width ≥ 3 .* relatedView.width .+ 10 ~ .low
        view1.width ≥ 3 .* relatedView.width .+ 10 ~ .low
        view1.width ≥ 3 .* relatedView.width .+ 10 ~ .low
        view1.width ≥ 3 .* relatedView.width .+ 10 ~ .low
        view1.width ≥ 3 .* relatedView.width .+ 10 ~ .low
        view1.width ≥ 3 .* relatedView.width .+ 10 ~ .low
        view1.width ≥ 3 .* relatedView.width .+ 10 ~ .low
        view1.width ≥ 3 .* relatedView.width .+ 10 ~ .low
        view1.width ≥ 3 .* relatedView.width .+ 10 ~ .low
        view1.width ≥ 3 .* relatedView.width .+ 10 ~ .low
        view1.width ≥ 3 .* relatedView.width .+ 10 ~ .low
        view1.width ≥ 3 .* relatedView.width .+ 10 ~ .low
    }

    func impliedcompileView1WidthGreaterThanOrEqualToWidthMultipliedByConstantPlusConstantWithPriority() {
        view1 ≥ 3 .* relatedView.width .+ 10 ~ .low
        view1 ≥ 3 .* relatedView.width .+ 10 ~ .low
        view1 ≥ 3 .* relatedView.width .+ 10 ~ .low
        view1 ≥ 3 .* relatedView.width .+ 10 ~ .low
        view1 ≥ 3 .* relatedView.width .+ 10 ~ .low
        view1 ≥ 3 .* relatedView.width .+ 10 ~ .low
        view1 ≥ 3 .* relatedView.width .+ 10 ~ .low
        view1 ≥ 3 .* relatedView.width .+ 10 ~ .low
        view1 ≥ 3 .* relatedView.width .+ 10 ~ .low
        view1 ≥ 3 .* relatedView.width .+ 10 ~ .low
        view1 ≥ 3 .* relatedView.width .+ 10 ~ .low
        view1 ≥ 3 .* relatedView.width .+ 10 ~ .low
        view1 ≥ 3 .* relatedView.width .+ 10 ~ .low
        view1 ≥ 3 .* relatedView.width .+ 10 ~ .low
        view1 ≥ 3 .* relatedView.width .+ 10 ~ .low
        view1 ≥ 3 .* relatedView.width .+ 10 ~ .low
        view1 ≥ 3 .* relatedView.width .+ 10 ~ .low
        view1 ≥ 3 .* relatedView.width .+ 10 ~ .low
        view1 ≥ 3 .* relatedView.width .+ 10 ~ .low
        view1 ≥ 3 .* relatedView.width .+ 10 ~ .low
    }

    func compileView1WidthGreaterThanOrEqualToWidthPlusConstantDividedByConstantWithPriority() {
        view1.width ≥ (relatedView.width .+ 10) ./ 2 ~ .low
        view1.width ≥ (relatedView.width .+ 10) ./ 2 ~ .low
        view1.width ≥ (relatedView.width .+ 10) ./ 2 ~ .low
        view1.width ≥ (relatedView.width .+ 10) ./ 2 ~ .low
        view1.width ≥ (relatedView.width .+ 10) ./ 2 ~ .low
        view1.width ≥ (relatedView.width .+ 10) ./ 2 ~ .low
        view1.width ≥ (relatedView.width .+ 10) ./ 2 ~ .low
        view1.width ≥ (relatedView.width .+ 10) ./ 2 ~ .low
        view1.width ≥ (relatedView.width .+ 10) ./ 2 ~ .low
        view1.width ≥ (relatedView.width .+ 10) ./ 2 ~ .low
        view1.width ≥ (relatedView.width .+ 10) ./ 2 ~ .low
        view1.width ≥ (relatedView.width .+ 10) ./ 2 ~ .low
        view1.width ≥ (relatedView.width .+ 10) ./ 2 ~ .low
        view1.width ≥ (relatedView.width .+ 10) ./ 2 ~ .low
        view1.width ≥ (relatedView.width .+ 10) ./ 2 ~ .low
        view1.width ≥ (relatedView.width .+ 10) ./ 2 ~ .low
        view1.width ≥ (relatedView.width .+ 10) ./ 2 ~ .low
        view1.width ≥ (relatedView.width .+ 10) ./ 2 ~ .low
        view1.width ≥ (relatedView.width .+ 10) ./ 2 ~ .low
        view1.width ≥ (relatedView.width .+ 10) ./ 2 ~ .low
    }

    func impliedcompileView1WidthGreaterThanOrEqualToWidthPlusConstantDividedByConstantWithPriority() {
        view1 ≥ (relatedView.width .+ 10) ./ 2 ~ .low
        view1 ≥ (relatedView.width .+ 10) ./ 2 ~ .low
        view1 ≥ (relatedView.width .+ 10) ./ 2 ~ .low
        view1 ≥ (relatedView.width .+ 10) ./ 2 ~ .low
        view1 ≥ (relatedView.width .+ 10) ./ 2 ~ .low
        view1 ≥ (relatedView.width .+ 10) ./ 2 ~ .low
        view1 ≥ (relatedView.width .+ 10) ./ 2 ~ .low
        view1 ≥ (relatedView.width .+ 10) ./ 2 ~ .low
        view1 ≥ (relatedView.width .+ 10) ./ 2 ~ .low
        view1 ≥ (relatedView.width .+ 10) ./ 2 ~ .low
        view1 ≥ (relatedView.width .+ 10) ./ 2 ~ .low
        view1 ≥ (relatedView.width .+ 10) ./ 2 ~ .low
        view1 ≥ (relatedView.width .+ 10) ./ 2 ~ .low
        view1 ≥ (relatedView.width .+ 10) ./ 2 ~ .low
        view1 ≥ (relatedView.width .+ 10) ./ 2 ~ .low
        view1 ≥ (relatedView.width .+ 10) ./ 2 ~ .low
        view1 ≥ (relatedView.width .+ 10) ./ 2 ~ .low
        view1 ≥ (relatedView.width .+ 10) ./ 2 ~ .low
        view1 ≥ (relatedView.width .+ 10) ./ 2 ~ .low
        view1 ≥ (relatedView.width .+ 10) ./ 2 ~ .low
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func compileView1WidthGreaterThanOrEqualToWidthPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        view1.width ≥ (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1.width ≥ (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1.width ≥ (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1.width ≥ (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1.width ≥ (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1.width ≥ (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1.width ≥ (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1.width ≥ (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1.width ≥ (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1.width ≥ (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1.width ≥ (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1.width ≥ (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1.width ≥ (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1.width ≥ (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1.width ≥ (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1.width ≥ (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1.width ≥ (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1.width ≥ (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1.width ≥ (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1.width ≥ (relatedView.width .+ 10) .* 3  ~ .high .- 1
    }

    func impliedcompileView1WidthGreaterThanOrEqualToWidthPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        view1 ≥ (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1 ≥ (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1 ≥ (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1 ≥ (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1 ≥ (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1 ≥ (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1 ≥ (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1 ≥ (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1 ≥ (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1 ≥ (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1 ≥ (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1 ≥ (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1 ≥ (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1 ≥ (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1 ≥ (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1 ≥ (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1 ≥ (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1 ≥ (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1 ≥ (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1 ≥ (relatedView.width .+ 10) .* 3  ~ .high .- 1
    }

    func compileView1WidthGreaterThanOrEqualToWidthPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        view1.width ≥ 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1.width ≥ 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1.width ≥ 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1.width ≥ 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1.width ≥ 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1.width ≥ 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1.width ≥ 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1.width ≥ 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1.width ≥ 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1.width ≥ 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1.width ≥ 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1.width ≥ 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1.width ≥ 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1.width ≥ 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1.width ≥ 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1.width ≥ 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1.width ≥ 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1.width ≥ 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1.width ≥ 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1.width ≥ 3 .* (relatedView.width .+ 10)  ~ .high .- 1
    }

    func impliedcompileView1WidthGreaterThanOrEqualToWidthPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        view1 ≥ 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1 ≥ 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1 ≥ 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1 ≥ 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1 ≥ 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1 ≥ 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1 ≥ 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1 ≥ 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1 ≥ 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1 ≥ 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1 ≥ 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1 ≥ 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1 ≥ 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1 ≥ 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1 ≥ 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1 ≥ 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1 ≥ 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1 ≥ 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1 ≥ 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1 ≥ 3 .* (relatedView.width .+ 10)  ~ .high .- 1
    }

    func compileView1WidthGreaterThanOrEqualToWidthMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        view1.width ≥ 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1.width ≥ 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1.width ≥ 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1.width ≥ 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1.width ≥ 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1.width ≥ 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1.width ≥ 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1.width ≥ 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1.width ≥ 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1.width ≥ 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1.width ≥ 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1.width ≥ 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1.width ≥ 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1.width ≥ 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1.width ≥ 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1.width ≥ 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1.width ≥ 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1.width ≥ 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1.width ≥ 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1.width ≥ 3 .* relatedView.width .+ 10  ~ .high .- 1
    }

    func impliedcompileView1WidthGreaterThanOrEqualToWidthMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        view1 ≥ 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1 ≥ 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1 ≥ 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1 ≥ 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1 ≥ 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1 ≥ 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1 ≥ 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1 ≥ 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1 ≥ 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1 ≥ 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1 ≥ 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1 ≥ 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1 ≥ 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1 ≥ 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1 ≥ 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1 ≥ 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1 ≥ 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1 ≥ 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1 ≥ 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1 ≥ 3 .* relatedView.width .+ 10  ~ .high .- 1
    }

    func compileView1WidthGreaterThanOrEqualToWidthPlusConstantDividedByConstantWithPriorityArithmetic() {
        view1.width ≥ (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1.width ≥ (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1.width ≥ (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1.width ≥ (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1.width ≥ (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1.width ≥ (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1.width ≥ (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1.width ≥ (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1.width ≥ (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1.width ≥ (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1.width ≥ (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1.width ≥ (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1.width ≥ (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1.width ≥ (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1.width ≥ (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1.width ≥ (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1.width ≥ (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1.width ≥ (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1.width ≥ (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1.width ≥ (relatedView.width .+ 10) ./ 2  ~ .high .- 1
    }

    func impliedcompileView1WidthGreaterThanOrEqualToWidthPlusConstantDividedByConstantWithPriorityArithmetic() {
        view1 ≥ (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1 ≥ (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1 ≥ (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1 ≥ (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1 ≥ (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1 ≥ (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1 ≥ (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1 ≥ (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1 ≥ (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1 ≥ (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1 ≥ (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1 ≥ (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1 ≥ (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1 ≥ (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1 ≥ (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1 ≥ (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1 ≥ (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1 ≥ (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1 ≥ (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1 ≥ (relatedView.width .+ 10) ./ 2  ~ .high .- 1
    }

    // MARK: Equal

    func compileView1WidthEqualToWidth() {
        view1.width .= relatedView.width
        view1.width .= relatedView.width
        view1.width .= relatedView.width
        view1.width .= relatedView.width
        view1.width .= relatedView.width
        view1.width .= relatedView.width
        view1.width .= relatedView.width
        view1.width .= relatedView.width
        view1.width .= relatedView.width
        view1.width .= relatedView.width
        view1.width .= relatedView.width
        view1.width .= relatedView.width
        view1.width .= relatedView.width
        view1.width .= relatedView.width
        view1.width .= relatedView.width
        view1.width .= relatedView.width
        view1.width .= relatedView.width
        view1.width .= relatedView.width
        view1.width .= relatedView.width
        view1.width .= relatedView.width
    }

    func impliedcompileView1WidthEqualToWidth() {
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

    // MARK: Equal with constant
    func compileView1WidthEqualToWidthPlusConstant() {
        view1.width .= relatedView.width .+ 10
        view1.width .= relatedView.width .+ 10
        view1.width .= relatedView.width .+ 10
        view1.width .= relatedView.width .+ 10
        view1.width .= relatedView.width .+ 10
        view1.width .= relatedView.width .+ 10
        view1.width .= relatedView.width .+ 10
        view1.width .= relatedView.width .+ 10
        view1.width .= relatedView.width .+ 10
        view1.width .= relatedView.width .+ 10
        view1.width .= relatedView.width .+ 10
        view1.width .= relatedView.width .+ 10
        view1.width .= relatedView.width .+ 10
        view1.width .= relatedView.width .+ 10
        view1.width .= relatedView.width .+ 10
        view1.width .= relatedView.width .+ 10
        view1.width .= relatedView.width .+ 10
        view1.width .= relatedView.width .+ 10
        view1.width .= relatedView.width .+ 10
        view1.width .= relatedView.width .+ 10
    }

    func impliedcompileView1WidthEqualToWidthPlusConstant() {
        view1 .= relatedView.width .+ 10
        view1 .= relatedView.width .+ 10
        view1 .= relatedView.width .+ 10
        view1 .= relatedView.width .+ 10
        view1 .= relatedView.width .+ 10
        view1 .= relatedView.width .+ 10
        view1 .= relatedView.width .+ 10
        view1 .= relatedView.width .+ 10
        view1 .= relatedView.width .+ 10
        view1 .= relatedView.width .+ 10
        view1 .= relatedView.width .+ 10
        view1 .= relatedView.width .+ 10
        view1 .= relatedView.width .+ 10
        view1 .= relatedView.width .+ 10
        view1 .= relatedView.width .+ 10
        view1 .= relatedView.width .+ 10
        view1 .= relatedView.width .+ 10
        view1 .= relatedView.width .+ 10
        view1 .= relatedView.width .+ 10
        view1 .= relatedView.width .+ 10
    }

    func compileView1WidthEqualToWidthMinusConstant() {
        view1.width .= relatedView.width .- 10
        view1.width .= relatedView.width .- 10
        view1.width .= relatedView.width .- 10
        view1.width .= relatedView.width .- 10
        view1.width .= relatedView.width .- 10
        view1.width .= relatedView.width .- 10
        view1.width .= relatedView.width .- 10
        view1.width .= relatedView.width .- 10
        view1.width .= relatedView.width .- 10
        view1.width .= relatedView.width .- 10
        view1.width .= relatedView.width .- 10
        view1.width .= relatedView.width .- 10
        view1.width .= relatedView.width .- 10
        view1.width .= relatedView.width .- 10
        view1.width .= relatedView.width .- 10
        view1.width .= relatedView.width .- 10
        view1.width .= relatedView.width .- 10
        view1.width .= relatedView.width .- 10
        view1.width .= relatedView.width .- 10
        view1.width .= relatedView.width .- 10
    }

    func impliedcompileView1WidthEqualToWidthMinusConstant() {
        view1 .= relatedView.width .- 10
        view1 .= relatedView.width .- 10
        view1 .= relatedView.width .- 10
        view1 .= relatedView.width .- 10
        view1 .= relatedView.width .- 10
        view1 .= relatedView.width .- 10
        view1 .= relatedView.width .- 10
        view1 .= relatedView.width .- 10
        view1 .= relatedView.width .- 10
        view1 .= relatedView.width .- 10
        view1 .= relatedView.width .- 10
        view1 .= relatedView.width .- 10
        view1 .= relatedView.width .- 10
        view1 .= relatedView.width .- 10
        view1 .= relatedView.width .- 10
        view1 .= relatedView.width .- 10
        view1 .= relatedView.width .- 10
        view1 .= relatedView.width .- 10
        view1 .= relatedView.width .- 10
        view1 .= relatedView.width .- 10
    }

    // MARK: Equal with multiplier
    func compileView1WidthEqualToWidthMultiplyingConstant() {
        view1.width .= relatedView.width .* 3
        view1.width .= relatedView.width .* 3
        view1.width .= relatedView.width .* 3
        view1.width .= relatedView.width .* 3
        view1.width .= relatedView.width .* 3
        view1.width .= relatedView.width .* 3
        view1.width .= relatedView.width .* 3
        view1.width .= relatedView.width .* 3
        view1.width .= relatedView.width .* 3
        view1.width .= relatedView.width .* 3
        view1.width .= relatedView.width .* 3
        view1.width .= relatedView.width .* 3
        view1.width .= relatedView.width .* 3
        view1.width .= relatedView.width .* 3
        view1.width .= relatedView.width .* 3
        view1.width .= relatedView.width .* 3
        view1.width .= relatedView.width .* 3
        view1.width .= relatedView.width .* 3
        view1.width .= relatedView.width .* 3
        view1.width .= relatedView.width .* 3
    }

    func impliedcompileView1WidthEqualToWidthMultiplyingConstant() {
        view1 .= relatedView.width .* 3
        view1 .= relatedView.width .* 3
        view1 .= relatedView.width .* 3
        view1 .= relatedView.width .* 3
        view1 .= relatedView.width .* 3
        view1 .= relatedView.width .* 3
        view1 .= relatedView.width .* 3
        view1 .= relatedView.width .* 3
        view1 .= relatedView.width .* 3
        view1 .= relatedView.width .* 3
        view1 .= relatedView.width .* 3
        view1 .= relatedView.width .* 3
        view1 .= relatedView.width .* 3
        view1 .= relatedView.width .* 3
        view1 .= relatedView.width .* 3
        view1 .= relatedView.width .* 3
        view1 .= relatedView.width .* 3
        view1 .= relatedView.width .* 3
        view1 .= relatedView.width .* 3
        view1 .= relatedView.width .* 3
    }

    func compileView1WidthEqualToWidthMultipliedByConstant() {
        view1.width .= 3 .* relatedView.width
        view1.width .= 3 .* relatedView.width
        view1.width .= 3 .* relatedView.width
        view1.width .= 3 .* relatedView.width
        view1.width .= 3 .* relatedView.width
        view1.width .= 3 .* relatedView.width
        view1.width .= 3 .* relatedView.width
        view1.width .= 3 .* relatedView.width
        view1.width .= 3 .* relatedView.width
        view1.width .= 3 .* relatedView.width
        view1.width .= 3 .* relatedView.width
        view1.width .= 3 .* relatedView.width
        view1.width .= 3 .* relatedView.width
        view1.width .= 3 .* relatedView.width
        view1.width .= 3 .* relatedView.width
        view1.width .= 3 .* relatedView.width
        view1.width .= 3 .* relatedView.width
        view1.width .= 3 .* relatedView.width
        view1.width .= 3 .* relatedView.width
        view1.width .= 3 .* relatedView.width
    }

    func impliedcompileView1WidthEqualToWidthMultipliedByConstant() {
        view1 .= 3 .* relatedView.width
        view1 .= 3 .* relatedView.width
        view1 .= 3 .* relatedView.width
        view1 .= 3 .* relatedView.width
        view1 .= 3 .* relatedView.width
        view1 .= 3 .* relatedView.width
        view1 .= 3 .* relatedView.width
        view1 .= 3 .* relatedView.width
        view1 .= 3 .* relatedView.width
        view1 .= 3 .* relatedView.width
        view1 .= 3 .* relatedView.width
        view1 .= 3 .* relatedView.width
        view1 .= 3 .* relatedView.width
        view1 .= 3 .* relatedView.width
        view1 .= 3 .* relatedView.width
        view1 .= 3 .* relatedView.width
        view1 .= 3 .* relatedView.width
        view1 .= 3 .* relatedView.width
        view1 .= 3 .* relatedView.width
        view1 .= 3 .* relatedView.width
    }

    func compileView1WidthEqualToWidthDividedByConstant() {
        view1.width .= relatedView.width ./ 2
        view1.width .= relatedView.width ./ 2
        view1.width .= relatedView.width ./ 2
        view1.width .= relatedView.width ./ 2
        view1.width .= relatedView.width ./ 2
        view1.width .= relatedView.width ./ 2
        view1.width .= relatedView.width ./ 2
        view1.width .= relatedView.width ./ 2
        view1.width .= relatedView.width ./ 2
        view1.width .= relatedView.width ./ 2
        view1.width .= relatedView.width ./ 2
        view1.width .= relatedView.width ./ 2
        view1.width .= relatedView.width ./ 2
        view1.width .= relatedView.width ./ 2
        view1.width .= relatedView.width ./ 2
        view1.width .= relatedView.width ./ 2
        view1.width .= relatedView.width ./ 2
        view1.width .= relatedView.width ./ 2
        view1.width .= relatedView.width ./ 2
        view1.width .= relatedView.width ./ 2
    }

    func impliedcompileView1WidthEqualToWidthDividedByConstant() {
        view1 .= relatedView.width ./ 2
        view1 .= relatedView.width ./ 2
        view1 .= relatedView.width ./ 2
        view1 .= relatedView.width ./ 2
        view1 .= relatedView.width ./ 2
        view1 .= relatedView.width ./ 2
        view1 .= relatedView.width ./ 2
        view1 .= relatedView.width ./ 2
        view1 .= relatedView.width ./ 2
        view1 .= relatedView.width ./ 2
        view1 .= relatedView.width ./ 2
        view1 .= relatedView.width ./ 2
        view1 .= relatedView.width ./ 2
        view1 .= relatedView.width ./ 2
        view1 .= relatedView.width ./ 2
        view1 .= relatedView.width ./ 2
        view1 .= relatedView.width ./ 2
        view1 .= relatedView.width ./ 2
        view1 .= relatedView.width ./ 2
        view1 .= relatedView.width ./ 2
    }

    // MARK: Equal Prioritized
    func compileView1WidthEqualToWidthWithPriority() {
        view1.width .= relatedView.width ~ .low
        view1.width .= relatedView.width ~ .low
        view1.width .= relatedView.width ~ .low
        view1.width .= relatedView.width ~ .low
        view1.width .= relatedView.width ~ .low
        view1.width .= relatedView.width ~ .low
        view1.width .= relatedView.width ~ .low
        view1.width .= relatedView.width ~ .low
        view1.width .= relatedView.width ~ .low
        view1.width .= relatedView.width ~ .low
        view1.width .= relatedView.width ~ .low
        view1.width .= relatedView.width ~ .low
        view1.width .= relatedView.width ~ .low
        view1.width .= relatedView.width ~ .low
        view1.width .= relatedView.width ~ .low
        view1.width .= relatedView.width ~ .low
        view1.width .= relatedView.width ~ .low
        view1.width .= relatedView.width ~ .low
        view1.width .= relatedView.width ~ .low
        view1.width .= relatedView.width ~ .low
    }

    func impliedcompileView1WidthEqualToWidthWithPriority() {
        view1 .= relatedView.width ~ .low
        view1 .= relatedView.width ~ .low
        view1 .= relatedView.width ~ .low
        view1 .= relatedView.width ~ .low
        view1 .= relatedView.width ~ .low
        view1 .= relatedView.width ~ .low
        view1 .= relatedView.width ~ .low
        view1 .= relatedView.width ~ .low
        view1 .= relatedView.width ~ .low
        view1 .= relatedView.width ~ .low
        view1 .= relatedView.width ~ .low
        view1 .= relatedView.width ~ .low
        view1 .= relatedView.width ~ .low
        view1 .= relatedView.width ~ .low
        view1 .= relatedView.width ~ .low
        view1 .= relatedView.width ~ .low
        view1 .= relatedView.width ~ .low
        view1 .= relatedView.width ~ .low
        view1 .= relatedView.width ~ .low
        view1 .= relatedView.width ~ .low
    }

    func compileView1WidthEqualToWidthWithPriorityLiteral() {
        view1.width .= relatedView.width ~ 300
        view1.width .= relatedView.width ~ 300
        view1.width .= relatedView.width ~ 300
        view1.width .= relatedView.width ~ 300
        view1.width .= relatedView.width ~ 300
        view1.width .= relatedView.width ~ 300
        view1.width .= relatedView.width ~ 300
        view1.width .= relatedView.width ~ 300
        view1.width .= relatedView.width ~ 300
        view1.width .= relatedView.width ~ 300
        view1.width .= relatedView.width ~ 300
        view1.width .= relatedView.width ~ 300
        view1.width .= relatedView.width ~ 300
        view1.width .= relatedView.width ~ 300
        view1.width .= relatedView.width ~ 300
        view1.width .= relatedView.width ~ 300
        view1.width .= relatedView.width ~ 300
        view1.width .= relatedView.width ~ 300
        view1.width .= relatedView.width ~ 300
        view1.width .= relatedView.width ~ 300
    }

    func impliedcompileView1WidthEqualToWidthWithPriorityLiteral() {
        view1 .= relatedView.width ~ 300
        view1 .= relatedView.width ~ 300
        view1 .= relatedView.width ~ 300
        view1 .= relatedView.width ~ 300
        view1 .= relatedView.width ~ 300
        view1 .= relatedView.width ~ 300
        view1 .= relatedView.width ~ 300
        view1 .= relatedView.width ~ 300
        view1 .= relatedView.width ~ 300
        view1 .= relatedView.width ~ 300
        view1 .= relatedView.width ~ 300
        view1 .= relatedView.width ~ 300
        view1 .= relatedView.width ~ 300
        view1 .= relatedView.width ~ 300
        view1 .= relatedView.width ~ 300
        view1 .= relatedView.width ~ 300
        view1 .= relatedView.width ~ 300
        view1 .= relatedView.width ~ 300
        view1 .= relatedView.width ~ 300
        view1 .= relatedView.width ~ 300
    }

    func compileView1WidthEqualToWidthWithPriorityArithmetic() {
        view1.width .= relatedView.width ~ .high .- 1
        view1.width .= relatedView.width ~ .high .- 1
        view1.width .= relatedView.width ~ .high .- 1
        view1.width .= relatedView.width ~ .high .- 1
        view1.width .= relatedView.width ~ .high .- 1
        view1.width .= relatedView.width ~ .high .- 1
        view1.width .= relatedView.width ~ .high .- 1
        view1.width .= relatedView.width ~ .high .- 1
        view1.width .= relatedView.width ~ .high .- 1
        view1.width .= relatedView.width ~ .high .- 1
        view1.width .= relatedView.width ~ .high .- 1
        view1.width .= relatedView.width ~ .high .- 1
        view1.width .= relatedView.width ~ .high .- 1
        view1.width .= relatedView.width ~ .high .- 1
        view1.width .= relatedView.width ~ .high .- 1
        view1.width .= relatedView.width ~ .high .- 1
        view1.width .= relatedView.width ~ .high .- 1
        view1.width .= relatedView.width ~ .high .- 1
        view1.width .= relatedView.width ~ .high .- 1
        view1.width .= relatedView.width ~ .high .- 1
    }

    func impliedcompileView1WidthEqualToWidthWithPriorityArithmetic() {
        view1 .= relatedView.width ~ .high .- 1
        view1 .= relatedView.width ~ .high .- 1
        view1 .= relatedView.width ~ .high .- 1
        view1 .= relatedView.width ~ .high .- 1
        view1 .= relatedView.width ~ .high .- 1
        view1 .= relatedView.width ~ .high .- 1
        view1 .= relatedView.width ~ .high .- 1
        view1 .= relatedView.width ~ .high .- 1
        view1 .= relatedView.width ~ .high .- 1
        view1 .= relatedView.width ~ .high .- 1
        view1 .= relatedView.width ~ .high .- 1
        view1 .= relatedView.width ~ .high .- 1
        view1 .= relatedView.width ~ .high .- 1
        view1 .= relatedView.width ~ .high .- 1
        view1 .= relatedView.width ~ .high .- 1
        view1 .= relatedView.width ~ .high .- 1
        view1 .= relatedView.width ~ .high .- 1
        view1 .= relatedView.width ~ .high .- 1
        view1 .= relatedView.width ~ .high .- 1
        view1 .= relatedView.width ~ .high .- 1
    }

    // MARK: Equal with constant .+ multiplier

    func compileView1WidthEqualToWidthPlusConstantMultiplyingConstant() {
        view1.width .= (relatedView.width .+ 10) .* 3
        view1.width .= (relatedView.width .+ 10) .* 3
        view1.width .= (relatedView.width .+ 10) .* 3
        view1.width .= (relatedView.width .+ 10) .* 3
        view1.width .= (relatedView.width .+ 10) .* 3
        view1.width .= (relatedView.width .+ 10) .* 3
        view1.width .= (relatedView.width .+ 10) .* 3
        view1.width .= (relatedView.width .+ 10) .* 3
        view1.width .= (relatedView.width .+ 10) .* 3
        view1.width .= (relatedView.width .+ 10) .* 3
        view1.width .= (relatedView.width .+ 10) .* 3
        view1.width .= (relatedView.width .+ 10) .* 3
        view1.width .= (relatedView.width .+ 10) .* 3
        view1.width .= (relatedView.width .+ 10) .* 3
        view1.width .= (relatedView.width .+ 10) .* 3
        view1.width .= (relatedView.width .+ 10) .* 3
        view1.width .= (relatedView.width .+ 10) .* 3
        view1.width .= (relatedView.width .+ 10) .* 3
        view1.width .= (relatedView.width .+ 10) .* 3
        view1.width .= (relatedView.width .+ 10) .* 3
    }

    func impliedcompileView1WidthEqualToWidthPlusConstantMultiplyingConstant() {
        view1 .= (relatedView.width .+ 10) .* 3
        view1 .= (relatedView.width .+ 10) .* 3
        view1 .= (relatedView.width .+ 10) .* 3
        view1 .= (relatedView.width .+ 10) .* 3
        view1 .= (relatedView.width .+ 10) .* 3
        view1 .= (relatedView.width .+ 10) .* 3
        view1 .= (relatedView.width .+ 10) .* 3
        view1 .= (relatedView.width .+ 10) .* 3
        view1 .= (relatedView.width .+ 10) .* 3
        view1 .= (relatedView.width .+ 10) .* 3
        view1 .= (relatedView.width .+ 10) .* 3
        view1 .= (relatedView.width .+ 10) .* 3
        view1 .= (relatedView.width .+ 10) .* 3
        view1 .= (relatedView.width .+ 10) .* 3
        view1 .= (relatedView.width .+ 10) .* 3
        view1 .= (relatedView.width .+ 10) .* 3
        view1 .= (relatedView.width .+ 10) .* 3
        view1 .= (relatedView.width .+ 10) .* 3
        view1 .= (relatedView.width .+ 10) .* 3
        view1 .= (relatedView.width .+ 10) .* 3
    }

    func compileView1WidthEqualToWidthPlusConstantMultipliedByConstant() {
        view1.width .= 3 .* (relatedView.width .+ 10)
        view1.width .= 3 .* (relatedView.width .+ 10)
        view1.width .= 3 .* (relatedView.width .+ 10)
        view1.width .= 3 .* (relatedView.width .+ 10)
        view1.width .= 3 .* (relatedView.width .+ 10)
        view1.width .= 3 .* (relatedView.width .+ 10)
        view1.width .= 3 .* (relatedView.width .+ 10)
        view1.width .= 3 .* (relatedView.width .+ 10)
        view1.width .= 3 .* (relatedView.width .+ 10)
        view1.width .= 3 .* (relatedView.width .+ 10)
        view1.width .= 3 .* (relatedView.width .+ 10)
        view1.width .= 3 .* (relatedView.width .+ 10)
        view1.width .= 3 .* (relatedView.width .+ 10)
        view1.width .= 3 .* (relatedView.width .+ 10)
        view1.width .= 3 .* (relatedView.width .+ 10)
        view1.width .= 3 .* (relatedView.width .+ 10)
        view1.width .= 3 .* (relatedView.width .+ 10)
        view1.width .= 3 .* (relatedView.width .+ 10)
        view1.width .= 3 .* (relatedView.width .+ 10)
        view1.width .= 3 .* (relatedView.width .+ 10)
    }

    func impliedcompileView1WidthEqualToWidthPlusConstantMultipliedByConstant() {
        view1 .= 3 .* (relatedView.width .+ 10)
        view1 .= 3 .* (relatedView.width .+ 10)
        view1 .= 3 .* (relatedView.width .+ 10)
        view1 .= 3 .* (relatedView.width .+ 10)
        view1 .= 3 .* (relatedView.width .+ 10)
        view1 .= 3 .* (relatedView.width .+ 10)
        view1 .= 3 .* (relatedView.width .+ 10)
        view1 .= 3 .* (relatedView.width .+ 10)
        view1 .= 3 .* (relatedView.width .+ 10)
        view1 .= 3 .* (relatedView.width .+ 10)
        view1 .= 3 .* (relatedView.width .+ 10)
        view1 .= 3 .* (relatedView.width .+ 10)
        view1 .= 3 .* (relatedView.width .+ 10)
        view1 .= 3 .* (relatedView.width .+ 10)
        view1 .= 3 .* (relatedView.width .+ 10)
        view1 .= 3 .* (relatedView.width .+ 10)
        view1 .= 3 .* (relatedView.width .+ 10)
        view1 .= 3 .* (relatedView.width .+ 10)
        view1 .= 3 .* (relatedView.width .+ 10)
        view1 .= 3 .* (relatedView.width .+ 10)
    }

    func compileView1WidthEqualToWidthMultipliedByConstantPlusConstant() {
        view1.width .= 3 .* relatedView.width .+ 10
        view1.width .= 3 .* relatedView.width .+ 10
        view1.width .= 3 .* relatedView.width .+ 10
        view1.width .= 3 .* relatedView.width .+ 10
        view1.width .= 3 .* relatedView.width .+ 10
        view1.width .= 3 .* relatedView.width .+ 10
        view1.width .= 3 .* relatedView.width .+ 10
        view1.width .= 3 .* relatedView.width .+ 10
        view1.width .= 3 .* relatedView.width .+ 10
        view1.width .= 3 .* relatedView.width .+ 10
        view1.width .= 3 .* relatedView.width .+ 10
        view1.width .= 3 .* relatedView.width .+ 10
        view1.width .= 3 .* relatedView.width .+ 10
        view1.width .= 3 .* relatedView.width .+ 10
        view1.width .= 3 .* relatedView.width .+ 10
        view1.width .= 3 .* relatedView.width .+ 10
        view1.width .= 3 .* relatedView.width .+ 10
        view1.width .= 3 .* relatedView.width .+ 10
        view1.width .= 3 .* relatedView.width .+ 10
        view1.width .= 3 .* relatedView.width .+ 10
    }

    func impliedcompileView1WidthEqualToWidthMultipliedByConstantPlusConstant() {
        view1 .= 3 .* relatedView.width .+ 10
        view1 .= 3 .* relatedView.width .+ 10
        view1 .= 3 .* relatedView.width .+ 10
        view1 .= 3 .* relatedView.width .+ 10
        view1 .= 3 .* relatedView.width .+ 10
        view1 .= 3 .* relatedView.width .+ 10
        view1 .= 3 .* relatedView.width .+ 10
        view1 .= 3 .* relatedView.width .+ 10
        view1 .= 3 .* relatedView.width .+ 10
        view1 .= 3 .* relatedView.width .+ 10
        view1 .= 3 .* relatedView.width .+ 10
        view1 .= 3 .* relatedView.width .+ 10
        view1 .= 3 .* relatedView.width .+ 10
        view1 .= 3 .* relatedView.width .+ 10
        view1 .= 3 .* relatedView.width .+ 10
        view1 .= 3 .* relatedView.width .+ 10
        view1 .= 3 .* relatedView.width .+ 10
        view1 .= 3 .* relatedView.width .+ 10
        view1 .= 3 .* relatedView.width .+ 10
        view1 .= 3 .* relatedView.width .+ 10
    }

    func compileView1WidthEqualToWidthPlusConstantDividedByConstant() {
        view1.width .= (relatedView.width .+ 10) ./ 2
        view1.width .= (relatedView.width .+ 10) ./ 2
        view1.width .= (relatedView.width .+ 10) ./ 2
        view1.width .= (relatedView.width .+ 10) ./ 2
        view1.width .= (relatedView.width .+ 10) ./ 2
        view1.width .= (relatedView.width .+ 10) ./ 2
        view1.width .= (relatedView.width .+ 10) ./ 2
        view1.width .= (relatedView.width .+ 10) ./ 2
        view1.width .= (relatedView.width .+ 10) ./ 2
        view1.width .= (relatedView.width .+ 10) ./ 2
        view1.width .= (relatedView.width .+ 10) ./ 2
        view1.width .= (relatedView.width .+ 10) ./ 2
        view1.width .= (relatedView.width .+ 10) ./ 2
        view1.width .= (relatedView.width .+ 10) ./ 2
        view1.width .= (relatedView.width .+ 10) ./ 2
        view1.width .= (relatedView.width .+ 10) ./ 2
        view1.width .= (relatedView.width .+ 10) ./ 2
        view1.width .= (relatedView.width .+ 10) ./ 2
        view1.width .= (relatedView.width .+ 10) ./ 2
        view1.width .= (relatedView.width .+ 10) ./ 2
    }

    func impliedcompileView1WidthEqualToWidthPlusConstantDividedByConstant() {
        view1 .= (relatedView.width .+ 10) ./ 2
        view1 .= (relatedView.width .+ 10) ./ 2
        view1 .= (relatedView.width .+ 10) ./ 2
        view1 .= (relatedView.width .+ 10) ./ 2
        view1 .= (relatedView.width .+ 10) ./ 2
        view1 .= (relatedView.width .+ 10) ./ 2
        view1 .= (relatedView.width .+ 10) ./ 2
        view1 .= (relatedView.width .+ 10) ./ 2
        view1 .= (relatedView.width .+ 10) ./ 2
        view1 .= (relatedView.width .+ 10) ./ 2
        view1 .= (relatedView.width .+ 10) ./ 2
        view1 .= (relatedView.width .+ 10) ./ 2
        view1 .= (relatedView.width .+ 10) ./ 2
        view1 .= (relatedView.width .+ 10) ./ 2
        view1 .= (relatedView.width .+ 10) ./ 2
        view1 .= (relatedView.width .+ 10) ./ 2
        view1 .= (relatedView.width .+ 10) ./ 2
        view1 .= (relatedView.width .+ 10) ./ 2
        view1 .= (relatedView.width .+ 10) ./ 2
        view1 .= (relatedView.width .+ 10) ./ 2
    }

// MARK: Equal with constant .+ multiplier and priority

    func compileView1WidthEqualToWidthPlusConstantMultiplyingConstantWithPriority() {
        view1.width .= (relatedView.width .+ 10) .* 3 ~ .low
        view1.width .= (relatedView.width .+ 10) .* 3 ~ .low
        view1.width .= (relatedView.width .+ 10) .* 3 ~ .low
        view1.width .= (relatedView.width .+ 10) .* 3 ~ .low
        view1.width .= (relatedView.width .+ 10) .* 3 ~ .low
        view1.width .= (relatedView.width .+ 10) .* 3 ~ .low
        view1.width .= (relatedView.width .+ 10) .* 3 ~ .low
        view1.width .= (relatedView.width .+ 10) .* 3 ~ .low
        view1.width .= (relatedView.width .+ 10) .* 3 ~ .low
        view1.width .= (relatedView.width .+ 10) .* 3 ~ .low
        view1.width .= (relatedView.width .+ 10) .* 3 ~ .low
        view1.width .= (relatedView.width .+ 10) .* 3 ~ .low
        view1.width .= (relatedView.width .+ 10) .* 3 ~ .low
        view1.width .= (relatedView.width .+ 10) .* 3 ~ .low
        view1.width .= (relatedView.width .+ 10) .* 3 ~ .low
        view1.width .= (relatedView.width .+ 10) .* 3 ~ .low
        view1.width .= (relatedView.width .+ 10) .* 3 ~ .low
        view1.width .= (relatedView.width .+ 10) .* 3 ~ .low
        view1.width .= (relatedView.width .+ 10) .* 3 ~ .low
        view1.width .= (relatedView.width .+ 10) .* 3 ~ .low
    }

    func impliedcompileView1WidthEqualToWidthPlusConstantMultiplyingConstantWithPriority() {
        view1 .= (relatedView.width .+ 10) .* 3 ~ .low
        view1 .= (relatedView.width .+ 10) .* 3 ~ .low
        view1 .= (relatedView.width .+ 10) .* 3 ~ .low
        view1 .= (relatedView.width .+ 10) .* 3 ~ .low
        view1 .= (relatedView.width .+ 10) .* 3 ~ .low
        view1 .= (relatedView.width .+ 10) .* 3 ~ .low
        view1 .= (relatedView.width .+ 10) .* 3 ~ .low
        view1 .= (relatedView.width .+ 10) .* 3 ~ .low
        view1 .= (relatedView.width .+ 10) .* 3 ~ .low
        view1 .= (relatedView.width .+ 10) .* 3 ~ .low
        view1 .= (relatedView.width .+ 10) .* 3 ~ .low
        view1 .= (relatedView.width .+ 10) .* 3 ~ .low
        view1 .= (relatedView.width .+ 10) .* 3 ~ .low
        view1 .= (relatedView.width .+ 10) .* 3 ~ .low
        view1 .= (relatedView.width .+ 10) .* 3 ~ .low
        view1 .= (relatedView.width .+ 10) .* 3 ~ .low
        view1 .= (relatedView.width .+ 10) .* 3 ~ .low
        view1 .= (relatedView.width .+ 10) .* 3 ~ .low
        view1 .= (relatedView.width .+ 10) .* 3 ~ .low
        view1 .= (relatedView.width .+ 10) .* 3 ~ .low
    }

    func compileView1WidthEqualToWidthPlusConstantMultipliedByConstantWithPriority() {
        view1.width .= 3 .* (relatedView.width .+ 10) ~ .low
        view1.width .= 3 .* (relatedView.width .+ 10) ~ .low
        view1.width .= 3 .* (relatedView.width .+ 10) ~ .low
        view1.width .= 3 .* (relatedView.width .+ 10) ~ .low
        view1.width .= 3 .* (relatedView.width .+ 10) ~ .low
        view1.width .= 3 .* (relatedView.width .+ 10) ~ .low
        view1.width .= 3 .* (relatedView.width .+ 10) ~ .low
        view1.width .= 3 .* (relatedView.width .+ 10) ~ .low
        view1.width .= 3 .* (relatedView.width .+ 10) ~ .low
        view1.width .= 3 .* (relatedView.width .+ 10) ~ .low
        view1.width .= 3 .* (relatedView.width .+ 10) ~ .low
        view1.width .= 3 .* (relatedView.width .+ 10) ~ .low
        view1.width .= 3 .* (relatedView.width .+ 10) ~ .low
        view1.width .= 3 .* (relatedView.width .+ 10) ~ .low
        view1.width .= 3 .* (relatedView.width .+ 10) ~ .low
        view1.width .= 3 .* (relatedView.width .+ 10) ~ .low
        view1.width .= 3 .* (relatedView.width .+ 10) ~ .low
        view1.width .= 3 .* (relatedView.width .+ 10) ~ .low
        view1.width .= 3 .* (relatedView.width .+ 10) ~ .low
        view1.width .= 3 .* (relatedView.width .+ 10) ~ .low
    }

    func impliedcompileView1WidthEqualToWidthPlusConstantMultipliedByConstantWithPriority() {
        view1 .= 3 .* (relatedView.width .+ 10) ~ .low
        view1 .= 3 .* (relatedView.width .+ 10) ~ .low
        view1 .= 3 .* (relatedView.width .+ 10) ~ .low
        view1 .= 3 .* (relatedView.width .+ 10) ~ .low
        view1 .= 3 .* (relatedView.width .+ 10) ~ .low
        view1 .= 3 .* (relatedView.width .+ 10) ~ .low
        view1 .= 3 .* (relatedView.width .+ 10) ~ .low
        view1 .= 3 .* (relatedView.width .+ 10) ~ .low
        view1 .= 3 .* (relatedView.width .+ 10) ~ .low
        view1 .= 3 .* (relatedView.width .+ 10) ~ .low
        view1 .= 3 .* (relatedView.width .+ 10) ~ .low
        view1 .= 3 .* (relatedView.width .+ 10) ~ .low
        view1 .= 3 .* (relatedView.width .+ 10) ~ .low
        view1 .= 3 .* (relatedView.width .+ 10) ~ .low
        view1 .= 3 .* (relatedView.width .+ 10) ~ .low
        view1 .= 3 .* (relatedView.width .+ 10) ~ .low
        view1 .= 3 .* (relatedView.width .+ 10) ~ .low
        view1 .= 3 .* (relatedView.width .+ 10) ~ .low
        view1 .= 3 .* (relatedView.width .+ 10) ~ .low
        view1 .= 3 .* (relatedView.width .+ 10) ~ .low
    }

    func compileView1WidthEqualToWidthMultipliedByConstantPlusConstantWithPriority() {
        view1.width .= 3 .* relatedView.width .+ 10 ~ .low
        view1.width .= 3 .* relatedView.width .+ 10 ~ .low
        view1.width .= 3 .* relatedView.width .+ 10 ~ .low
        view1.width .= 3 .* relatedView.width .+ 10 ~ .low
        view1.width .= 3 .* relatedView.width .+ 10 ~ .low
        view1.width .= 3 .* relatedView.width .+ 10 ~ .low
        view1.width .= 3 .* relatedView.width .+ 10 ~ .low
        view1.width .= 3 .* relatedView.width .+ 10 ~ .low
        view1.width .= 3 .* relatedView.width .+ 10 ~ .low
        view1.width .= 3 .* relatedView.width .+ 10 ~ .low
        view1.width .= 3 .* relatedView.width .+ 10 ~ .low
        view1.width .= 3 .* relatedView.width .+ 10 ~ .low
        view1.width .= 3 .* relatedView.width .+ 10 ~ .low
        view1.width .= 3 .* relatedView.width .+ 10 ~ .low
        view1.width .= 3 .* relatedView.width .+ 10 ~ .low
        view1.width .= 3 .* relatedView.width .+ 10 ~ .low
        view1.width .= 3 .* relatedView.width .+ 10 ~ .low
        view1.width .= 3 .* relatedView.width .+ 10 ~ .low
        view1.width .= 3 .* relatedView.width .+ 10 ~ .low
        view1.width .= 3 .* relatedView.width .+ 10 ~ .low
    }

    func impliedcompileView1WidthEqualToWidthMultipliedByConstantPlusConstantWithPriority() {
        view1 .= 3 .* relatedView.width .+ 10 ~ .low
        view1 .= 3 .* relatedView.width .+ 10 ~ .low
        view1 .= 3 .* relatedView.width .+ 10 ~ .low
        view1 .= 3 .* relatedView.width .+ 10 ~ .low
        view1 .= 3 .* relatedView.width .+ 10 ~ .low
        view1 .= 3 .* relatedView.width .+ 10 ~ .low
        view1 .= 3 .* relatedView.width .+ 10 ~ .low
        view1 .= 3 .* relatedView.width .+ 10 ~ .low
        view1 .= 3 .* relatedView.width .+ 10 ~ .low
        view1 .= 3 .* relatedView.width .+ 10 ~ .low
        view1 .= 3 .* relatedView.width .+ 10 ~ .low
        view1 .= 3 .* relatedView.width .+ 10 ~ .low
        view1 .= 3 .* relatedView.width .+ 10 ~ .low
        view1 .= 3 .* relatedView.width .+ 10 ~ .low
        view1 .= 3 .* relatedView.width .+ 10 ~ .low
        view1 .= 3 .* relatedView.width .+ 10 ~ .low
        view1 .= 3 .* relatedView.width .+ 10 ~ .low
        view1 .= 3 .* relatedView.width .+ 10 ~ .low
        view1 .= 3 .* relatedView.width .+ 10 ~ .low
        view1 .= 3 .* relatedView.width .+ 10 ~ .low
    }

    func compileView1WidthEqualToWidthPlusConstantDividedByConstantWithPriority() {
        view1.width .= (relatedView.width .+ 10) ./ 2 ~ .low
        view1.width .= (relatedView.width .+ 10) ./ 2 ~ .low
        view1.width .= (relatedView.width .+ 10) ./ 2 ~ .low
        view1.width .= (relatedView.width .+ 10) ./ 2 ~ .low
        view1.width .= (relatedView.width .+ 10) ./ 2 ~ .low
        view1.width .= (relatedView.width .+ 10) ./ 2 ~ .low
        view1.width .= (relatedView.width .+ 10) ./ 2 ~ .low
        view1.width .= (relatedView.width .+ 10) ./ 2 ~ .low
        view1.width .= (relatedView.width .+ 10) ./ 2 ~ .low
        view1.width .= (relatedView.width .+ 10) ./ 2 ~ .low
        view1.width .= (relatedView.width .+ 10) ./ 2 ~ .low
        view1.width .= (relatedView.width .+ 10) ./ 2 ~ .low
        view1.width .= (relatedView.width .+ 10) ./ 2 ~ .low
        view1.width .= (relatedView.width .+ 10) ./ 2 ~ .low
        view1.width .= (relatedView.width .+ 10) ./ 2 ~ .low
        view1.width .= (relatedView.width .+ 10) ./ 2 ~ .low
        view1.width .= (relatedView.width .+ 10) ./ 2 ~ .low
        view1.width .= (relatedView.width .+ 10) ./ 2 ~ .low
        view1.width .= (relatedView.width .+ 10) ./ 2 ~ .low
        view1.width .= (relatedView.width .+ 10) ./ 2 ~ .low
    }

    func impliedcompileView1WidthEqualToWidthPlusConstantDividedByConstantWithPriority() {
        view1 .= (relatedView.width .+ 10) ./ 2 ~ .low
        view1 .= (relatedView.width .+ 10) ./ 2 ~ .low
        view1 .= (relatedView.width .+ 10) ./ 2 ~ .low
        view1 .= (relatedView.width .+ 10) ./ 2 ~ .low
        view1 .= (relatedView.width .+ 10) ./ 2 ~ .low
        view1 .= (relatedView.width .+ 10) ./ 2 ~ .low
        view1 .= (relatedView.width .+ 10) ./ 2 ~ .low
        view1 .= (relatedView.width .+ 10) ./ 2 ~ .low
        view1 .= (relatedView.width .+ 10) ./ 2 ~ .low
        view1 .= (relatedView.width .+ 10) ./ 2 ~ .low
        view1 .= (relatedView.width .+ 10) ./ 2 ~ .low
        view1 .= (relatedView.width .+ 10) ./ 2 ~ .low
        view1 .= (relatedView.width .+ 10) ./ 2 ~ .low
        view1 .= (relatedView.width .+ 10) ./ 2 ~ .low
        view1 .= (relatedView.width .+ 10) ./ 2 ~ .low
        view1 .= (relatedView.width .+ 10) ./ 2 ~ .low
        view1 .= (relatedView.width .+ 10) ./ 2 ~ .low
        view1 .= (relatedView.width .+ 10) ./ 2 ~ .low
        view1 .= (relatedView.width .+ 10) ./ 2 ~ .low
        view1 .= (relatedView.width .+ 10) ./ 2 ~ .low
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func compileView1WidthEqualToWidthPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        view1.width .= (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1.width .= (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1.width .= (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1.width .= (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1.width .= (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1.width .= (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1.width .= (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1.width .= (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1.width .= (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1.width .= (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1.width .= (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1.width .= (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1.width .= (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1.width .= (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1.width .= (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1.width .= (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1.width .= (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1.width .= (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1.width .= (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1.width .= (relatedView.width .+ 10) .* 3  ~ .high .- 1
    }

    func impliedcompileView1WidthEqualToWidthPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        view1 .= (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1 .= (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1 .= (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1 .= (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1 .= (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1 .= (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1 .= (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1 .= (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1 .= (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1 .= (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1 .= (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1 .= (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1 .= (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1 .= (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1 .= (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1 .= (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1 .= (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1 .= (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1 .= (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1 .= (relatedView.width .+ 10) .* 3  ~ .high .- 1
    }

    func compileView1WidthEqualToWidthPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        view1.width .= 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1.width .= 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1.width .= 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1.width .= 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1.width .= 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1.width .= 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1.width .= 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1.width .= 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1.width .= 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1.width .= 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1.width .= 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1.width .= 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1.width .= 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1.width .= 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1.width .= 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1.width .= 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1.width .= 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1.width .= 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1.width .= 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1.width .= 3 .* (relatedView.width .+ 10)  ~ .high .- 1
    }

    func impliedcompileView1WidthEqualToWidthPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        view1 .= 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1 .= 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1 .= 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1 .= 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1 .= 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1 .= 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1 .= 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1 .= 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1 .= 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1 .= 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1 .= 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1 .= 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1 .= 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1 .= 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1 .= 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1 .= 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1 .= 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1 .= 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1 .= 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1 .= 3 .* (relatedView.width .+ 10)  ~ .high .- 1
    }

    func compileView1WidthEqualToWidthMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        view1.width .= 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1.width .= 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1.width .= 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1.width .= 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1.width .= 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1.width .= 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1.width .= 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1.width .= 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1.width .= 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1.width .= 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1.width .= 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1.width .= 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1.width .= 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1.width .= 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1.width .= 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1.width .= 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1.width .= 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1.width .= 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1.width .= 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1.width .= 3 .* relatedView.width .+ 10  ~ .high .- 1
    }

    func impliedcompileView1WidthEqualToWidthMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        view1 .= 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1 .= 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1 .= 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1 .= 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1 .= 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1 .= 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1 .= 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1 .= 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1 .= 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1 .= 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1 .= 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1 .= 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1 .= 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1 .= 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1 .= 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1 .= 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1 .= 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1 .= 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1 .= 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1 .= 3 .* relatedView.width .+ 10  ~ .high .- 1
    }

    func compileView1WidthEqualToWidthPlusConstantDividedByConstantWithPriorityArithmetic() {
        view1.width .= (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1.width .= (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1.width .= (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1.width .= (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1.width .= (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1.width .= (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1.width .= (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1.width .= (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1.width .= (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1.width .= (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1.width .= (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1.width .= (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1.width .= (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1.width .= (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1.width .= (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1.width .= (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1.width .= (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1.width .= (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1.width .= (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1.width .= (relatedView.width .+ 10) ./ 2  ~ .high .- 1
    }

    func impliedcompileView1WidthEqualToWidthPlusConstantDividedByConstantWithPriorityArithmetic() {
        view1 .= (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1 .= (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1 .= (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1 .= (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1 .= (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1 .= (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1 .= (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1 .= (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1 .= (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1 .= (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1 .= (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1 .= (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1 .= (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1 .= (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1 .= (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1 .= (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1 .= (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1 .= (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1 .= (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1 .= (relatedView.width .+ 10) ./ 2  ~ .high .- 1
    }

    // MARK: view1Width <=> relatedViewWidthAnchor

    // MARK: LessThanOrEqual

    func compileView1WidthLessThanOrEqualToWidthAnchor() {
        view1.width ≤ relatedView.widthAnchor
        view1.width ≤ relatedView.widthAnchor
        view1.width ≤ relatedView.widthAnchor
        view1.width ≤ relatedView.widthAnchor
        view1.width ≤ relatedView.widthAnchor
        view1.width ≤ relatedView.widthAnchor
        view1.width ≤ relatedView.widthAnchor
        view1.width ≤ relatedView.widthAnchor
        view1.width ≤ relatedView.widthAnchor
        view1.width ≤ relatedView.widthAnchor
        view1.width ≤ relatedView.widthAnchor
        view1.width ≤ relatedView.widthAnchor
        view1.width ≤ relatedView.widthAnchor
        view1.width ≤ relatedView.widthAnchor
        view1.width ≤ relatedView.widthAnchor
        view1.width ≤ relatedView.widthAnchor
        view1.width ≤ relatedView.widthAnchor
        view1.width ≤ relatedView.widthAnchor
        view1.width ≤ relatedView.widthAnchor
        view1.width ≤ relatedView.widthAnchor
    }

    func impliedcompileView1WidthLessThanOrEqualToWidthAnchor() {
        view1 ≤ relatedView.widthAnchor
        view1 ≤ relatedView.widthAnchor
        view1 ≤ relatedView.widthAnchor
        view1 ≤ relatedView.widthAnchor
        view1 ≤ relatedView.widthAnchor
        view1 ≤ relatedView.widthAnchor
        view1 ≤ relatedView.widthAnchor
        view1 ≤ relatedView.widthAnchor
        view1 ≤ relatedView.widthAnchor
        view1 ≤ relatedView.widthAnchor
        view1 ≤ relatedView.widthAnchor
        view1 ≤ relatedView.widthAnchor
        view1 ≤ relatedView.widthAnchor
        view1 ≤ relatedView.widthAnchor
        view1 ≤ relatedView.widthAnchor
        view1 ≤ relatedView.widthAnchor
        view1 ≤ relatedView.widthAnchor
        view1 ≤ relatedView.widthAnchor
        view1 ≤ relatedView.widthAnchor
        view1 ≤ relatedView.widthAnchor
    }

    // MARK: LessThanOrEqual with constant
    func compileView1WidthLessThanOrEqualToWidthAnchorPlusConstant() {
        view1.width ≤ relatedView.widthAnchor .+ 10
        view1.width ≤ relatedView.widthAnchor .+ 10
        view1.width ≤ relatedView.widthAnchor .+ 10
        view1.width ≤ relatedView.widthAnchor .+ 10
        view1.width ≤ relatedView.widthAnchor .+ 10
        view1.width ≤ relatedView.widthAnchor .+ 10
        view1.width ≤ relatedView.widthAnchor .+ 10
        view1.width ≤ relatedView.widthAnchor .+ 10
        view1.width ≤ relatedView.widthAnchor .+ 10
        view1.width ≤ relatedView.widthAnchor .+ 10
        view1.width ≤ relatedView.widthAnchor .+ 10
        view1.width ≤ relatedView.widthAnchor .+ 10
        view1.width ≤ relatedView.widthAnchor .+ 10
        view1.width ≤ relatedView.widthAnchor .+ 10
        view1.width ≤ relatedView.widthAnchor .+ 10
        view1.width ≤ relatedView.widthAnchor .+ 10
        view1.width ≤ relatedView.widthAnchor .+ 10
        view1.width ≤ relatedView.widthAnchor .+ 10
        view1.width ≤ relatedView.widthAnchor .+ 10
        view1.width ≤ relatedView.widthAnchor .+ 10
    }

    func impliedcompileView1WidthLessThanOrEqualToWidthAnchorPlusConstant() {
        view1 ≤ relatedView.widthAnchor .+ 10
        view1 ≤ relatedView.widthAnchor .+ 10
        view1 ≤ relatedView.widthAnchor .+ 10
        view1 ≤ relatedView.widthAnchor .+ 10
        view1 ≤ relatedView.widthAnchor .+ 10
        view1 ≤ relatedView.widthAnchor .+ 10
        view1 ≤ relatedView.widthAnchor .+ 10
        view1 ≤ relatedView.widthAnchor .+ 10
        view1 ≤ relatedView.widthAnchor .+ 10
        view1 ≤ relatedView.widthAnchor .+ 10
        view1 ≤ relatedView.widthAnchor .+ 10
        view1 ≤ relatedView.widthAnchor .+ 10
        view1 ≤ relatedView.widthAnchor .+ 10
        view1 ≤ relatedView.widthAnchor .+ 10
        view1 ≤ relatedView.widthAnchor .+ 10
        view1 ≤ relatedView.widthAnchor .+ 10
        view1 ≤ relatedView.widthAnchor .+ 10
        view1 ≤ relatedView.widthAnchor .+ 10
        view1 ≤ relatedView.widthAnchor .+ 10
        view1 ≤ relatedView.widthAnchor .+ 10
    }

    func compileView1WidthLessThanOrEqualToWidthAnchorMinusConstant() {
        view1.width ≤ relatedView.widthAnchor .- 10
        view1.width ≤ relatedView.widthAnchor .- 10
        view1.width ≤ relatedView.widthAnchor .- 10
        view1.width ≤ relatedView.widthAnchor .- 10
        view1.width ≤ relatedView.widthAnchor .- 10
        view1.width ≤ relatedView.widthAnchor .- 10
        view1.width ≤ relatedView.widthAnchor .- 10
        view1.width ≤ relatedView.widthAnchor .- 10
        view1.width ≤ relatedView.widthAnchor .- 10
        view1.width ≤ relatedView.widthAnchor .- 10
        view1.width ≤ relatedView.widthAnchor .- 10
        view1.width ≤ relatedView.widthAnchor .- 10
        view1.width ≤ relatedView.widthAnchor .- 10
        view1.width ≤ relatedView.widthAnchor .- 10
        view1.width ≤ relatedView.widthAnchor .- 10
        view1.width ≤ relatedView.widthAnchor .- 10
        view1.width ≤ relatedView.widthAnchor .- 10
        view1.width ≤ relatedView.widthAnchor .- 10
        view1.width ≤ relatedView.widthAnchor .- 10
        view1.width ≤ relatedView.widthAnchor .- 10
    }

    func impliedcompileView1WidthLessThanOrEqualToWidthAnchorMinusConstant() {
        view1 ≤ relatedView.widthAnchor .- 10
        view1 ≤ relatedView.widthAnchor .- 10
        view1 ≤ relatedView.widthAnchor .- 10
        view1 ≤ relatedView.widthAnchor .- 10
        view1 ≤ relatedView.widthAnchor .- 10
        view1 ≤ relatedView.widthAnchor .- 10
        view1 ≤ relatedView.widthAnchor .- 10
        view1 ≤ relatedView.widthAnchor .- 10
        view1 ≤ relatedView.widthAnchor .- 10
        view1 ≤ relatedView.widthAnchor .- 10
        view1 ≤ relatedView.widthAnchor .- 10
        view1 ≤ relatedView.widthAnchor .- 10
        view1 ≤ relatedView.widthAnchor .- 10
        view1 ≤ relatedView.widthAnchor .- 10
        view1 ≤ relatedView.widthAnchor .- 10
        view1 ≤ relatedView.widthAnchor .- 10
        view1 ≤ relatedView.widthAnchor .- 10
        view1 ≤ relatedView.widthAnchor .- 10
        view1 ≤ relatedView.widthAnchor .- 10
        view1 ≤ relatedView.widthAnchor .- 10
    }

    // MARK: LessThanOrEqual with multiplier
    func compileView1WidthLessThanOrEqualToWidthAnchorMultiplyingConstant() {
        view1.width ≤ relatedView.widthAnchor .* 3
        view1.width ≤ relatedView.widthAnchor .* 3
        view1.width ≤ relatedView.widthAnchor .* 3
        view1.width ≤ relatedView.widthAnchor .* 3
        view1.width ≤ relatedView.widthAnchor .* 3
        view1.width ≤ relatedView.widthAnchor .* 3
        view1.width ≤ relatedView.widthAnchor .* 3
        view1.width ≤ relatedView.widthAnchor .* 3
        view1.width ≤ relatedView.widthAnchor .* 3
        view1.width ≤ relatedView.widthAnchor .* 3
        view1.width ≤ relatedView.widthAnchor .* 3
        view1.width ≤ relatedView.widthAnchor .* 3
        view1.width ≤ relatedView.widthAnchor .* 3
        view1.width ≤ relatedView.widthAnchor .* 3
        view1.width ≤ relatedView.widthAnchor .* 3
        view1.width ≤ relatedView.widthAnchor .* 3
        view1.width ≤ relatedView.widthAnchor .* 3
        view1.width ≤ relatedView.widthAnchor .* 3
        view1.width ≤ relatedView.widthAnchor .* 3
        view1.width ≤ relatedView.widthAnchor .* 3
    }

    func impliedcompileView1WidthLessThanOrEqualToWidthAnchorMultiplyingConstant() {
        view1 ≤ relatedView.widthAnchor .* 3
        view1 ≤ relatedView.widthAnchor .* 3
        view1 ≤ relatedView.widthAnchor .* 3
        view1 ≤ relatedView.widthAnchor .* 3
        view1 ≤ relatedView.widthAnchor .* 3
        view1 ≤ relatedView.widthAnchor .* 3
        view1 ≤ relatedView.widthAnchor .* 3
        view1 ≤ relatedView.widthAnchor .* 3
        view1 ≤ relatedView.widthAnchor .* 3
        view1 ≤ relatedView.widthAnchor .* 3
        view1 ≤ relatedView.widthAnchor .* 3
        view1 ≤ relatedView.widthAnchor .* 3
        view1 ≤ relatedView.widthAnchor .* 3
        view1 ≤ relatedView.widthAnchor .* 3
        view1 ≤ relatedView.widthAnchor .* 3
        view1 ≤ relatedView.widthAnchor .* 3
        view1 ≤ relatedView.widthAnchor .* 3
        view1 ≤ relatedView.widthAnchor .* 3
        view1 ≤ relatedView.widthAnchor .* 3
        view1 ≤ relatedView.widthAnchor .* 3
    }

    func compileView1WidthLessThanOrEqualToWidthAnchorMultipliedByConstant() {
        view1.width ≤ 3 .* relatedView.widthAnchor
        view1.width ≤ 3 .* relatedView.widthAnchor
        view1.width ≤ 3 .* relatedView.widthAnchor
        view1.width ≤ 3 .* relatedView.widthAnchor
        view1.width ≤ 3 .* relatedView.widthAnchor
        view1.width ≤ 3 .* relatedView.widthAnchor
        view1.width ≤ 3 .* relatedView.widthAnchor
        view1.width ≤ 3 .* relatedView.widthAnchor
        view1.width ≤ 3 .* relatedView.widthAnchor
        view1.width ≤ 3 .* relatedView.widthAnchor
        view1.width ≤ 3 .* relatedView.widthAnchor
        view1.width ≤ 3 .* relatedView.widthAnchor
        view1.width ≤ 3 .* relatedView.widthAnchor
        view1.width ≤ 3 .* relatedView.widthAnchor
        view1.width ≤ 3 .* relatedView.widthAnchor
        view1.width ≤ 3 .* relatedView.widthAnchor
        view1.width ≤ 3 .* relatedView.widthAnchor
        view1.width ≤ 3 .* relatedView.widthAnchor
        view1.width ≤ 3 .* relatedView.widthAnchor
        view1.width ≤ 3 .* relatedView.widthAnchor
    }

    func impliedcompileView1WidthLessThanOrEqualToWidthAnchorMultipliedByConstant() {
        view1 ≤ 3 .* relatedView.widthAnchor
        view1 ≤ 3 .* relatedView.widthAnchor
        view1 ≤ 3 .* relatedView.widthAnchor
        view1 ≤ 3 .* relatedView.widthAnchor
        view1 ≤ 3 .* relatedView.widthAnchor
        view1 ≤ 3 .* relatedView.widthAnchor
        view1 ≤ 3 .* relatedView.widthAnchor
        view1 ≤ 3 .* relatedView.widthAnchor
        view1 ≤ 3 .* relatedView.widthAnchor
        view1 ≤ 3 .* relatedView.widthAnchor
        view1 ≤ 3 .* relatedView.widthAnchor
        view1 ≤ 3 .* relatedView.widthAnchor
        view1 ≤ 3 .* relatedView.widthAnchor
        view1 ≤ 3 .* relatedView.widthAnchor
        view1 ≤ 3 .* relatedView.widthAnchor
        view1 ≤ 3 .* relatedView.widthAnchor
        view1 ≤ 3 .* relatedView.widthAnchor
        view1 ≤ 3 .* relatedView.widthAnchor
        view1 ≤ 3 .* relatedView.widthAnchor
        view1 ≤ 3 .* relatedView.widthAnchor
    }

    func compileView1WidthLessThanOrEqualToWidthAnchorDividedByConstant() {
        view1.width ≤ relatedView.widthAnchor ./ 2
        view1.width ≤ relatedView.widthAnchor ./ 2
        view1.width ≤ relatedView.widthAnchor ./ 2
        view1.width ≤ relatedView.widthAnchor ./ 2
        view1.width ≤ relatedView.widthAnchor ./ 2
        view1.width ≤ relatedView.widthAnchor ./ 2
        view1.width ≤ relatedView.widthAnchor ./ 2
        view1.width ≤ relatedView.widthAnchor ./ 2
        view1.width ≤ relatedView.widthAnchor ./ 2
        view1.width ≤ relatedView.widthAnchor ./ 2
        view1.width ≤ relatedView.widthAnchor ./ 2
        view1.width ≤ relatedView.widthAnchor ./ 2
        view1.width ≤ relatedView.widthAnchor ./ 2
        view1.width ≤ relatedView.widthAnchor ./ 2
        view1.width ≤ relatedView.widthAnchor ./ 2
        view1.width ≤ relatedView.widthAnchor ./ 2
        view1.width ≤ relatedView.widthAnchor ./ 2
        view1.width ≤ relatedView.widthAnchor ./ 2
        view1.width ≤ relatedView.widthAnchor ./ 2
        view1.width ≤ relatedView.widthAnchor ./ 2
    }

    func impliedcompileView1WidthLessThanOrEqualToWidthAnchorDividedByConstant() {
        view1 ≤ relatedView.widthAnchor ./ 2
        view1 ≤ relatedView.widthAnchor ./ 2
        view1 ≤ relatedView.widthAnchor ./ 2
        view1 ≤ relatedView.widthAnchor ./ 2
        view1 ≤ relatedView.widthAnchor ./ 2
        view1 ≤ relatedView.widthAnchor ./ 2
        view1 ≤ relatedView.widthAnchor ./ 2
        view1 ≤ relatedView.widthAnchor ./ 2
        view1 ≤ relatedView.widthAnchor ./ 2
        view1 ≤ relatedView.widthAnchor ./ 2
        view1 ≤ relatedView.widthAnchor ./ 2
        view1 ≤ relatedView.widthAnchor ./ 2
        view1 ≤ relatedView.widthAnchor ./ 2
        view1 ≤ relatedView.widthAnchor ./ 2
        view1 ≤ relatedView.widthAnchor ./ 2
        view1 ≤ relatedView.widthAnchor ./ 2
        view1 ≤ relatedView.widthAnchor ./ 2
        view1 ≤ relatedView.widthAnchor ./ 2
        view1 ≤ relatedView.widthAnchor ./ 2
        view1 ≤ relatedView.widthAnchor ./ 2
    }

    // MARK: LessThanOrEqual Prioritized
    func compileView1WidthLessThanOrEqualToWidthAnchorWithPriority() {
        view1.width ≤ relatedView.widthAnchor ~ .low
        view1.width ≤ relatedView.widthAnchor ~ .low
        view1.width ≤ relatedView.widthAnchor ~ .low
        view1.width ≤ relatedView.widthAnchor ~ .low
        view1.width ≤ relatedView.widthAnchor ~ .low
        view1.width ≤ relatedView.widthAnchor ~ .low
        view1.width ≤ relatedView.widthAnchor ~ .low
        view1.width ≤ relatedView.widthAnchor ~ .low
        view1.width ≤ relatedView.widthAnchor ~ .low
        view1.width ≤ relatedView.widthAnchor ~ .low
        view1.width ≤ relatedView.widthAnchor ~ .low
        view1.width ≤ relatedView.widthAnchor ~ .low
        view1.width ≤ relatedView.widthAnchor ~ .low
        view1.width ≤ relatedView.widthAnchor ~ .low
        view1.width ≤ relatedView.widthAnchor ~ .low
        view1.width ≤ relatedView.widthAnchor ~ .low
        view1.width ≤ relatedView.widthAnchor ~ .low
        view1.width ≤ relatedView.widthAnchor ~ .low
        view1.width ≤ relatedView.widthAnchor ~ .low
        view1.width ≤ relatedView.widthAnchor ~ .low
    }

    func impliedcompileView1WidthLessThanOrEqualToWidthAnchorWithPriority() {
        view1 ≤ relatedView.widthAnchor ~ .low
        view1 ≤ relatedView.widthAnchor ~ .low
        view1 ≤ relatedView.widthAnchor ~ .low
        view1 ≤ relatedView.widthAnchor ~ .low
        view1 ≤ relatedView.widthAnchor ~ .low
        view1 ≤ relatedView.widthAnchor ~ .low
        view1 ≤ relatedView.widthAnchor ~ .low
        view1 ≤ relatedView.widthAnchor ~ .low
        view1 ≤ relatedView.widthAnchor ~ .low
        view1 ≤ relatedView.widthAnchor ~ .low
        view1 ≤ relatedView.widthAnchor ~ .low
        view1 ≤ relatedView.widthAnchor ~ .low
        view1 ≤ relatedView.widthAnchor ~ .low
        view1 ≤ relatedView.widthAnchor ~ .low
        view1 ≤ relatedView.widthAnchor ~ .low
        view1 ≤ relatedView.widthAnchor ~ .low
        view1 ≤ relatedView.widthAnchor ~ .low
        view1 ≤ relatedView.widthAnchor ~ .low
        view1 ≤ relatedView.widthAnchor ~ .low
        view1 ≤ relatedView.widthAnchor ~ .low
    }

    func compileView1WidthLessThanOrEqualToWidthAnchorWithPriorityLiteral() {
        view1.width ≤ relatedView.widthAnchor ~ 300
        view1.width ≤ relatedView.widthAnchor ~ 300
        view1.width ≤ relatedView.widthAnchor ~ 300
        view1.width ≤ relatedView.widthAnchor ~ 300
        view1.width ≤ relatedView.widthAnchor ~ 300
        view1.width ≤ relatedView.widthAnchor ~ 300
        view1.width ≤ relatedView.widthAnchor ~ 300
        view1.width ≤ relatedView.widthAnchor ~ 300
        view1.width ≤ relatedView.widthAnchor ~ 300
        view1.width ≤ relatedView.widthAnchor ~ 300
        view1.width ≤ relatedView.widthAnchor ~ 300
        view1.width ≤ relatedView.widthAnchor ~ 300
        view1.width ≤ relatedView.widthAnchor ~ 300
        view1.width ≤ relatedView.widthAnchor ~ 300
        view1.width ≤ relatedView.widthAnchor ~ 300
        view1.width ≤ relatedView.widthAnchor ~ 300
        view1.width ≤ relatedView.widthAnchor ~ 300
        view1.width ≤ relatedView.widthAnchor ~ 300
        view1.width ≤ relatedView.widthAnchor ~ 300
        view1.width ≤ relatedView.widthAnchor ~ 300
    }

    func impliedcompileView1WidthLessThanOrEqualToWidthAnchorWithPriorityLiteral() {
        view1 ≤ relatedView.widthAnchor ~ 300
        view1 ≤ relatedView.widthAnchor ~ 300
        view1 ≤ relatedView.widthAnchor ~ 300
        view1 ≤ relatedView.widthAnchor ~ 300
        view1 ≤ relatedView.widthAnchor ~ 300
        view1 ≤ relatedView.widthAnchor ~ 300
        view1 ≤ relatedView.widthAnchor ~ 300
        view1 ≤ relatedView.widthAnchor ~ 300
        view1 ≤ relatedView.widthAnchor ~ 300
        view1 ≤ relatedView.widthAnchor ~ 300
        view1 ≤ relatedView.widthAnchor ~ 300
        view1 ≤ relatedView.widthAnchor ~ 300
        view1 ≤ relatedView.widthAnchor ~ 300
        view1 ≤ relatedView.widthAnchor ~ 300
        view1 ≤ relatedView.widthAnchor ~ 300
        view1 ≤ relatedView.widthAnchor ~ 300
        view1 ≤ relatedView.widthAnchor ~ 300
        view1 ≤ relatedView.widthAnchor ~ 300
        view1 ≤ relatedView.widthAnchor ~ 300
        view1 ≤ relatedView.widthAnchor ~ 300
    }

    func compileView1WidthLessThanOrEqualToWidthAnchorWithPriorityArithmetic() {
        view1.width ≤ relatedView.widthAnchor ~ .high .- 1
        view1.width ≤ relatedView.widthAnchor ~ .high .- 1
        view1.width ≤ relatedView.widthAnchor ~ .high .- 1
        view1.width ≤ relatedView.widthAnchor ~ .high .- 1
        view1.width ≤ relatedView.widthAnchor ~ .high .- 1
        view1.width ≤ relatedView.widthAnchor ~ .high .- 1
        view1.width ≤ relatedView.widthAnchor ~ .high .- 1
        view1.width ≤ relatedView.widthAnchor ~ .high .- 1
        view1.width ≤ relatedView.widthAnchor ~ .high .- 1
        view1.width ≤ relatedView.widthAnchor ~ .high .- 1
        view1.width ≤ relatedView.widthAnchor ~ .high .- 1
        view1.width ≤ relatedView.widthAnchor ~ .high .- 1
        view1.width ≤ relatedView.widthAnchor ~ .high .- 1
        view1.width ≤ relatedView.widthAnchor ~ .high .- 1
        view1.width ≤ relatedView.widthAnchor ~ .high .- 1
        view1.width ≤ relatedView.widthAnchor ~ .high .- 1
        view1.width ≤ relatedView.widthAnchor ~ .high .- 1
        view1.width ≤ relatedView.widthAnchor ~ .high .- 1
        view1.width ≤ relatedView.widthAnchor ~ .high .- 1
        view1.width ≤ relatedView.widthAnchor ~ .high .- 1
    }

    func impliedcompileView1WidthLessThanOrEqualToWidthAnchorWithPriorityArithmetic() {
        view1 ≤ relatedView.widthAnchor ~ .high .- 1
        view1 ≤ relatedView.widthAnchor ~ .high .- 1
        view1 ≤ relatedView.widthAnchor ~ .high .- 1
        view1 ≤ relatedView.widthAnchor ~ .high .- 1
        view1 ≤ relatedView.widthAnchor ~ .high .- 1
        view1 ≤ relatedView.widthAnchor ~ .high .- 1
        view1 ≤ relatedView.widthAnchor ~ .high .- 1
        view1 ≤ relatedView.widthAnchor ~ .high .- 1
        view1 ≤ relatedView.widthAnchor ~ .high .- 1
        view1 ≤ relatedView.widthAnchor ~ .high .- 1
        view1 ≤ relatedView.widthAnchor ~ .high .- 1
        view1 ≤ relatedView.widthAnchor ~ .high .- 1
        view1 ≤ relatedView.widthAnchor ~ .high .- 1
        view1 ≤ relatedView.widthAnchor ~ .high .- 1
        view1 ≤ relatedView.widthAnchor ~ .high .- 1
        view1 ≤ relatedView.widthAnchor ~ .high .- 1
        view1 ≤ relatedView.widthAnchor ~ .high .- 1
        view1 ≤ relatedView.widthAnchor ~ .high .- 1
        view1 ≤ relatedView.widthAnchor ~ .high .- 1
        view1 ≤ relatedView.widthAnchor ~ .high .- 1
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func compileView1WidthLessThanOrEqualToWidthAnchorPlusConstantMultiplyingConstant() {
        view1.width ≤ (relatedView.widthAnchor .+ 10) .* 3
        view1.width ≤ (relatedView.widthAnchor .+ 10) .* 3
        view1.width ≤ (relatedView.widthAnchor .+ 10) .* 3
        view1.width ≤ (relatedView.widthAnchor .+ 10) .* 3
        view1.width ≤ (relatedView.widthAnchor .+ 10) .* 3
        view1.width ≤ (relatedView.widthAnchor .+ 10) .* 3
        view1.width ≤ (relatedView.widthAnchor .+ 10) .* 3
        view1.width ≤ (relatedView.widthAnchor .+ 10) .* 3
        view1.width ≤ (relatedView.widthAnchor .+ 10) .* 3
        view1.width ≤ (relatedView.widthAnchor .+ 10) .* 3
        view1.width ≤ (relatedView.widthAnchor .+ 10) .* 3
        view1.width ≤ (relatedView.widthAnchor .+ 10) .* 3
        view1.width ≤ (relatedView.widthAnchor .+ 10) .* 3
        view1.width ≤ (relatedView.widthAnchor .+ 10) .* 3
        view1.width ≤ (relatedView.widthAnchor .+ 10) .* 3
        view1.width ≤ (relatedView.widthAnchor .+ 10) .* 3
        view1.width ≤ (relatedView.widthAnchor .+ 10) .* 3
        view1.width ≤ (relatedView.widthAnchor .+ 10) .* 3
        view1.width ≤ (relatedView.widthAnchor .+ 10) .* 3
        view1.width ≤ (relatedView.widthAnchor .+ 10) .* 3
    }

    func impliedcompileView1WidthLessThanOrEqualToWidthAnchorPlusConstantMultiplyingConstant() {
        view1 ≤ (relatedView.widthAnchor .+ 10) .* 3
        view1 ≤ (relatedView.widthAnchor .+ 10) .* 3
        view1 ≤ (relatedView.widthAnchor .+ 10) .* 3
        view1 ≤ (relatedView.widthAnchor .+ 10) .* 3
        view1 ≤ (relatedView.widthAnchor .+ 10) .* 3
        view1 ≤ (relatedView.widthAnchor .+ 10) .* 3
        view1 ≤ (relatedView.widthAnchor .+ 10) .* 3
        view1 ≤ (relatedView.widthAnchor .+ 10) .* 3
        view1 ≤ (relatedView.widthAnchor .+ 10) .* 3
        view1 ≤ (relatedView.widthAnchor .+ 10) .* 3
        view1 ≤ (relatedView.widthAnchor .+ 10) .* 3
        view1 ≤ (relatedView.widthAnchor .+ 10) .* 3
        view1 ≤ (relatedView.widthAnchor .+ 10) .* 3
        view1 ≤ (relatedView.widthAnchor .+ 10) .* 3
        view1 ≤ (relatedView.widthAnchor .+ 10) .* 3
        view1 ≤ (relatedView.widthAnchor .+ 10) .* 3
        view1 ≤ (relatedView.widthAnchor .+ 10) .* 3
        view1 ≤ (relatedView.widthAnchor .+ 10) .* 3
        view1 ≤ (relatedView.widthAnchor .+ 10) .* 3
        view1 ≤ (relatedView.widthAnchor .+ 10) .* 3
    }

    func compileView1WidthLessThanOrEqualToWidthAnchorPlusConstantMultipliedByConstant() {
        view1.width ≤ 3 .* (relatedView.widthAnchor .+ 10)
        view1.width ≤ 3 .* (relatedView.widthAnchor .+ 10)
        view1.width ≤ 3 .* (relatedView.widthAnchor .+ 10)
        view1.width ≤ 3 .* (relatedView.widthAnchor .+ 10)
        view1.width ≤ 3 .* (relatedView.widthAnchor .+ 10)
        view1.width ≤ 3 .* (relatedView.widthAnchor .+ 10)
        view1.width ≤ 3 .* (relatedView.widthAnchor .+ 10)
        view1.width ≤ 3 .* (relatedView.widthAnchor .+ 10)
        view1.width ≤ 3 .* (relatedView.widthAnchor .+ 10)
        view1.width ≤ 3 .* (relatedView.widthAnchor .+ 10)
        view1.width ≤ 3 .* (relatedView.widthAnchor .+ 10)
        view1.width ≤ 3 .* (relatedView.widthAnchor .+ 10)
        view1.width ≤ 3 .* (relatedView.widthAnchor .+ 10)
        view1.width ≤ 3 .* (relatedView.widthAnchor .+ 10)
        view1.width ≤ 3 .* (relatedView.widthAnchor .+ 10)
        view1.width ≤ 3 .* (relatedView.widthAnchor .+ 10)
        view1.width ≤ 3 .* (relatedView.widthAnchor .+ 10)
        view1.width ≤ 3 .* (relatedView.widthAnchor .+ 10)
        view1.width ≤ 3 .* (relatedView.widthAnchor .+ 10)
        view1.width ≤ 3 .* (relatedView.widthAnchor .+ 10)
    }

    func impliedcompileView1WidthLessThanOrEqualToWidthAnchorPlusConstantMultipliedByConstant() {
        view1 ≤ 3 .* (relatedView.widthAnchor .+ 10)
        view1 ≤ 3 .* (relatedView.widthAnchor .+ 10)
        view1 ≤ 3 .* (relatedView.widthAnchor .+ 10)
        view1 ≤ 3 .* (relatedView.widthAnchor .+ 10)
        view1 ≤ 3 .* (relatedView.widthAnchor .+ 10)
        view1 ≤ 3 .* (relatedView.widthAnchor .+ 10)
        view1 ≤ 3 .* (relatedView.widthAnchor .+ 10)
        view1 ≤ 3 .* (relatedView.widthAnchor .+ 10)
        view1 ≤ 3 .* (relatedView.widthAnchor .+ 10)
        view1 ≤ 3 .* (relatedView.widthAnchor .+ 10)
        view1 ≤ 3 .* (relatedView.widthAnchor .+ 10)
        view1 ≤ 3 .* (relatedView.widthAnchor .+ 10)
        view1 ≤ 3 .* (relatedView.widthAnchor .+ 10)
        view1 ≤ 3 .* (relatedView.widthAnchor .+ 10)
        view1 ≤ 3 .* (relatedView.widthAnchor .+ 10)
        view1 ≤ 3 .* (relatedView.widthAnchor .+ 10)
        view1 ≤ 3 .* (relatedView.widthAnchor .+ 10)
        view1 ≤ 3 .* (relatedView.widthAnchor .+ 10)
        view1 ≤ 3 .* (relatedView.widthAnchor .+ 10)
        view1 ≤ 3 .* (relatedView.widthAnchor .+ 10)
    }

    func compileView1WidthLessThanOrEqualToWidthAnchorMultipliedByConstantPlusConstant() {
        view1.width ≤ 3 .* relatedView.widthAnchor .+ 10
        view1.width ≤ 3 .* relatedView.widthAnchor .+ 10
        view1.width ≤ 3 .* relatedView.widthAnchor .+ 10
        view1.width ≤ 3 .* relatedView.widthAnchor .+ 10
        view1.width ≤ 3 .* relatedView.widthAnchor .+ 10
        view1.width ≤ 3 .* relatedView.widthAnchor .+ 10
        view1.width ≤ 3 .* relatedView.widthAnchor .+ 10
        view1.width ≤ 3 .* relatedView.widthAnchor .+ 10
        view1.width ≤ 3 .* relatedView.widthAnchor .+ 10
        view1.width ≤ 3 .* relatedView.widthAnchor .+ 10
        view1.width ≤ 3 .* relatedView.widthAnchor .+ 10
        view1.width ≤ 3 .* relatedView.widthAnchor .+ 10
        view1.width ≤ 3 .* relatedView.widthAnchor .+ 10
        view1.width ≤ 3 .* relatedView.widthAnchor .+ 10
        view1.width ≤ 3 .* relatedView.widthAnchor .+ 10
        view1.width ≤ 3 .* relatedView.widthAnchor .+ 10
        view1.width ≤ 3 .* relatedView.widthAnchor .+ 10
        view1.width ≤ 3 .* relatedView.widthAnchor .+ 10
        view1.width ≤ 3 .* relatedView.widthAnchor .+ 10
        view1.width ≤ 3 .* relatedView.widthAnchor .+ 10
    }

    func impliedcompileView1WidthLessThanOrEqualToWidthAnchorMultipliedByConstantPlusConstant() {
        view1 ≤ 3 .* relatedView.widthAnchor .+ 10
        view1 ≤ 3 .* relatedView.widthAnchor .+ 10
        view1 ≤ 3 .* relatedView.widthAnchor .+ 10
        view1 ≤ 3 .* relatedView.widthAnchor .+ 10
        view1 ≤ 3 .* relatedView.widthAnchor .+ 10
        view1 ≤ 3 .* relatedView.widthAnchor .+ 10
        view1 ≤ 3 .* relatedView.widthAnchor .+ 10
        view1 ≤ 3 .* relatedView.widthAnchor .+ 10
        view1 ≤ 3 .* relatedView.widthAnchor .+ 10
        view1 ≤ 3 .* relatedView.widthAnchor .+ 10
        view1 ≤ 3 .* relatedView.widthAnchor .+ 10
        view1 ≤ 3 .* relatedView.widthAnchor .+ 10
        view1 ≤ 3 .* relatedView.widthAnchor .+ 10
        view1 ≤ 3 .* relatedView.widthAnchor .+ 10
        view1 ≤ 3 .* relatedView.widthAnchor .+ 10
        view1 ≤ 3 .* relatedView.widthAnchor .+ 10
        view1 ≤ 3 .* relatedView.widthAnchor .+ 10
        view1 ≤ 3 .* relatedView.widthAnchor .+ 10
        view1 ≤ 3 .* relatedView.widthAnchor .+ 10
        view1 ≤ 3 .* relatedView.widthAnchor .+ 10
    }

    func compileView1WidthLessThanOrEqualToWidthAnchorPlusConstantDividedByConstant() {
        view1.width ≤ (relatedView.widthAnchor .+ 10) ./ 2
        view1.width ≤ (relatedView.widthAnchor .+ 10) ./ 2
        view1.width ≤ (relatedView.widthAnchor .+ 10) ./ 2
        view1.width ≤ (relatedView.widthAnchor .+ 10) ./ 2
        view1.width ≤ (relatedView.widthAnchor .+ 10) ./ 2
        view1.width ≤ (relatedView.widthAnchor .+ 10) ./ 2
        view1.width ≤ (relatedView.widthAnchor .+ 10) ./ 2
        view1.width ≤ (relatedView.widthAnchor .+ 10) ./ 2
        view1.width ≤ (relatedView.widthAnchor .+ 10) ./ 2
        view1.width ≤ (relatedView.widthAnchor .+ 10) ./ 2
        view1.width ≤ (relatedView.widthAnchor .+ 10) ./ 2
        view1.width ≤ (relatedView.widthAnchor .+ 10) ./ 2
        view1.width ≤ (relatedView.widthAnchor .+ 10) ./ 2
        view1.width ≤ (relatedView.widthAnchor .+ 10) ./ 2
        view1.width ≤ (relatedView.widthAnchor .+ 10) ./ 2
        view1.width ≤ (relatedView.widthAnchor .+ 10) ./ 2
        view1.width ≤ (relatedView.widthAnchor .+ 10) ./ 2
        view1.width ≤ (relatedView.widthAnchor .+ 10) ./ 2
        view1.width ≤ (relatedView.widthAnchor .+ 10) ./ 2
        view1.width ≤ (relatedView.widthAnchor .+ 10) ./ 2
    }

    func impliedcompileView1WidthLessThanOrEqualToWidthAnchorPlusConstantDividedByConstant() {
        view1 ≤ (relatedView.widthAnchor .+ 10) ./ 2
        view1 ≤ (relatedView.widthAnchor .+ 10) ./ 2
        view1 ≤ (relatedView.widthAnchor .+ 10) ./ 2
        view1 ≤ (relatedView.widthAnchor .+ 10) ./ 2
        view1 ≤ (relatedView.widthAnchor .+ 10) ./ 2
        view1 ≤ (relatedView.widthAnchor .+ 10) ./ 2
        view1 ≤ (relatedView.widthAnchor .+ 10) ./ 2
        view1 ≤ (relatedView.widthAnchor .+ 10) ./ 2
        view1 ≤ (relatedView.widthAnchor .+ 10) ./ 2
        view1 ≤ (relatedView.widthAnchor .+ 10) ./ 2
        view1 ≤ (relatedView.widthAnchor .+ 10) ./ 2
        view1 ≤ (relatedView.widthAnchor .+ 10) ./ 2
        view1 ≤ (relatedView.widthAnchor .+ 10) ./ 2
        view1 ≤ (relatedView.widthAnchor .+ 10) ./ 2
        view1 ≤ (relatedView.widthAnchor .+ 10) ./ 2
        view1 ≤ (relatedView.widthAnchor .+ 10) ./ 2
        view1 ≤ (relatedView.widthAnchor .+ 10) ./ 2
        view1 ≤ (relatedView.widthAnchor .+ 10) ./ 2
        view1 ≤ (relatedView.widthAnchor .+ 10) ./ 2
        view1 ≤ (relatedView.widthAnchor .+ 10) ./ 2
    }

// MARK: LessThanOrEqual with constant .+ multiplier and priority

    func compileView1WidthLessThanOrEqualToWidthAnchorPlusConstantMultiplyingConstantWithPriority() {
        view1.width ≤ (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1.width ≤ (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1.width ≤ (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1.width ≤ (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1.width ≤ (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1.width ≤ (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1.width ≤ (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1.width ≤ (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1.width ≤ (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1.width ≤ (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1.width ≤ (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1.width ≤ (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1.width ≤ (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1.width ≤ (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1.width ≤ (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1.width ≤ (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1.width ≤ (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1.width ≤ (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1.width ≤ (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1.width ≤ (relatedView.widthAnchor .+ 10) .* 3 ~ .low
    }

    func impliedcompileView1WidthLessThanOrEqualToWidthAnchorPlusConstantMultiplyingConstantWithPriority() {
        view1 ≤ (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1 ≤ (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1 ≤ (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1 ≤ (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1 ≤ (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1 ≤ (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1 ≤ (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1 ≤ (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1 ≤ (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1 ≤ (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1 ≤ (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1 ≤ (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1 ≤ (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1 ≤ (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1 ≤ (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1 ≤ (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1 ≤ (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1 ≤ (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1 ≤ (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1 ≤ (relatedView.widthAnchor .+ 10) .* 3 ~ .low
    }

    func compileView1WidthLessThanOrEqualToWidthAnchorPlusConstantMultipliedByConstantWithPriority() {
        view1.width ≤ 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1.width ≤ 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1.width ≤ 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1.width ≤ 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1.width ≤ 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1.width ≤ 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1.width ≤ 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1.width ≤ 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1.width ≤ 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1.width ≤ 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1.width ≤ 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1.width ≤ 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1.width ≤ 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1.width ≤ 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1.width ≤ 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1.width ≤ 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1.width ≤ 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1.width ≤ 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1.width ≤ 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1.width ≤ 3 .* (relatedView.widthAnchor .+ 10) ~ .low
    }

    func impliedcompileView1WidthLessThanOrEqualToWidthAnchorPlusConstantMultipliedByConstantWithPriority() {
        view1 ≤ 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1 ≤ 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1 ≤ 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1 ≤ 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1 ≤ 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1 ≤ 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1 ≤ 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1 ≤ 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1 ≤ 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1 ≤ 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1 ≤ 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1 ≤ 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1 ≤ 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1 ≤ 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1 ≤ 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1 ≤ 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1 ≤ 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1 ≤ 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1 ≤ 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1 ≤ 3 .* (relatedView.widthAnchor .+ 10) ~ .low
    }

    func compileView1WidthLessThanOrEqualToWidthAnchorMultipliedByConstantPlusConstantWithPriority() {
        view1.width ≤ 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1.width ≤ 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1.width ≤ 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1.width ≤ 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1.width ≤ 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1.width ≤ 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1.width ≤ 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1.width ≤ 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1.width ≤ 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1.width ≤ 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1.width ≤ 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1.width ≤ 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1.width ≤ 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1.width ≤ 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1.width ≤ 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1.width ≤ 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1.width ≤ 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1.width ≤ 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1.width ≤ 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1.width ≤ 3 .* relatedView.widthAnchor .+ 10 ~ .low
    }

    func impliedcompileView1WidthLessThanOrEqualToWidthAnchorMultipliedByConstantPlusConstantWithPriority() {
        view1 ≤ 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1 ≤ 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1 ≤ 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1 ≤ 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1 ≤ 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1 ≤ 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1 ≤ 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1 ≤ 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1 ≤ 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1 ≤ 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1 ≤ 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1 ≤ 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1 ≤ 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1 ≤ 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1 ≤ 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1 ≤ 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1 ≤ 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1 ≤ 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1 ≤ 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1 ≤ 3 .* relatedView.widthAnchor .+ 10 ~ .low
    }

    func compileView1WidthLessThanOrEqualToWidthAnchorPlusConstantDividedByConstantWithPriority() {
        view1.width ≤ (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1.width ≤ (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1.width ≤ (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1.width ≤ (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1.width ≤ (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1.width ≤ (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1.width ≤ (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1.width ≤ (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1.width ≤ (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1.width ≤ (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1.width ≤ (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1.width ≤ (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1.width ≤ (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1.width ≤ (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1.width ≤ (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1.width ≤ (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1.width ≤ (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1.width ≤ (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1.width ≤ (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1.width ≤ (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
    }

    func impliedcompileView1WidthLessThanOrEqualToWidthAnchorPlusConstantDividedByConstantWithPriority() {
        view1 ≤ (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1 ≤ (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1 ≤ (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1 ≤ (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1 ≤ (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1 ≤ (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1 ≤ (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1 ≤ (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1 ≤ (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1 ≤ (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1 ≤ (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1 ≤ (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1 ≤ (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1 ≤ (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1 ≤ (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1 ≤ (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1 ≤ (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1 ≤ (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1 ≤ (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1 ≤ (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func compileView1WidthLessThanOrEqualToWidthAnchorPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        view1.width ≤ (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1.width ≤ (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1.width ≤ (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1.width ≤ (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1.width ≤ (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1.width ≤ (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1.width ≤ (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1.width ≤ (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1.width ≤ (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1.width ≤ (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1.width ≤ (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1.width ≤ (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1.width ≤ (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1.width ≤ (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1.width ≤ (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1.width ≤ (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1.width ≤ (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1.width ≤ (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1.width ≤ (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1.width ≤ (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
    }

    func impliedcompileView1WidthLessThanOrEqualToWidthAnchorPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        view1 ≤ (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1 ≤ (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1 ≤ (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1 ≤ (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1 ≤ (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1 ≤ (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1 ≤ (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1 ≤ (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1 ≤ (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1 ≤ (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1 ≤ (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1 ≤ (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1 ≤ (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1 ≤ (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1 ≤ (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1 ≤ (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1 ≤ (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1 ≤ (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1 ≤ (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1 ≤ (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
    }

    func compileView1WidthLessThanOrEqualToWidthAnchorPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        view1.width ≤ 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1.width ≤ 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1.width ≤ 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1.width ≤ 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1.width ≤ 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1.width ≤ 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1.width ≤ 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1.width ≤ 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1.width ≤ 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1.width ≤ 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1.width ≤ 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1.width ≤ 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1.width ≤ 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1.width ≤ 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1.width ≤ 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1.width ≤ 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1.width ≤ 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1.width ≤ 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1.width ≤ 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1.width ≤ 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
    }

    func impliedcompileView1WidthLessThanOrEqualToWidthAnchorPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        view1 ≤ 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1 ≤ 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1 ≤ 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1 ≤ 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1 ≤ 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1 ≤ 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1 ≤ 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1 ≤ 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1 ≤ 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1 ≤ 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1 ≤ 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1 ≤ 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1 ≤ 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1 ≤ 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1 ≤ 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1 ≤ 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1 ≤ 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1 ≤ 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1 ≤ 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1 ≤ 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
    }

    func compileView1WidthLessThanOrEqualToWidthAnchorMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        view1.width ≤ 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1.width ≤ 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1.width ≤ 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1.width ≤ 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1.width ≤ 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1.width ≤ 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1.width ≤ 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1.width ≤ 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1.width ≤ 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1.width ≤ 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1.width ≤ 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1.width ≤ 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1.width ≤ 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1.width ≤ 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1.width ≤ 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1.width ≤ 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1.width ≤ 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1.width ≤ 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1.width ≤ 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1.width ≤ 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
    }

    func impliedcompileView1WidthLessThanOrEqualToWidthAnchorMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        view1 ≤ 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1 ≤ 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1 ≤ 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1 ≤ 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1 ≤ 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1 ≤ 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1 ≤ 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1 ≤ 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1 ≤ 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1 ≤ 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1 ≤ 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1 ≤ 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1 ≤ 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1 ≤ 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1 ≤ 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1 ≤ 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1 ≤ 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1 ≤ 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1 ≤ 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1 ≤ 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
    }

    func compileView1WidthLessThanOrEqualToWidthAnchorPlusConstantDividedByConstantWithPriorityArithmetic() {
        view1.width ≤ (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1.width ≤ (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1.width ≤ (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1.width ≤ (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1.width ≤ (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1.width ≤ (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1.width ≤ (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1.width ≤ (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1.width ≤ (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1.width ≤ (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1.width ≤ (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1.width ≤ (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1.width ≤ (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1.width ≤ (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1.width ≤ (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1.width ≤ (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1.width ≤ (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1.width ≤ (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1.width ≤ (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1.width ≤ (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
    }

    func impliedcompileView1WidthLessThanOrEqualToWidthAnchorPlusConstantDividedByConstantWithPriorityArithmetic() {
        view1 ≤ (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1 ≤ (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1 ≤ (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1 ≤ (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1 ≤ (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1 ≤ (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1 ≤ (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1 ≤ (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1 ≤ (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1 ≤ (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1 ≤ (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1 ≤ (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1 ≤ (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1 ≤ (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1 ≤ (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1 ≤ (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1 ≤ (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1 ≤ (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1 ≤ (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1 ≤ (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
    }

    // MARK: GreaterThanOrEqual

    func compileView1WidthGreaterThanOrEqualToWidthAnchor() {
        view1.width ≥ relatedView.widthAnchor
        view1.width ≥ relatedView.widthAnchor
        view1.width ≥ relatedView.widthAnchor
        view1.width ≥ relatedView.widthAnchor
        view1.width ≥ relatedView.widthAnchor
        view1.width ≥ relatedView.widthAnchor
        view1.width ≥ relatedView.widthAnchor
        view1.width ≥ relatedView.widthAnchor
        view1.width ≥ relatedView.widthAnchor
        view1.width ≥ relatedView.widthAnchor
        view1.width ≥ relatedView.widthAnchor
        view1.width ≥ relatedView.widthAnchor
        view1.width ≥ relatedView.widthAnchor
        view1.width ≥ relatedView.widthAnchor
        view1.width ≥ relatedView.widthAnchor
        view1.width ≥ relatedView.widthAnchor
        view1.width ≥ relatedView.widthAnchor
        view1.width ≥ relatedView.widthAnchor
        view1.width ≥ relatedView.widthAnchor
        view1.width ≥ relatedView.widthAnchor
    }

    func impliedcompileView1WidthGreaterThanOrEqualToWidthAnchor() {
        view1 ≥ relatedView.widthAnchor
        view1 ≥ relatedView.widthAnchor
        view1 ≥ relatedView.widthAnchor
        view1 ≥ relatedView.widthAnchor
        view1 ≥ relatedView.widthAnchor
        view1 ≥ relatedView.widthAnchor
        view1 ≥ relatedView.widthAnchor
        view1 ≥ relatedView.widthAnchor
        view1 ≥ relatedView.widthAnchor
        view1 ≥ relatedView.widthAnchor
        view1 ≥ relatedView.widthAnchor
        view1 ≥ relatedView.widthAnchor
        view1 ≥ relatedView.widthAnchor
        view1 ≥ relatedView.widthAnchor
        view1 ≥ relatedView.widthAnchor
        view1 ≥ relatedView.widthAnchor
        view1 ≥ relatedView.widthAnchor
        view1 ≥ relatedView.widthAnchor
        view1 ≥ relatedView.widthAnchor
        view1 ≥ relatedView.widthAnchor
    }

    // MARK: GreaterThanOrEqual with constant
    func compileView1WidthGreaterThanOrEqualToWidthAnchorPlusConstant() {
        view1.width ≥ relatedView.widthAnchor .+ 10
        view1.width ≥ relatedView.widthAnchor .+ 10
        view1.width ≥ relatedView.widthAnchor .+ 10
        view1.width ≥ relatedView.widthAnchor .+ 10
        view1.width ≥ relatedView.widthAnchor .+ 10
        view1.width ≥ relatedView.widthAnchor .+ 10
        view1.width ≥ relatedView.widthAnchor .+ 10
        view1.width ≥ relatedView.widthAnchor .+ 10
        view1.width ≥ relatedView.widthAnchor .+ 10
        view1.width ≥ relatedView.widthAnchor .+ 10
        view1.width ≥ relatedView.widthAnchor .+ 10
        view1.width ≥ relatedView.widthAnchor .+ 10
        view1.width ≥ relatedView.widthAnchor .+ 10
        view1.width ≥ relatedView.widthAnchor .+ 10
        view1.width ≥ relatedView.widthAnchor .+ 10
        view1.width ≥ relatedView.widthAnchor .+ 10
        view1.width ≥ relatedView.widthAnchor .+ 10
        view1.width ≥ relatedView.widthAnchor .+ 10
        view1.width ≥ relatedView.widthAnchor .+ 10
        view1.width ≥ relatedView.widthAnchor .+ 10
    }

    func impliedcompileView1WidthGreaterThanOrEqualToWidthAnchorPlusConstant() {
        view1 ≥ relatedView.widthAnchor .+ 10
        view1 ≥ relatedView.widthAnchor .+ 10
        view1 ≥ relatedView.widthAnchor .+ 10
        view1 ≥ relatedView.widthAnchor .+ 10
        view1 ≥ relatedView.widthAnchor .+ 10
        view1 ≥ relatedView.widthAnchor .+ 10
        view1 ≥ relatedView.widthAnchor .+ 10
        view1 ≥ relatedView.widthAnchor .+ 10
        view1 ≥ relatedView.widthAnchor .+ 10
        view1 ≥ relatedView.widthAnchor .+ 10
        view1 ≥ relatedView.widthAnchor .+ 10
        view1 ≥ relatedView.widthAnchor .+ 10
        view1 ≥ relatedView.widthAnchor .+ 10
        view1 ≥ relatedView.widthAnchor .+ 10
        view1 ≥ relatedView.widthAnchor .+ 10
        view1 ≥ relatedView.widthAnchor .+ 10
        view1 ≥ relatedView.widthAnchor .+ 10
        view1 ≥ relatedView.widthAnchor .+ 10
        view1 ≥ relatedView.widthAnchor .+ 10
        view1 ≥ relatedView.widthAnchor .+ 10
    }

    func compileView1WidthGreaterThanOrEqualToWidthAnchorMinusConstant() {
        view1.width ≥ relatedView.widthAnchor .- 10
        view1.width ≥ relatedView.widthAnchor .- 10
        view1.width ≥ relatedView.widthAnchor .- 10
        view1.width ≥ relatedView.widthAnchor .- 10
        view1.width ≥ relatedView.widthAnchor .- 10
        view1.width ≥ relatedView.widthAnchor .- 10
        view1.width ≥ relatedView.widthAnchor .- 10
        view1.width ≥ relatedView.widthAnchor .- 10
        view1.width ≥ relatedView.widthAnchor .- 10
        view1.width ≥ relatedView.widthAnchor .- 10
        view1.width ≥ relatedView.widthAnchor .- 10
        view1.width ≥ relatedView.widthAnchor .- 10
        view1.width ≥ relatedView.widthAnchor .- 10
        view1.width ≥ relatedView.widthAnchor .- 10
        view1.width ≥ relatedView.widthAnchor .- 10
        view1.width ≥ relatedView.widthAnchor .- 10
        view1.width ≥ relatedView.widthAnchor .- 10
        view1.width ≥ relatedView.widthAnchor .- 10
        view1.width ≥ relatedView.widthAnchor .- 10
        view1.width ≥ relatedView.widthAnchor .- 10
    }

    func impliedcompileView1WidthGreaterThanOrEqualToWidthAnchorMinusConstant() {
        view1 ≥ relatedView.widthAnchor .- 10
        view1 ≥ relatedView.widthAnchor .- 10
        view1 ≥ relatedView.widthAnchor .- 10
        view1 ≥ relatedView.widthAnchor .- 10
        view1 ≥ relatedView.widthAnchor .- 10
        view1 ≥ relatedView.widthAnchor .- 10
        view1 ≥ relatedView.widthAnchor .- 10
        view1 ≥ relatedView.widthAnchor .- 10
        view1 ≥ relatedView.widthAnchor .- 10
        view1 ≥ relatedView.widthAnchor .- 10
        view1 ≥ relatedView.widthAnchor .- 10
        view1 ≥ relatedView.widthAnchor .- 10
        view1 ≥ relatedView.widthAnchor .- 10
        view1 ≥ relatedView.widthAnchor .- 10
        view1 ≥ relatedView.widthAnchor .- 10
        view1 ≥ relatedView.widthAnchor .- 10
        view1 ≥ relatedView.widthAnchor .- 10
        view1 ≥ relatedView.widthAnchor .- 10
        view1 ≥ relatedView.widthAnchor .- 10
        view1 ≥ relatedView.widthAnchor .- 10
    }

    // MARK: GreaterThanOrEqual with multiplier
    func compileView1WidthGreaterThanOrEqualToWidthAnchorMultiplyingConstant() {
        view1.width ≥ relatedView.widthAnchor .* 3
        view1.width ≥ relatedView.widthAnchor .* 3
        view1.width ≥ relatedView.widthAnchor .* 3
        view1.width ≥ relatedView.widthAnchor .* 3
        view1.width ≥ relatedView.widthAnchor .* 3
        view1.width ≥ relatedView.widthAnchor .* 3
        view1.width ≥ relatedView.widthAnchor .* 3
        view1.width ≥ relatedView.widthAnchor .* 3
        view1.width ≥ relatedView.widthAnchor .* 3
        view1.width ≥ relatedView.widthAnchor .* 3
        view1.width ≥ relatedView.widthAnchor .* 3
        view1.width ≥ relatedView.widthAnchor .* 3
        view1.width ≥ relatedView.widthAnchor .* 3
        view1.width ≥ relatedView.widthAnchor .* 3
        view1.width ≥ relatedView.widthAnchor .* 3
        view1.width ≥ relatedView.widthAnchor .* 3
        view1.width ≥ relatedView.widthAnchor .* 3
        view1.width ≥ relatedView.widthAnchor .* 3
        view1.width ≥ relatedView.widthAnchor .* 3
        view1.width ≥ relatedView.widthAnchor .* 3
    }

    func impliedcompileView1WidthGreaterThanOrEqualToWidthAnchorMultiplyingConstant() {
        view1 ≥ relatedView.widthAnchor .* 3
        view1 ≥ relatedView.widthAnchor .* 3
        view1 ≥ relatedView.widthAnchor .* 3
        view1 ≥ relatedView.widthAnchor .* 3
        view1 ≥ relatedView.widthAnchor .* 3
        view1 ≥ relatedView.widthAnchor .* 3
        view1 ≥ relatedView.widthAnchor .* 3
        view1 ≥ relatedView.widthAnchor .* 3
        view1 ≥ relatedView.widthAnchor .* 3
        view1 ≥ relatedView.widthAnchor .* 3
        view1 ≥ relatedView.widthAnchor .* 3
        view1 ≥ relatedView.widthAnchor .* 3
        view1 ≥ relatedView.widthAnchor .* 3
        view1 ≥ relatedView.widthAnchor .* 3
        view1 ≥ relatedView.widthAnchor .* 3
        view1 ≥ relatedView.widthAnchor .* 3
        view1 ≥ relatedView.widthAnchor .* 3
        view1 ≥ relatedView.widthAnchor .* 3
        view1 ≥ relatedView.widthAnchor .* 3
        view1 ≥ relatedView.widthAnchor .* 3
    }

    func compileView1WidthGreaterThanOrEqualToWidthAnchorMultipliedByConstant() {
        view1.width ≥ 3 .* relatedView.widthAnchor
        view1.width ≥ 3 .* relatedView.widthAnchor
        view1.width ≥ 3 .* relatedView.widthAnchor
        view1.width ≥ 3 .* relatedView.widthAnchor
        view1.width ≥ 3 .* relatedView.widthAnchor
        view1.width ≥ 3 .* relatedView.widthAnchor
        view1.width ≥ 3 .* relatedView.widthAnchor
        view1.width ≥ 3 .* relatedView.widthAnchor
        view1.width ≥ 3 .* relatedView.widthAnchor
        view1.width ≥ 3 .* relatedView.widthAnchor
        view1.width ≥ 3 .* relatedView.widthAnchor
        view1.width ≥ 3 .* relatedView.widthAnchor
        view1.width ≥ 3 .* relatedView.widthAnchor
        view1.width ≥ 3 .* relatedView.widthAnchor
        view1.width ≥ 3 .* relatedView.widthAnchor
        view1.width ≥ 3 .* relatedView.widthAnchor
        view1.width ≥ 3 .* relatedView.widthAnchor
        view1.width ≥ 3 .* relatedView.widthAnchor
        view1.width ≥ 3 .* relatedView.widthAnchor
        view1.width ≥ 3 .* relatedView.widthAnchor
    }

    func impliedcompileView1WidthGreaterThanOrEqualToWidthAnchorMultipliedByConstant() {
        view1 ≥ 3 .* relatedView.widthAnchor
        view1 ≥ 3 .* relatedView.widthAnchor
        view1 ≥ 3 .* relatedView.widthAnchor
        view1 ≥ 3 .* relatedView.widthAnchor
        view1 ≥ 3 .* relatedView.widthAnchor
        view1 ≥ 3 .* relatedView.widthAnchor
        view1 ≥ 3 .* relatedView.widthAnchor
        view1 ≥ 3 .* relatedView.widthAnchor
        view1 ≥ 3 .* relatedView.widthAnchor
        view1 ≥ 3 .* relatedView.widthAnchor
        view1 ≥ 3 .* relatedView.widthAnchor
        view1 ≥ 3 .* relatedView.widthAnchor
        view1 ≥ 3 .* relatedView.widthAnchor
        view1 ≥ 3 .* relatedView.widthAnchor
        view1 ≥ 3 .* relatedView.widthAnchor
        view1 ≥ 3 .* relatedView.widthAnchor
        view1 ≥ 3 .* relatedView.widthAnchor
        view1 ≥ 3 .* relatedView.widthAnchor
        view1 ≥ 3 .* relatedView.widthAnchor
        view1 ≥ 3 .* relatedView.widthAnchor
    }

    func compileView1WidthGreaterThanOrEqualToWidthAnchorDividedByConstant() {
        view1.width ≥ relatedView.widthAnchor ./ 2
        view1.width ≥ relatedView.widthAnchor ./ 2
        view1.width ≥ relatedView.widthAnchor ./ 2
        view1.width ≥ relatedView.widthAnchor ./ 2
        view1.width ≥ relatedView.widthAnchor ./ 2
        view1.width ≥ relatedView.widthAnchor ./ 2
        view1.width ≥ relatedView.widthAnchor ./ 2
        view1.width ≥ relatedView.widthAnchor ./ 2
        view1.width ≥ relatedView.widthAnchor ./ 2
        view1.width ≥ relatedView.widthAnchor ./ 2
        view1.width ≥ relatedView.widthAnchor ./ 2
        view1.width ≥ relatedView.widthAnchor ./ 2
        view1.width ≥ relatedView.widthAnchor ./ 2
        view1.width ≥ relatedView.widthAnchor ./ 2
        view1.width ≥ relatedView.widthAnchor ./ 2
        view1.width ≥ relatedView.widthAnchor ./ 2
        view1.width ≥ relatedView.widthAnchor ./ 2
        view1.width ≥ relatedView.widthAnchor ./ 2
        view1.width ≥ relatedView.widthAnchor ./ 2
        view1.width ≥ relatedView.widthAnchor ./ 2
    }

    func impliedcompileView1WidthGreaterThanOrEqualToWidthAnchorDividedByConstant() {
        view1 ≥ relatedView.widthAnchor ./ 2
        view1 ≥ relatedView.widthAnchor ./ 2
        view1 ≥ relatedView.widthAnchor ./ 2
        view1 ≥ relatedView.widthAnchor ./ 2
        view1 ≥ relatedView.widthAnchor ./ 2
        view1 ≥ relatedView.widthAnchor ./ 2
        view1 ≥ relatedView.widthAnchor ./ 2
        view1 ≥ relatedView.widthAnchor ./ 2
        view1 ≥ relatedView.widthAnchor ./ 2
        view1 ≥ relatedView.widthAnchor ./ 2
        view1 ≥ relatedView.widthAnchor ./ 2
        view1 ≥ relatedView.widthAnchor ./ 2
        view1 ≥ relatedView.widthAnchor ./ 2
        view1 ≥ relatedView.widthAnchor ./ 2
        view1 ≥ relatedView.widthAnchor ./ 2
        view1 ≥ relatedView.widthAnchor ./ 2
        view1 ≥ relatedView.widthAnchor ./ 2
        view1 ≥ relatedView.widthAnchor ./ 2
        view1 ≥ relatedView.widthAnchor ./ 2
        view1 ≥ relatedView.widthAnchor ./ 2
    }

    // MARK: GreaterThanOrEqual Prioritized
    func compileView1WidthGreaterThanOrEqualToWidthAnchorWithPriority() {
        view1.width ≥ relatedView.widthAnchor ~ .low
        view1.width ≥ relatedView.widthAnchor ~ .low
        view1.width ≥ relatedView.widthAnchor ~ .low
        view1.width ≥ relatedView.widthAnchor ~ .low
        view1.width ≥ relatedView.widthAnchor ~ .low
        view1.width ≥ relatedView.widthAnchor ~ .low
        view1.width ≥ relatedView.widthAnchor ~ .low
        view1.width ≥ relatedView.widthAnchor ~ .low
        view1.width ≥ relatedView.widthAnchor ~ .low
        view1.width ≥ relatedView.widthAnchor ~ .low
        view1.width ≥ relatedView.widthAnchor ~ .low
        view1.width ≥ relatedView.widthAnchor ~ .low
        view1.width ≥ relatedView.widthAnchor ~ .low
        view1.width ≥ relatedView.widthAnchor ~ .low
        view1.width ≥ relatedView.widthAnchor ~ .low
        view1.width ≥ relatedView.widthAnchor ~ .low
        view1.width ≥ relatedView.widthAnchor ~ .low
        view1.width ≥ relatedView.widthAnchor ~ .low
        view1.width ≥ relatedView.widthAnchor ~ .low
        view1.width ≥ relatedView.widthAnchor ~ .low
    }

    func impliedcompileView1WidthGreaterThanOrEqualToWidthAnchorWithPriority() {
        view1 ≥ relatedView.widthAnchor ~ .low
        view1 ≥ relatedView.widthAnchor ~ .low
        view1 ≥ relatedView.widthAnchor ~ .low
        view1 ≥ relatedView.widthAnchor ~ .low
        view1 ≥ relatedView.widthAnchor ~ .low
        view1 ≥ relatedView.widthAnchor ~ .low
        view1 ≥ relatedView.widthAnchor ~ .low
        view1 ≥ relatedView.widthAnchor ~ .low
        view1 ≥ relatedView.widthAnchor ~ .low
        view1 ≥ relatedView.widthAnchor ~ .low
        view1 ≥ relatedView.widthAnchor ~ .low
        view1 ≥ relatedView.widthAnchor ~ .low
        view1 ≥ relatedView.widthAnchor ~ .low
        view1 ≥ relatedView.widthAnchor ~ .low
        view1 ≥ relatedView.widthAnchor ~ .low
        view1 ≥ relatedView.widthAnchor ~ .low
        view1 ≥ relatedView.widthAnchor ~ .low
        view1 ≥ relatedView.widthAnchor ~ .low
        view1 ≥ relatedView.widthAnchor ~ .low
        view1 ≥ relatedView.widthAnchor ~ .low
    }

    func compileView1WidthGreaterThanOrEqualToWidthAnchorWithPriorityLiteral() {
        view1.width ≥ relatedView.widthAnchor ~ 300
        view1.width ≥ relatedView.widthAnchor ~ 300
        view1.width ≥ relatedView.widthAnchor ~ 300
        view1.width ≥ relatedView.widthAnchor ~ 300
        view1.width ≥ relatedView.widthAnchor ~ 300
        view1.width ≥ relatedView.widthAnchor ~ 300
        view1.width ≥ relatedView.widthAnchor ~ 300
        view1.width ≥ relatedView.widthAnchor ~ 300
        view1.width ≥ relatedView.widthAnchor ~ 300
        view1.width ≥ relatedView.widthAnchor ~ 300
        view1.width ≥ relatedView.widthAnchor ~ 300
        view1.width ≥ relatedView.widthAnchor ~ 300
        view1.width ≥ relatedView.widthAnchor ~ 300
        view1.width ≥ relatedView.widthAnchor ~ 300
        view1.width ≥ relatedView.widthAnchor ~ 300
        view1.width ≥ relatedView.widthAnchor ~ 300
        view1.width ≥ relatedView.widthAnchor ~ 300
        view1.width ≥ relatedView.widthAnchor ~ 300
        view1.width ≥ relatedView.widthAnchor ~ 300
        view1.width ≥ relatedView.widthAnchor ~ 300
    }

    func impliedcompileView1WidthGreaterThanOrEqualToWidthAnchorWithPriorityLiteral() {
        view1 ≥ relatedView.widthAnchor ~ 300
        view1 ≥ relatedView.widthAnchor ~ 300
        view1 ≥ relatedView.widthAnchor ~ 300
        view1 ≥ relatedView.widthAnchor ~ 300
        view1 ≥ relatedView.widthAnchor ~ 300
        view1 ≥ relatedView.widthAnchor ~ 300
        view1 ≥ relatedView.widthAnchor ~ 300
        view1 ≥ relatedView.widthAnchor ~ 300
        view1 ≥ relatedView.widthAnchor ~ 300
        view1 ≥ relatedView.widthAnchor ~ 300
        view1 ≥ relatedView.widthAnchor ~ 300
        view1 ≥ relatedView.widthAnchor ~ 300
        view1 ≥ relatedView.widthAnchor ~ 300
        view1 ≥ relatedView.widthAnchor ~ 300
        view1 ≥ relatedView.widthAnchor ~ 300
        view1 ≥ relatedView.widthAnchor ~ 300
        view1 ≥ relatedView.widthAnchor ~ 300
        view1 ≥ relatedView.widthAnchor ~ 300
        view1 ≥ relatedView.widthAnchor ~ 300
        view1 ≥ relatedView.widthAnchor ~ 300
    }

    func compileView1WidthGreaterThanOrEqualToWidthAnchorWithPriorityArithmetic() {
        view1.width ≥ relatedView.widthAnchor ~ .high .- 1
        view1.width ≥ relatedView.widthAnchor ~ .high .- 1
        view1.width ≥ relatedView.widthAnchor ~ .high .- 1
        view1.width ≥ relatedView.widthAnchor ~ .high .- 1
        view1.width ≥ relatedView.widthAnchor ~ .high .- 1
        view1.width ≥ relatedView.widthAnchor ~ .high .- 1
        view1.width ≥ relatedView.widthAnchor ~ .high .- 1
        view1.width ≥ relatedView.widthAnchor ~ .high .- 1
        view1.width ≥ relatedView.widthAnchor ~ .high .- 1
        view1.width ≥ relatedView.widthAnchor ~ .high .- 1
        view1.width ≥ relatedView.widthAnchor ~ .high .- 1
        view1.width ≥ relatedView.widthAnchor ~ .high .- 1
        view1.width ≥ relatedView.widthAnchor ~ .high .- 1
        view1.width ≥ relatedView.widthAnchor ~ .high .- 1
        view1.width ≥ relatedView.widthAnchor ~ .high .- 1
        view1.width ≥ relatedView.widthAnchor ~ .high .- 1
        view1.width ≥ relatedView.widthAnchor ~ .high .- 1
        view1.width ≥ relatedView.widthAnchor ~ .high .- 1
        view1.width ≥ relatedView.widthAnchor ~ .high .- 1
        view1.width ≥ relatedView.widthAnchor ~ .high .- 1
    }

    func impliedcompileView1WidthGreaterThanOrEqualToWidthAnchorWithPriorityArithmetic() {
        view1 ≥ relatedView.widthAnchor ~ .high .- 1
        view1 ≥ relatedView.widthAnchor ~ .high .- 1
        view1 ≥ relatedView.widthAnchor ~ .high .- 1
        view1 ≥ relatedView.widthAnchor ~ .high .- 1
        view1 ≥ relatedView.widthAnchor ~ .high .- 1
        view1 ≥ relatedView.widthAnchor ~ .high .- 1
        view1 ≥ relatedView.widthAnchor ~ .high .- 1
        view1 ≥ relatedView.widthAnchor ~ .high .- 1
        view1 ≥ relatedView.widthAnchor ~ .high .- 1
        view1 ≥ relatedView.widthAnchor ~ .high .- 1
        view1 ≥ relatedView.widthAnchor ~ .high .- 1
        view1 ≥ relatedView.widthAnchor ~ .high .- 1
        view1 ≥ relatedView.widthAnchor ~ .high .- 1
        view1 ≥ relatedView.widthAnchor ~ .high .- 1
        view1 ≥ relatedView.widthAnchor ~ .high .- 1
        view1 ≥ relatedView.widthAnchor ~ .high .- 1
        view1 ≥ relatedView.widthAnchor ~ .high .- 1
        view1 ≥ relatedView.widthAnchor ~ .high .- 1
        view1 ≥ relatedView.widthAnchor ~ .high .- 1
        view1 ≥ relatedView.widthAnchor ~ .high .- 1
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func compileView1WidthGreaterThanOrEqualToWidthAnchorPlusConstantMultiplyingConstant() {
        view1.width ≥ (relatedView.widthAnchor .+ 10) .* 3
        view1.width ≥ (relatedView.widthAnchor .+ 10) .* 3
        view1.width ≥ (relatedView.widthAnchor .+ 10) .* 3
        view1.width ≥ (relatedView.widthAnchor .+ 10) .* 3
        view1.width ≥ (relatedView.widthAnchor .+ 10) .* 3
        view1.width ≥ (relatedView.widthAnchor .+ 10) .* 3
        view1.width ≥ (relatedView.widthAnchor .+ 10) .* 3
        view1.width ≥ (relatedView.widthAnchor .+ 10) .* 3
        view1.width ≥ (relatedView.widthAnchor .+ 10) .* 3
        view1.width ≥ (relatedView.widthAnchor .+ 10) .* 3
        view1.width ≥ (relatedView.widthAnchor .+ 10) .* 3
        view1.width ≥ (relatedView.widthAnchor .+ 10) .* 3
        view1.width ≥ (relatedView.widthAnchor .+ 10) .* 3
        view1.width ≥ (relatedView.widthAnchor .+ 10) .* 3
        view1.width ≥ (relatedView.widthAnchor .+ 10) .* 3
        view1.width ≥ (relatedView.widthAnchor .+ 10) .* 3
        view1.width ≥ (relatedView.widthAnchor .+ 10) .* 3
        view1.width ≥ (relatedView.widthAnchor .+ 10) .* 3
        view1.width ≥ (relatedView.widthAnchor .+ 10) .* 3
        view1.width ≥ (relatedView.widthAnchor .+ 10) .* 3
    }

    func impliedcompileView1WidthGreaterThanOrEqualToWidthAnchorPlusConstantMultiplyingConstant() {
        view1 ≥ (relatedView.widthAnchor .+ 10) .* 3
        view1 ≥ (relatedView.widthAnchor .+ 10) .* 3
        view1 ≥ (relatedView.widthAnchor .+ 10) .* 3
        view1 ≥ (relatedView.widthAnchor .+ 10) .* 3
        view1 ≥ (relatedView.widthAnchor .+ 10) .* 3
        view1 ≥ (relatedView.widthAnchor .+ 10) .* 3
        view1 ≥ (relatedView.widthAnchor .+ 10) .* 3
        view1 ≥ (relatedView.widthAnchor .+ 10) .* 3
        view1 ≥ (relatedView.widthAnchor .+ 10) .* 3
        view1 ≥ (relatedView.widthAnchor .+ 10) .* 3
        view1 ≥ (relatedView.widthAnchor .+ 10) .* 3
        view1 ≥ (relatedView.widthAnchor .+ 10) .* 3
        view1 ≥ (relatedView.widthAnchor .+ 10) .* 3
        view1 ≥ (relatedView.widthAnchor .+ 10) .* 3
        view1 ≥ (relatedView.widthAnchor .+ 10) .* 3
        view1 ≥ (relatedView.widthAnchor .+ 10) .* 3
        view1 ≥ (relatedView.widthAnchor .+ 10) .* 3
        view1 ≥ (relatedView.widthAnchor .+ 10) .* 3
        view1 ≥ (relatedView.widthAnchor .+ 10) .* 3
        view1 ≥ (relatedView.widthAnchor .+ 10) .* 3
    }

    func compileView1WidthGreaterThanOrEqualToWidthAnchorPlusConstantMultipliedByConstant() {
        view1.width ≥ 3 .* (relatedView.widthAnchor .+ 10)
        view1.width ≥ 3 .* (relatedView.widthAnchor .+ 10)
        view1.width ≥ 3 .* (relatedView.widthAnchor .+ 10)
        view1.width ≥ 3 .* (relatedView.widthAnchor .+ 10)
        view1.width ≥ 3 .* (relatedView.widthAnchor .+ 10)
        view1.width ≥ 3 .* (relatedView.widthAnchor .+ 10)
        view1.width ≥ 3 .* (relatedView.widthAnchor .+ 10)
        view1.width ≥ 3 .* (relatedView.widthAnchor .+ 10)
        view1.width ≥ 3 .* (relatedView.widthAnchor .+ 10)
        view1.width ≥ 3 .* (relatedView.widthAnchor .+ 10)
        view1.width ≥ 3 .* (relatedView.widthAnchor .+ 10)
        view1.width ≥ 3 .* (relatedView.widthAnchor .+ 10)
        view1.width ≥ 3 .* (relatedView.widthAnchor .+ 10)
        view1.width ≥ 3 .* (relatedView.widthAnchor .+ 10)
        view1.width ≥ 3 .* (relatedView.widthAnchor .+ 10)
        view1.width ≥ 3 .* (relatedView.widthAnchor .+ 10)
        view1.width ≥ 3 .* (relatedView.widthAnchor .+ 10)
        view1.width ≥ 3 .* (relatedView.widthAnchor .+ 10)
        view1.width ≥ 3 .* (relatedView.widthAnchor .+ 10)
        view1.width ≥ 3 .* (relatedView.widthAnchor .+ 10)
    }

    func impliedcompileView1WidthGreaterThanOrEqualToWidthAnchorPlusConstantMultipliedByConstant() {
        view1 ≥ 3 .* (relatedView.widthAnchor .+ 10)
        view1 ≥ 3 .* (relatedView.widthAnchor .+ 10)
        view1 ≥ 3 .* (relatedView.widthAnchor .+ 10)
        view1 ≥ 3 .* (relatedView.widthAnchor .+ 10)
        view1 ≥ 3 .* (relatedView.widthAnchor .+ 10)
        view1 ≥ 3 .* (relatedView.widthAnchor .+ 10)
        view1 ≥ 3 .* (relatedView.widthAnchor .+ 10)
        view1 ≥ 3 .* (relatedView.widthAnchor .+ 10)
        view1 ≥ 3 .* (relatedView.widthAnchor .+ 10)
        view1 ≥ 3 .* (relatedView.widthAnchor .+ 10)
        view1 ≥ 3 .* (relatedView.widthAnchor .+ 10)
        view1 ≥ 3 .* (relatedView.widthAnchor .+ 10)
        view1 ≥ 3 .* (relatedView.widthAnchor .+ 10)
        view1 ≥ 3 .* (relatedView.widthAnchor .+ 10)
        view1 ≥ 3 .* (relatedView.widthAnchor .+ 10)
        view1 ≥ 3 .* (relatedView.widthAnchor .+ 10)
        view1 ≥ 3 .* (relatedView.widthAnchor .+ 10)
        view1 ≥ 3 .* (relatedView.widthAnchor .+ 10)
        view1 ≥ 3 .* (relatedView.widthAnchor .+ 10)
        view1 ≥ 3 .* (relatedView.widthAnchor .+ 10)
    }

    func compileView1WidthGreaterThanOrEqualToWidthAnchorMultipliedByConstantPlusConstant() {
        view1.width ≥ 3 .* relatedView.widthAnchor .+ 10
        view1.width ≥ 3 .* relatedView.widthAnchor .+ 10
        view1.width ≥ 3 .* relatedView.widthAnchor .+ 10
        view1.width ≥ 3 .* relatedView.widthAnchor .+ 10
        view1.width ≥ 3 .* relatedView.widthAnchor .+ 10
        view1.width ≥ 3 .* relatedView.widthAnchor .+ 10
        view1.width ≥ 3 .* relatedView.widthAnchor .+ 10
        view1.width ≥ 3 .* relatedView.widthAnchor .+ 10
        view1.width ≥ 3 .* relatedView.widthAnchor .+ 10
        view1.width ≥ 3 .* relatedView.widthAnchor .+ 10
        view1.width ≥ 3 .* relatedView.widthAnchor .+ 10
        view1.width ≥ 3 .* relatedView.widthAnchor .+ 10
        view1.width ≥ 3 .* relatedView.widthAnchor .+ 10
        view1.width ≥ 3 .* relatedView.widthAnchor .+ 10
        view1.width ≥ 3 .* relatedView.widthAnchor .+ 10
        view1.width ≥ 3 .* relatedView.widthAnchor .+ 10
        view1.width ≥ 3 .* relatedView.widthAnchor .+ 10
        view1.width ≥ 3 .* relatedView.widthAnchor .+ 10
        view1.width ≥ 3 .* relatedView.widthAnchor .+ 10
        view1.width ≥ 3 .* relatedView.widthAnchor .+ 10
    }

    func impliedcompileView1WidthGreaterThanOrEqualToWidthAnchorMultipliedByConstantPlusConstant() {
        view1 ≥ 3 .* relatedView.widthAnchor .+ 10
        view1 ≥ 3 .* relatedView.widthAnchor .+ 10
        view1 ≥ 3 .* relatedView.widthAnchor .+ 10
        view1 ≥ 3 .* relatedView.widthAnchor .+ 10
        view1 ≥ 3 .* relatedView.widthAnchor .+ 10
        view1 ≥ 3 .* relatedView.widthAnchor .+ 10
        view1 ≥ 3 .* relatedView.widthAnchor .+ 10
        view1 ≥ 3 .* relatedView.widthAnchor .+ 10
        view1 ≥ 3 .* relatedView.widthAnchor .+ 10
        view1 ≥ 3 .* relatedView.widthAnchor .+ 10
        view1 ≥ 3 .* relatedView.widthAnchor .+ 10
        view1 ≥ 3 .* relatedView.widthAnchor .+ 10
        view1 ≥ 3 .* relatedView.widthAnchor .+ 10
        view1 ≥ 3 .* relatedView.widthAnchor .+ 10
        view1 ≥ 3 .* relatedView.widthAnchor .+ 10
        view1 ≥ 3 .* relatedView.widthAnchor .+ 10
        view1 ≥ 3 .* relatedView.widthAnchor .+ 10
        view1 ≥ 3 .* relatedView.widthAnchor .+ 10
        view1 ≥ 3 .* relatedView.widthAnchor .+ 10
        view1 ≥ 3 .* relatedView.widthAnchor .+ 10
    }

    func compileView1WidthGreaterThanOrEqualToWidthAnchorPlusConstantDividedByConstant() {
        view1.width ≥ (relatedView.widthAnchor .+ 10) ./ 2
        view1.width ≥ (relatedView.widthAnchor .+ 10) ./ 2
        view1.width ≥ (relatedView.widthAnchor .+ 10) ./ 2
        view1.width ≥ (relatedView.widthAnchor .+ 10) ./ 2
        view1.width ≥ (relatedView.widthAnchor .+ 10) ./ 2
        view1.width ≥ (relatedView.widthAnchor .+ 10) ./ 2
        view1.width ≥ (relatedView.widthAnchor .+ 10) ./ 2
        view1.width ≥ (relatedView.widthAnchor .+ 10) ./ 2
        view1.width ≥ (relatedView.widthAnchor .+ 10) ./ 2
        view1.width ≥ (relatedView.widthAnchor .+ 10) ./ 2
        view1.width ≥ (relatedView.widthAnchor .+ 10) ./ 2
        view1.width ≥ (relatedView.widthAnchor .+ 10) ./ 2
        view1.width ≥ (relatedView.widthAnchor .+ 10) ./ 2
        view1.width ≥ (relatedView.widthAnchor .+ 10) ./ 2
        view1.width ≥ (relatedView.widthAnchor .+ 10) ./ 2
        view1.width ≥ (relatedView.widthAnchor .+ 10) ./ 2
        view1.width ≥ (relatedView.widthAnchor .+ 10) ./ 2
        view1.width ≥ (relatedView.widthAnchor .+ 10) ./ 2
        view1.width ≥ (relatedView.widthAnchor .+ 10) ./ 2
        view1.width ≥ (relatedView.widthAnchor .+ 10) ./ 2
    }

    func impliedcompileView1WidthGreaterThanOrEqualToWidthAnchorPlusConstantDividedByConstant() {
        view1 ≥ (relatedView.widthAnchor .+ 10) ./ 2
        view1 ≥ (relatedView.widthAnchor .+ 10) ./ 2
        view1 ≥ (relatedView.widthAnchor .+ 10) ./ 2
        view1 ≥ (relatedView.widthAnchor .+ 10) ./ 2
        view1 ≥ (relatedView.widthAnchor .+ 10) ./ 2
        view1 ≥ (relatedView.widthAnchor .+ 10) ./ 2
        view1 ≥ (relatedView.widthAnchor .+ 10) ./ 2
        view1 ≥ (relatedView.widthAnchor .+ 10) ./ 2
        view1 ≥ (relatedView.widthAnchor .+ 10) ./ 2
        view1 ≥ (relatedView.widthAnchor .+ 10) ./ 2
        view1 ≥ (relatedView.widthAnchor .+ 10) ./ 2
        view1 ≥ (relatedView.widthAnchor .+ 10) ./ 2
        view1 ≥ (relatedView.widthAnchor .+ 10) ./ 2
        view1 ≥ (relatedView.widthAnchor .+ 10) ./ 2
        view1 ≥ (relatedView.widthAnchor .+ 10) ./ 2
        view1 ≥ (relatedView.widthAnchor .+ 10) ./ 2
        view1 ≥ (relatedView.widthAnchor .+ 10) ./ 2
        view1 ≥ (relatedView.widthAnchor .+ 10) ./ 2
        view1 ≥ (relatedView.widthAnchor .+ 10) ./ 2
        view1 ≥ (relatedView.widthAnchor .+ 10) ./ 2
    }

// MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func compileView1WidthGreaterThanOrEqualToWidthAnchorPlusConstantMultiplyingConstantWithPriority() {
        view1.width ≥ (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1.width ≥ (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1.width ≥ (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1.width ≥ (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1.width ≥ (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1.width ≥ (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1.width ≥ (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1.width ≥ (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1.width ≥ (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1.width ≥ (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1.width ≥ (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1.width ≥ (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1.width ≥ (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1.width ≥ (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1.width ≥ (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1.width ≥ (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1.width ≥ (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1.width ≥ (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1.width ≥ (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1.width ≥ (relatedView.widthAnchor .+ 10) .* 3 ~ .low
    }

    func impliedcompileView1WidthGreaterThanOrEqualToWidthAnchorPlusConstantMultiplyingConstantWithPriority() {
        view1 ≥ (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1 ≥ (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1 ≥ (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1 ≥ (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1 ≥ (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1 ≥ (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1 ≥ (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1 ≥ (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1 ≥ (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1 ≥ (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1 ≥ (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1 ≥ (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1 ≥ (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1 ≥ (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1 ≥ (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1 ≥ (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1 ≥ (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1 ≥ (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1 ≥ (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1 ≥ (relatedView.widthAnchor .+ 10) .* 3 ~ .low
    }

    func compileView1WidthGreaterThanOrEqualToWidthAnchorPlusConstantMultipliedByConstantWithPriority() {
        view1.width ≥ 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1.width ≥ 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1.width ≥ 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1.width ≥ 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1.width ≥ 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1.width ≥ 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1.width ≥ 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1.width ≥ 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1.width ≥ 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1.width ≥ 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1.width ≥ 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1.width ≥ 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1.width ≥ 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1.width ≥ 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1.width ≥ 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1.width ≥ 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1.width ≥ 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1.width ≥ 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1.width ≥ 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1.width ≥ 3 .* (relatedView.widthAnchor .+ 10) ~ .low
    }

    func impliedcompileView1WidthGreaterThanOrEqualToWidthAnchorPlusConstantMultipliedByConstantWithPriority() {
        view1 ≥ 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1 ≥ 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1 ≥ 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1 ≥ 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1 ≥ 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1 ≥ 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1 ≥ 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1 ≥ 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1 ≥ 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1 ≥ 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1 ≥ 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1 ≥ 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1 ≥ 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1 ≥ 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1 ≥ 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1 ≥ 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1 ≥ 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1 ≥ 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1 ≥ 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1 ≥ 3 .* (relatedView.widthAnchor .+ 10) ~ .low
    }

    func compileView1WidthGreaterThanOrEqualToWidthAnchorMultipliedByConstantPlusConstantWithPriority() {
        view1.width ≥ 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1.width ≥ 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1.width ≥ 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1.width ≥ 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1.width ≥ 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1.width ≥ 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1.width ≥ 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1.width ≥ 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1.width ≥ 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1.width ≥ 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1.width ≥ 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1.width ≥ 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1.width ≥ 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1.width ≥ 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1.width ≥ 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1.width ≥ 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1.width ≥ 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1.width ≥ 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1.width ≥ 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1.width ≥ 3 .* relatedView.widthAnchor .+ 10 ~ .low
    }

    func impliedcompileView1WidthGreaterThanOrEqualToWidthAnchorMultipliedByConstantPlusConstantWithPriority() {
        view1 ≥ 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1 ≥ 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1 ≥ 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1 ≥ 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1 ≥ 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1 ≥ 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1 ≥ 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1 ≥ 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1 ≥ 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1 ≥ 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1 ≥ 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1 ≥ 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1 ≥ 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1 ≥ 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1 ≥ 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1 ≥ 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1 ≥ 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1 ≥ 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1 ≥ 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1 ≥ 3 .* relatedView.widthAnchor .+ 10 ~ .low
    }

    func compileView1WidthGreaterThanOrEqualToWidthAnchorPlusConstantDividedByConstantWithPriority() {
        view1.width ≥ (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1.width ≥ (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1.width ≥ (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1.width ≥ (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1.width ≥ (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1.width ≥ (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1.width ≥ (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1.width ≥ (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1.width ≥ (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1.width ≥ (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1.width ≥ (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1.width ≥ (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1.width ≥ (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1.width ≥ (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1.width ≥ (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1.width ≥ (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1.width ≥ (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1.width ≥ (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1.width ≥ (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1.width ≥ (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
    }

    func impliedcompileView1WidthGreaterThanOrEqualToWidthAnchorPlusConstantDividedByConstantWithPriority() {
        view1 ≥ (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1 ≥ (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1 ≥ (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1 ≥ (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1 ≥ (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1 ≥ (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1 ≥ (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1 ≥ (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1 ≥ (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1 ≥ (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1 ≥ (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1 ≥ (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1 ≥ (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1 ≥ (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1 ≥ (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1 ≥ (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1 ≥ (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1 ≥ (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1 ≥ (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1 ≥ (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func compileView1WidthGreaterThanOrEqualToWidthAnchorPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        view1.width ≥ (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1.width ≥ (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1.width ≥ (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1.width ≥ (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1.width ≥ (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1.width ≥ (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1.width ≥ (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1.width ≥ (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1.width ≥ (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1.width ≥ (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1.width ≥ (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1.width ≥ (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1.width ≥ (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1.width ≥ (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1.width ≥ (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1.width ≥ (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1.width ≥ (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1.width ≥ (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1.width ≥ (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1.width ≥ (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
    }

    func impliedcompileView1WidthGreaterThanOrEqualToWidthAnchorPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        view1 ≥ (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1 ≥ (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1 ≥ (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1 ≥ (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1 ≥ (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1 ≥ (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1 ≥ (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1 ≥ (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1 ≥ (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1 ≥ (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1 ≥ (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1 ≥ (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1 ≥ (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1 ≥ (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1 ≥ (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1 ≥ (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1 ≥ (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1 ≥ (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1 ≥ (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1 ≥ (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
    }

    func compileView1WidthGreaterThanOrEqualToWidthAnchorPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        view1.width ≥ 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1.width ≥ 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1.width ≥ 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1.width ≥ 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1.width ≥ 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1.width ≥ 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1.width ≥ 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1.width ≥ 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1.width ≥ 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1.width ≥ 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1.width ≥ 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1.width ≥ 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1.width ≥ 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1.width ≥ 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1.width ≥ 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1.width ≥ 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1.width ≥ 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1.width ≥ 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1.width ≥ 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1.width ≥ 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
    }

    func impliedcompileView1WidthGreaterThanOrEqualToWidthAnchorPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        view1 ≥ 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1 ≥ 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1 ≥ 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1 ≥ 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1 ≥ 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1 ≥ 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1 ≥ 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1 ≥ 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1 ≥ 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1 ≥ 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1 ≥ 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1 ≥ 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1 ≥ 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1 ≥ 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1 ≥ 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1 ≥ 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1 ≥ 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1 ≥ 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1 ≥ 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1 ≥ 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
    }

    func compileView1WidthGreaterThanOrEqualToWidthAnchorMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        view1.width ≥ 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1.width ≥ 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1.width ≥ 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1.width ≥ 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1.width ≥ 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1.width ≥ 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1.width ≥ 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1.width ≥ 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1.width ≥ 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1.width ≥ 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1.width ≥ 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1.width ≥ 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1.width ≥ 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1.width ≥ 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1.width ≥ 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1.width ≥ 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1.width ≥ 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1.width ≥ 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1.width ≥ 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1.width ≥ 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
    }

    func impliedcompileView1WidthGreaterThanOrEqualToWidthAnchorMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        view1 ≥ 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1 ≥ 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1 ≥ 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1 ≥ 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1 ≥ 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1 ≥ 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1 ≥ 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1 ≥ 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1 ≥ 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1 ≥ 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1 ≥ 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1 ≥ 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1 ≥ 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1 ≥ 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1 ≥ 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1 ≥ 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1 ≥ 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1 ≥ 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1 ≥ 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1 ≥ 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
    }

    func compileView1WidthGreaterThanOrEqualToWidthAnchorPlusConstantDividedByConstantWithPriorityArithmetic() {
        view1.width ≥ (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1.width ≥ (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1.width ≥ (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1.width ≥ (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1.width ≥ (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1.width ≥ (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1.width ≥ (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1.width ≥ (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1.width ≥ (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1.width ≥ (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1.width ≥ (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1.width ≥ (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1.width ≥ (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1.width ≥ (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1.width ≥ (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1.width ≥ (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1.width ≥ (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1.width ≥ (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1.width ≥ (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1.width ≥ (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
    }

    func impliedcompileView1WidthGreaterThanOrEqualToWidthAnchorPlusConstantDividedByConstantWithPriorityArithmetic() {
        view1 ≥ (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1 ≥ (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1 ≥ (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1 ≥ (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1 ≥ (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1 ≥ (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1 ≥ (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1 ≥ (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1 ≥ (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1 ≥ (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1 ≥ (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1 ≥ (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1 ≥ (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1 ≥ (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1 ≥ (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1 ≥ (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1 ≥ (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1 ≥ (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1 ≥ (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1 ≥ (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
    }

    // MARK: Equal

    func compileView1WidthEqualToWidthAnchor() {
        view1.width .= relatedView.widthAnchor
        view1.width .= relatedView.widthAnchor
        view1.width .= relatedView.widthAnchor
        view1.width .= relatedView.widthAnchor
        view1.width .= relatedView.widthAnchor
        view1.width .= relatedView.widthAnchor
        view1.width .= relatedView.widthAnchor
        view1.width .= relatedView.widthAnchor
        view1.width .= relatedView.widthAnchor
        view1.width .= relatedView.widthAnchor
        view1.width .= relatedView.widthAnchor
        view1.width .= relatedView.widthAnchor
        view1.width .= relatedView.widthAnchor
        view1.width .= relatedView.widthAnchor
        view1.width .= relatedView.widthAnchor
        view1.width .= relatedView.widthAnchor
        view1.width .= relatedView.widthAnchor
        view1.width .= relatedView.widthAnchor
        view1.width .= relatedView.widthAnchor
        view1.width .= relatedView.widthAnchor
    }

    func impliedcompileView1WidthEqualToWidthAnchor() {
        view1 .= relatedView.widthAnchor
        view1 .= relatedView.widthAnchor
        view1 .= relatedView.widthAnchor
        view1 .= relatedView.widthAnchor
        view1 .= relatedView.widthAnchor
        view1 .= relatedView.widthAnchor
        view1 .= relatedView.widthAnchor
        view1 .= relatedView.widthAnchor
        view1 .= relatedView.widthAnchor
        view1 .= relatedView.widthAnchor
        view1 .= relatedView.widthAnchor
        view1 .= relatedView.widthAnchor
        view1 .= relatedView.widthAnchor
        view1 .= relatedView.widthAnchor
        view1 .= relatedView.widthAnchor
        view1 .= relatedView.widthAnchor
        view1 .= relatedView.widthAnchor
        view1 .= relatedView.widthAnchor
        view1 .= relatedView.widthAnchor
        view1 .= relatedView.widthAnchor
    }

    // MARK: Equal with constant
    func compileView1WidthEqualToWidthAnchorPlusConstant() {
        view1.width .= relatedView.widthAnchor .+ 10
        view1.width .= relatedView.widthAnchor .+ 10
        view1.width .= relatedView.widthAnchor .+ 10
        view1.width .= relatedView.widthAnchor .+ 10
        view1.width .= relatedView.widthAnchor .+ 10
        view1.width .= relatedView.widthAnchor .+ 10
        view1.width .= relatedView.widthAnchor .+ 10
        view1.width .= relatedView.widthAnchor .+ 10
        view1.width .= relatedView.widthAnchor .+ 10
        view1.width .= relatedView.widthAnchor .+ 10
        view1.width .= relatedView.widthAnchor .+ 10
        view1.width .= relatedView.widthAnchor .+ 10
        view1.width .= relatedView.widthAnchor .+ 10
        view1.width .= relatedView.widthAnchor .+ 10
        view1.width .= relatedView.widthAnchor .+ 10
        view1.width .= relatedView.widthAnchor .+ 10
        view1.width .= relatedView.widthAnchor .+ 10
        view1.width .= relatedView.widthAnchor .+ 10
        view1.width .= relatedView.widthAnchor .+ 10
        view1.width .= relatedView.widthAnchor .+ 10
    }

    func impliedcompileView1WidthEqualToWidthAnchorPlusConstant() {
        view1 .= relatedView.widthAnchor .+ 10
        view1 .= relatedView.widthAnchor .+ 10
        view1 .= relatedView.widthAnchor .+ 10
        view1 .= relatedView.widthAnchor .+ 10
        view1 .= relatedView.widthAnchor .+ 10
        view1 .= relatedView.widthAnchor .+ 10
        view1 .= relatedView.widthAnchor .+ 10
        view1 .= relatedView.widthAnchor .+ 10
        view1 .= relatedView.widthAnchor .+ 10
        view1 .= relatedView.widthAnchor .+ 10
        view1 .= relatedView.widthAnchor .+ 10
        view1 .= relatedView.widthAnchor .+ 10
        view1 .= relatedView.widthAnchor .+ 10
        view1 .= relatedView.widthAnchor .+ 10
        view1 .= relatedView.widthAnchor .+ 10
        view1 .= relatedView.widthAnchor .+ 10
        view1 .= relatedView.widthAnchor .+ 10
        view1 .= relatedView.widthAnchor .+ 10
        view1 .= relatedView.widthAnchor .+ 10
        view1 .= relatedView.widthAnchor .+ 10
    }

    func compileView1WidthEqualToWidthAnchorMinusConstant() {
        view1.width .= relatedView.widthAnchor .- 10
        view1.width .= relatedView.widthAnchor .- 10
        view1.width .= relatedView.widthAnchor .- 10
        view1.width .= relatedView.widthAnchor .- 10
        view1.width .= relatedView.widthAnchor .- 10
        view1.width .= relatedView.widthAnchor .- 10
        view1.width .= relatedView.widthAnchor .- 10
        view1.width .= relatedView.widthAnchor .- 10
        view1.width .= relatedView.widthAnchor .- 10
        view1.width .= relatedView.widthAnchor .- 10
        view1.width .= relatedView.widthAnchor .- 10
        view1.width .= relatedView.widthAnchor .- 10
        view1.width .= relatedView.widthAnchor .- 10
        view1.width .= relatedView.widthAnchor .- 10
        view1.width .= relatedView.widthAnchor .- 10
        view1.width .= relatedView.widthAnchor .- 10
        view1.width .= relatedView.widthAnchor .- 10
        view1.width .= relatedView.widthAnchor .- 10
        view1.width .= relatedView.widthAnchor .- 10
        view1.width .= relatedView.widthAnchor .- 10
    }

    func impliedcompileView1WidthEqualToWidthAnchorMinusConstant() {
        view1 .= relatedView.widthAnchor .- 10
        view1 .= relatedView.widthAnchor .- 10
        view1 .= relatedView.widthAnchor .- 10
        view1 .= relatedView.widthAnchor .- 10
        view1 .= relatedView.widthAnchor .- 10
        view1 .= relatedView.widthAnchor .- 10
        view1 .= relatedView.widthAnchor .- 10
        view1 .= relatedView.widthAnchor .- 10
        view1 .= relatedView.widthAnchor .- 10
        view1 .= relatedView.widthAnchor .- 10
        view1 .= relatedView.widthAnchor .- 10
        view1 .= relatedView.widthAnchor .- 10
        view1 .= relatedView.widthAnchor .- 10
        view1 .= relatedView.widthAnchor .- 10
        view1 .= relatedView.widthAnchor .- 10
        view1 .= relatedView.widthAnchor .- 10
        view1 .= relatedView.widthAnchor .- 10
        view1 .= relatedView.widthAnchor .- 10
        view1 .= relatedView.widthAnchor .- 10
        view1 .= relatedView.widthAnchor .- 10
    }

    // MARK: Equal with multiplier
    func compileView1WidthEqualToWidthAnchorMultiplyingConstant() {
        view1.width .= relatedView.widthAnchor .* 3
        view1.width .= relatedView.widthAnchor .* 3
        view1.width .= relatedView.widthAnchor .* 3
        view1.width .= relatedView.widthAnchor .* 3
        view1.width .= relatedView.widthAnchor .* 3
        view1.width .= relatedView.widthAnchor .* 3
        view1.width .= relatedView.widthAnchor .* 3
        view1.width .= relatedView.widthAnchor .* 3
        view1.width .= relatedView.widthAnchor .* 3
        view1.width .= relatedView.widthAnchor .* 3
        view1.width .= relatedView.widthAnchor .* 3
        view1.width .= relatedView.widthAnchor .* 3
        view1.width .= relatedView.widthAnchor .* 3
        view1.width .= relatedView.widthAnchor .* 3
        view1.width .= relatedView.widthAnchor .* 3
        view1.width .= relatedView.widthAnchor .* 3
        view1.width .= relatedView.widthAnchor .* 3
        view1.width .= relatedView.widthAnchor .* 3
        view1.width .= relatedView.widthAnchor .* 3
        view1.width .= relatedView.widthAnchor .* 3
    }

    func impliedcompileView1WidthEqualToWidthAnchorMultiplyingConstant() {
        view1 .= relatedView.widthAnchor .* 3
        view1 .= relatedView.widthAnchor .* 3
        view1 .= relatedView.widthAnchor .* 3
        view1 .= relatedView.widthAnchor .* 3
        view1 .= relatedView.widthAnchor .* 3
        view1 .= relatedView.widthAnchor .* 3
        view1 .= relatedView.widthAnchor .* 3
        view1 .= relatedView.widthAnchor .* 3
        view1 .= relatedView.widthAnchor .* 3
        view1 .= relatedView.widthAnchor .* 3
        view1 .= relatedView.widthAnchor .* 3
        view1 .= relatedView.widthAnchor .* 3
        view1 .= relatedView.widthAnchor .* 3
        view1 .= relatedView.widthAnchor .* 3
        view1 .= relatedView.widthAnchor .* 3
        view1 .= relatedView.widthAnchor .* 3
        view1 .= relatedView.widthAnchor .* 3
        view1 .= relatedView.widthAnchor .* 3
        view1 .= relatedView.widthAnchor .* 3
        view1 .= relatedView.widthAnchor .* 3
    }

    func compileView1WidthEqualToWidthAnchorMultipliedByConstant() {
        view1.width .= 3 .* relatedView.widthAnchor
        view1.width .= 3 .* relatedView.widthAnchor
        view1.width .= 3 .* relatedView.widthAnchor
        view1.width .= 3 .* relatedView.widthAnchor
        view1.width .= 3 .* relatedView.widthAnchor
        view1.width .= 3 .* relatedView.widthAnchor
        view1.width .= 3 .* relatedView.widthAnchor
        view1.width .= 3 .* relatedView.widthAnchor
        view1.width .= 3 .* relatedView.widthAnchor
        view1.width .= 3 .* relatedView.widthAnchor
        view1.width .= 3 .* relatedView.widthAnchor
        view1.width .= 3 .* relatedView.widthAnchor
        view1.width .= 3 .* relatedView.widthAnchor
        view1.width .= 3 .* relatedView.widthAnchor
        view1.width .= 3 .* relatedView.widthAnchor
        view1.width .= 3 .* relatedView.widthAnchor
        view1.width .= 3 .* relatedView.widthAnchor
        view1.width .= 3 .* relatedView.widthAnchor
        view1.width .= 3 .* relatedView.widthAnchor
        view1.width .= 3 .* relatedView.widthAnchor
    }

    func impliedcompileView1WidthEqualToWidthAnchorMultipliedByConstant() {
        view1 .= 3 .* relatedView.widthAnchor
        view1 .= 3 .* relatedView.widthAnchor
        view1 .= 3 .* relatedView.widthAnchor
        view1 .= 3 .* relatedView.widthAnchor
        view1 .= 3 .* relatedView.widthAnchor
        view1 .= 3 .* relatedView.widthAnchor
        view1 .= 3 .* relatedView.widthAnchor
        view1 .= 3 .* relatedView.widthAnchor
        view1 .= 3 .* relatedView.widthAnchor
        view1 .= 3 .* relatedView.widthAnchor
        view1 .= 3 .* relatedView.widthAnchor
        view1 .= 3 .* relatedView.widthAnchor
        view1 .= 3 .* relatedView.widthAnchor
        view1 .= 3 .* relatedView.widthAnchor
        view1 .= 3 .* relatedView.widthAnchor
        view1 .= 3 .* relatedView.widthAnchor
        view1 .= 3 .* relatedView.widthAnchor
        view1 .= 3 .* relatedView.widthAnchor
        view1 .= 3 .* relatedView.widthAnchor
        view1 .= 3 .* relatedView.widthAnchor
    }

    func compileView1WidthEqualToWidthAnchorDividedByConstant() {
        view1.width .= relatedView.widthAnchor ./ 2
        view1.width .= relatedView.widthAnchor ./ 2
        view1.width .= relatedView.widthAnchor ./ 2
        view1.width .= relatedView.widthAnchor ./ 2
        view1.width .= relatedView.widthAnchor ./ 2
        view1.width .= relatedView.widthAnchor ./ 2
        view1.width .= relatedView.widthAnchor ./ 2
        view1.width .= relatedView.widthAnchor ./ 2
        view1.width .= relatedView.widthAnchor ./ 2
        view1.width .= relatedView.widthAnchor ./ 2
        view1.width .= relatedView.widthAnchor ./ 2
        view1.width .= relatedView.widthAnchor ./ 2
        view1.width .= relatedView.widthAnchor ./ 2
        view1.width .= relatedView.widthAnchor ./ 2
        view1.width .= relatedView.widthAnchor ./ 2
        view1.width .= relatedView.widthAnchor ./ 2
        view1.width .= relatedView.widthAnchor ./ 2
        view1.width .= relatedView.widthAnchor ./ 2
        view1.width .= relatedView.widthAnchor ./ 2
        view1.width .= relatedView.widthAnchor ./ 2
    }

    func impliedcompileView1WidthEqualToWidthAnchorDividedByConstant() {
        view1 .= relatedView.widthAnchor ./ 2
        view1 .= relatedView.widthAnchor ./ 2
        view1 .= relatedView.widthAnchor ./ 2
        view1 .= relatedView.widthAnchor ./ 2
        view1 .= relatedView.widthAnchor ./ 2
        view1 .= relatedView.widthAnchor ./ 2
        view1 .= relatedView.widthAnchor ./ 2
        view1 .= relatedView.widthAnchor ./ 2
        view1 .= relatedView.widthAnchor ./ 2
        view1 .= relatedView.widthAnchor ./ 2
        view1 .= relatedView.widthAnchor ./ 2
        view1 .= relatedView.widthAnchor ./ 2
        view1 .= relatedView.widthAnchor ./ 2
        view1 .= relatedView.widthAnchor ./ 2
        view1 .= relatedView.widthAnchor ./ 2
        view1 .= relatedView.widthAnchor ./ 2
        view1 .= relatedView.widthAnchor ./ 2
        view1 .= relatedView.widthAnchor ./ 2
        view1 .= relatedView.widthAnchor ./ 2
        view1 .= relatedView.widthAnchor ./ 2
    }

    // MARK: Equal Prioritized
    func compileView1WidthEqualToWidthAnchorWithPriority() {
        view1.width .= relatedView.widthAnchor ~ .low
        view1.width .= relatedView.widthAnchor ~ .low
        view1.width .= relatedView.widthAnchor ~ .low
        view1.width .= relatedView.widthAnchor ~ .low
        view1.width .= relatedView.widthAnchor ~ .low
        view1.width .= relatedView.widthAnchor ~ .low
        view1.width .= relatedView.widthAnchor ~ .low
        view1.width .= relatedView.widthAnchor ~ .low
        view1.width .= relatedView.widthAnchor ~ .low
        view1.width .= relatedView.widthAnchor ~ .low
        view1.width .= relatedView.widthAnchor ~ .low
        view1.width .= relatedView.widthAnchor ~ .low
        view1.width .= relatedView.widthAnchor ~ .low
        view1.width .= relatedView.widthAnchor ~ .low
        view1.width .= relatedView.widthAnchor ~ .low
        view1.width .= relatedView.widthAnchor ~ .low
        view1.width .= relatedView.widthAnchor ~ .low
        view1.width .= relatedView.widthAnchor ~ .low
        view1.width .= relatedView.widthAnchor ~ .low
        view1.width .= relatedView.widthAnchor ~ .low
    }

    func impliedcompileView1WidthEqualToWidthAnchorWithPriority() {
        view1 .= relatedView.widthAnchor ~ .low
        view1 .= relatedView.widthAnchor ~ .low
        view1 .= relatedView.widthAnchor ~ .low
        view1 .= relatedView.widthAnchor ~ .low
        view1 .= relatedView.widthAnchor ~ .low
        view1 .= relatedView.widthAnchor ~ .low
        view1 .= relatedView.widthAnchor ~ .low
        view1 .= relatedView.widthAnchor ~ .low
        view1 .= relatedView.widthAnchor ~ .low
        view1 .= relatedView.widthAnchor ~ .low
        view1 .= relatedView.widthAnchor ~ .low
        view1 .= relatedView.widthAnchor ~ .low
        view1 .= relatedView.widthAnchor ~ .low
        view1 .= relatedView.widthAnchor ~ .low
        view1 .= relatedView.widthAnchor ~ .low
        view1 .= relatedView.widthAnchor ~ .low
        view1 .= relatedView.widthAnchor ~ .low
        view1 .= relatedView.widthAnchor ~ .low
        view1 .= relatedView.widthAnchor ~ .low
        view1 .= relatedView.widthAnchor ~ .low
    }

    func compileView1WidthEqualToWidthAnchorWithPriorityLiteral() {
        view1.width .= relatedView.widthAnchor ~ 300
        view1.width .= relatedView.widthAnchor ~ 300
        view1.width .= relatedView.widthAnchor ~ 300
        view1.width .= relatedView.widthAnchor ~ 300
        view1.width .= relatedView.widthAnchor ~ 300
        view1.width .= relatedView.widthAnchor ~ 300
        view1.width .= relatedView.widthAnchor ~ 300
        view1.width .= relatedView.widthAnchor ~ 300
        view1.width .= relatedView.widthAnchor ~ 300
        view1.width .= relatedView.widthAnchor ~ 300
        view1.width .= relatedView.widthAnchor ~ 300
        view1.width .= relatedView.widthAnchor ~ 300
        view1.width .= relatedView.widthAnchor ~ 300
        view1.width .= relatedView.widthAnchor ~ 300
        view1.width .= relatedView.widthAnchor ~ 300
        view1.width .= relatedView.widthAnchor ~ 300
        view1.width .= relatedView.widthAnchor ~ 300
        view1.width .= relatedView.widthAnchor ~ 300
        view1.width .= relatedView.widthAnchor ~ 300
        view1.width .= relatedView.widthAnchor ~ 300
    }

    func impliedcompileView1WidthEqualToWidthAnchorWithPriorityLiteral() {
        view1 .= relatedView.widthAnchor ~ 300
        view1 .= relatedView.widthAnchor ~ 300
        view1 .= relatedView.widthAnchor ~ 300
        view1 .= relatedView.widthAnchor ~ 300
        view1 .= relatedView.widthAnchor ~ 300
        view1 .= relatedView.widthAnchor ~ 300
        view1 .= relatedView.widthAnchor ~ 300
        view1 .= relatedView.widthAnchor ~ 300
        view1 .= relatedView.widthAnchor ~ 300
        view1 .= relatedView.widthAnchor ~ 300
        view1 .= relatedView.widthAnchor ~ 300
        view1 .= relatedView.widthAnchor ~ 300
        view1 .= relatedView.widthAnchor ~ 300
        view1 .= relatedView.widthAnchor ~ 300
        view1 .= relatedView.widthAnchor ~ 300
        view1 .= relatedView.widthAnchor ~ 300
        view1 .= relatedView.widthAnchor ~ 300
        view1 .= relatedView.widthAnchor ~ 300
        view1 .= relatedView.widthAnchor ~ 300
        view1 .= relatedView.widthAnchor ~ 300
    }

    func compileView1WidthEqualToWidthAnchorWithPriorityArithmetic() {
        view1.width .= relatedView.widthAnchor ~ .high .- 1
        view1.width .= relatedView.widthAnchor ~ .high .- 1
        view1.width .= relatedView.widthAnchor ~ .high .- 1
        view1.width .= relatedView.widthAnchor ~ .high .- 1
        view1.width .= relatedView.widthAnchor ~ .high .- 1
        view1.width .= relatedView.widthAnchor ~ .high .- 1
        view1.width .= relatedView.widthAnchor ~ .high .- 1
        view1.width .= relatedView.widthAnchor ~ .high .- 1
        view1.width .= relatedView.widthAnchor ~ .high .- 1
        view1.width .= relatedView.widthAnchor ~ .high .- 1
        view1.width .= relatedView.widthAnchor ~ .high .- 1
        view1.width .= relatedView.widthAnchor ~ .high .- 1
        view1.width .= relatedView.widthAnchor ~ .high .- 1
        view1.width .= relatedView.widthAnchor ~ .high .- 1
        view1.width .= relatedView.widthAnchor ~ .high .- 1
        view1.width .= relatedView.widthAnchor ~ .high .- 1
        view1.width .= relatedView.widthAnchor ~ .high .- 1
        view1.width .= relatedView.widthAnchor ~ .high .- 1
        view1.width .= relatedView.widthAnchor ~ .high .- 1
        view1.width .= relatedView.widthAnchor ~ .high .- 1
    }

    func impliedcompileView1WidthEqualToWidthAnchorWithPriorityArithmetic() {
        view1 .= relatedView.widthAnchor ~ .high .- 1
        view1 .= relatedView.widthAnchor ~ .high .- 1
        view1 .= relatedView.widthAnchor ~ .high .- 1
        view1 .= relatedView.widthAnchor ~ .high .- 1
        view1 .= relatedView.widthAnchor ~ .high .- 1
        view1 .= relatedView.widthAnchor ~ .high .- 1
        view1 .= relatedView.widthAnchor ~ .high .- 1
        view1 .= relatedView.widthAnchor ~ .high .- 1
        view1 .= relatedView.widthAnchor ~ .high .- 1
        view1 .= relatedView.widthAnchor ~ .high .- 1
        view1 .= relatedView.widthAnchor ~ .high .- 1
        view1 .= relatedView.widthAnchor ~ .high .- 1
        view1 .= relatedView.widthAnchor ~ .high .- 1
        view1 .= relatedView.widthAnchor ~ .high .- 1
        view1 .= relatedView.widthAnchor ~ .high .- 1
        view1 .= relatedView.widthAnchor ~ .high .- 1
        view1 .= relatedView.widthAnchor ~ .high .- 1
        view1 .= relatedView.widthAnchor ~ .high .- 1
        view1 .= relatedView.widthAnchor ~ .high .- 1
        view1 .= relatedView.widthAnchor ~ .high .- 1
    }

    // MARK: Equal with constant .+ multiplier

    func compileView1WidthEqualToWidthAnchorPlusConstantMultiplyingConstant() {
        view1.width .= (relatedView.widthAnchor .+ 10) .* 3
        view1.width .= (relatedView.widthAnchor .+ 10) .* 3
        view1.width .= (relatedView.widthAnchor .+ 10) .* 3
        view1.width .= (relatedView.widthAnchor .+ 10) .* 3
        view1.width .= (relatedView.widthAnchor .+ 10) .* 3
        view1.width .= (relatedView.widthAnchor .+ 10) .* 3
        view1.width .= (relatedView.widthAnchor .+ 10) .* 3
        view1.width .= (relatedView.widthAnchor .+ 10) .* 3
        view1.width .= (relatedView.widthAnchor .+ 10) .* 3
        view1.width .= (relatedView.widthAnchor .+ 10) .* 3
        view1.width .= (relatedView.widthAnchor .+ 10) .* 3
        view1.width .= (relatedView.widthAnchor .+ 10) .* 3
        view1.width .= (relatedView.widthAnchor .+ 10) .* 3
        view1.width .= (relatedView.widthAnchor .+ 10) .* 3
        view1.width .= (relatedView.widthAnchor .+ 10) .* 3
        view1.width .= (relatedView.widthAnchor .+ 10) .* 3
        view1.width .= (relatedView.widthAnchor .+ 10) .* 3
        view1.width .= (relatedView.widthAnchor .+ 10) .* 3
        view1.width .= (relatedView.widthAnchor .+ 10) .* 3
        view1.width .= (relatedView.widthAnchor .+ 10) .* 3
    }

    func impliedcompileView1WidthEqualToWidthAnchorPlusConstantMultiplyingConstant() {
        view1 .= (relatedView.widthAnchor .+ 10) .* 3
        view1 .= (relatedView.widthAnchor .+ 10) .* 3
        view1 .= (relatedView.widthAnchor .+ 10) .* 3
        view1 .= (relatedView.widthAnchor .+ 10) .* 3
        view1 .= (relatedView.widthAnchor .+ 10) .* 3
        view1 .= (relatedView.widthAnchor .+ 10) .* 3
        view1 .= (relatedView.widthAnchor .+ 10) .* 3
        view1 .= (relatedView.widthAnchor .+ 10) .* 3
        view1 .= (relatedView.widthAnchor .+ 10) .* 3
        view1 .= (relatedView.widthAnchor .+ 10) .* 3
        view1 .= (relatedView.widthAnchor .+ 10) .* 3
        view1 .= (relatedView.widthAnchor .+ 10) .* 3
        view1 .= (relatedView.widthAnchor .+ 10) .* 3
        view1 .= (relatedView.widthAnchor .+ 10) .* 3
        view1 .= (relatedView.widthAnchor .+ 10) .* 3
        view1 .= (relatedView.widthAnchor .+ 10) .* 3
        view1 .= (relatedView.widthAnchor .+ 10) .* 3
        view1 .= (relatedView.widthAnchor .+ 10) .* 3
        view1 .= (relatedView.widthAnchor .+ 10) .* 3
        view1 .= (relatedView.widthAnchor .+ 10) .* 3
    }

    func compileView1WidthEqualToWidthAnchorPlusConstantMultipliedByConstant() {
        view1.width .= 3 .* (relatedView.widthAnchor .+ 10)
        view1.width .= 3 .* (relatedView.widthAnchor .+ 10)
        view1.width .= 3 .* (relatedView.widthAnchor .+ 10)
        view1.width .= 3 .* (relatedView.widthAnchor .+ 10)
        view1.width .= 3 .* (relatedView.widthAnchor .+ 10)
        view1.width .= 3 .* (relatedView.widthAnchor .+ 10)
        view1.width .= 3 .* (relatedView.widthAnchor .+ 10)
        view1.width .= 3 .* (relatedView.widthAnchor .+ 10)
        view1.width .= 3 .* (relatedView.widthAnchor .+ 10)
        view1.width .= 3 .* (relatedView.widthAnchor .+ 10)
        view1.width .= 3 .* (relatedView.widthAnchor .+ 10)
        view1.width .= 3 .* (relatedView.widthAnchor .+ 10)
        view1.width .= 3 .* (relatedView.widthAnchor .+ 10)
        view1.width .= 3 .* (relatedView.widthAnchor .+ 10)
        view1.width .= 3 .* (relatedView.widthAnchor .+ 10)
        view1.width .= 3 .* (relatedView.widthAnchor .+ 10)
        view1.width .= 3 .* (relatedView.widthAnchor .+ 10)
        view1.width .= 3 .* (relatedView.widthAnchor .+ 10)
        view1.width .= 3 .* (relatedView.widthAnchor .+ 10)
        view1.width .= 3 .* (relatedView.widthAnchor .+ 10)
    }

    func impliedcompileView1WidthEqualToWidthAnchorPlusConstantMultipliedByConstant() {
        view1 .= 3 .* (relatedView.widthAnchor .+ 10)
        view1 .= 3 .* (relatedView.widthAnchor .+ 10)
        view1 .= 3 .* (relatedView.widthAnchor .+ 10)
        view1 .= 3 .* (relatedView.widthAnchor .+ 10)
        view1 .= 3 .* (relatedView.widthAnchor .+ 10)
        view1 .= 3 .* (relatedView.widthAnchor .+ 10)
        view1 .= 3 .* (relatedView.widthAnchor .+ 10)
        view1 .= 3 .* (relatedView.widthAnchor .+ 10)
        view1 .= 3 .* (relatedView.widthAnchor .+ 10)
        view1 .= 3 .* (relatedView.widthAnchor .+ 10)
        view1 .= 3 .* (relatedView.widthAnchor .+ 10)
        view1 .= 3 .* (relatedView.widthAnchor .+ 10)
        view1 .= 3 .* (relatedView.widthAnchor .+ 10)
        view1 .= 3 .* (relatedView.widthAnchor .+ 10)
        view1 .= 3 .* (relatedView.widthAnchor .+ 10)
        view1 .= 3 .* (relatedView.widthAnchor .+ 10)
        view1 .= 3 .* (relatedView.widthAnchor .+ 10)
        view1 .= 3 .* (relatedView.widthAnchor .+ 10)
        view1 .= 3 .* (relatedView.widthAnchor .+ 10)
        view1 .= 3 .* (relatedView.widthAnchor .+ 10)
    }

    func compileView1WidthEqualToWidthAnchorMultipliedByConstantPlusConstant() {
        view1.width .= 3 .* relatedView.widthAnchor .+ 10
        view1.width .= 3 .* relatedView.widthAnchor .+ 10
        view1.width .= 3 .* relatedView.widthAnchor .+ 10
        view1.width .= 3 .* relatedView.widthAnchor .+ 10
        view1.width .= 3 .* relatedView.widthAnchor .+ 10
        view1.width .= 3 .* relatedView.widthAnchor .+ 10
        view1.width .= 3 .* relatedView.widthAnchor .+ 10
        view1.width .= 3 .* relatedView.widthAnchor .+ 10
        view1.width .= 3 .* relatedView.widthAnchor .+ 10
        view1.width .= 3 .* relatedView.widthAnchor .+ 10
        view1.width .= 3 .* relatedView.widthAnchor .+ 10
        view1.width .= 3 .* relatedView.widthAnchor .+ 10
        view1.width .= 3 .* relatedView.widthAnchor .+ 10
        view1.width .= 3 .* relatedView.widthAnchor .+ 10
        view1.width .= 3 .* relatedView.widthAnchor .+ 10
        view1.width .= 3 .* relatedView.widthAnchor .+ 10
        view1.width .= 3 .* relatedView.widthAnchor .+ 10
        view1.width .= 3 .* relatedView.widthAnchor .+ 10
        view1.width .= 3 .* relatedView.widthAnchor .+ 10
        view1.width .= 3 .* relatedView.widthAnchor .+ 10
    }

    func impliedcompileView1WidthEqualToWidthAnchorMultipliedByConstantPlusConstant() {
        view1 .= 3 .* relatedView.widthAnchor .+ 10
        view1 .= 3 .* relatedView.widthAnchor .+ 10
        view1 .= 3 .* relatedView.widthAnchor .+ 10
        view1 .= 3 .* relatedView.widthAnchor .+ 10
        view1 .= 3 .* relatedView.widthAnchor .+ 10
        view1 .= 3 .* relatedView.widthAnchor .+ 10
        view1 .= 3 .* relatedView.widthAnchor .+ 10
        view1 .= 3 .* relatedView.widthAnchor .+ 10
        view1 .= 3 .* relatedView.widthAnchor .+ 10
        view1 .= 3 .* relatedView.widthAnchor .+ 10
        view1 .= 3 .* relatedView.widthAnchor .+ 10
        view1 .= 3 .* relatedView.widthAnchor .+ 10
        view1 .= 3 .* relatedView.widthAnchor .+ 10
        view1 .= 3 .* relatedView.widthAnchor .+ 10
        view1 .= 3 .* relatedView.widthAnchor .+ 10
        view1 .= 3 .* relatedView.widthAnchor .+ 10
        view1 .= 3 .* relatedView.widthAnchor .+ 10
        view1 .= 3 .* relatedView.widthAnchor .+ 10
        view1 .= 3 .* relatedView.widthAnchor .+ 10
        view1 .= 3 .* relatedView.widthAnchor .+ 10
    }

    func compileView1WidthEqualToWidthAnchorPlusConstantDividedByConstant() {
        view1.width .= (relatedView.widthAnchor .+ 10) ./ 2
        view1.width .= (relatedView.widthAnchor .+ 10) ./ 2
        view1.width .= (relatedView.widthAnchor .+ 10) ./ 2
        view1.width .= (relatedView.widthAnchor .+ 10) ./ 2
        view1.width .= (relatedView.widthAnchor .+ 10) ./ 2
        view1.width .= (relatedView.widthAnchor .+ 10) ./ 2
        view1.width .= (relatedView.widthAnchor .+ 10) ./ 2
        view1.width .= (relatedView.widthAnchor .+ 10) ./ 2
        view1.width .= (relatedView.widthAnchor .+ 10) ./ 2
        view1.width .= (relatedView.widthAnchor .+ 10) ./ 2
        view1.width .= (relatedView.widthAnchor .+ 10) ./ 2
        view1.width .= (relatedView.widthAnchor .+ 10) ./ 2
        view1.width .= (relatedView.widthAnchor .+ 10) ./ 2
        view1.width .= (relatedView.widthAnchor .+ 10) ./ 2
        view1.width .= (relatedView.widthAnchor .+ 10) ./ 2
        view1.width .= (relatedView.widthAnchor .+ 10) ./ 2
        view1.width .= (relatedView.widthAnchor .+ 10) ./ 2
        view1.width .= (relatedView.widthAnchor .+ 10) ./ 2
        view1.width .= (relatedView.widthAnchor .+ 10) ./ 2
        view1.width .= (relatedView.widthAnchor .+ 10) ./ 2
    }

    func impliedcompileView1WidthEqualToWidthAnchorPlusConstantDividedByConstant() {
        view1 .= (relatedView.widthAnchor .+ 10) ./ 2
        view1 .= (relatedView.widthAnchor .+ 10) ./ 2
        view1 .= (relatedView.widthAnchor .+ 10) ./ 2
        view1 .= (relatedView.widthAnchor .+ 10) ./ 2
        view1 .= (relatedView.widthAnchor .+ 10) ./ 2
        view1 .= (relatedView.widthAnchor .+ 10) ./ 2
        view1 .= (relatedView.widthAnchor .+ 10) ./ 2
        view1 .= (relatedView.widthAnchor .+ 10) ./ 2
        view1 .= (relatedView.widthAnchor .+ 10) ./ 2
        view1 .= (relatedView.widthAnchor .+ 10) ./ 2
        view1 .= (relatedView.widthAnchor .+ 10) ./ 2
        view1 .= (relatedView.widthAnchor .+ 10) ./ 2
        view1 .= (relatedView.widthAnchor .+ 10) ./ 2
        view1 .= (relatedView.widthAnchor .+ 10) ./ 2
        view1 .= (relatedView.widthAnchor .+ 10) ./ 2
        view1 .= (relatedView.widthAnchor .+ 10) ./ 2
        view1 .= (relatedView.widthAnchor .+ 10) ./ 2
        view1 .= (relatedView.widthAnchor .+ 10) ./ 2
        view1 .= (relatedView.widthAnchor .+ 10) ./ 2
        view1 .= (relatedView.widthAnchor .+ 10) ./ 2
    }

// MARK: Equal with constant .+ multiplier and priority

    func compileView1WidthEqualToWidthAnchorPlusConstantMultiplyingConstantWithPriority() {
        view1.width .= (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1.width .= (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1.width .= (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1.width .= (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1.width .= (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1.width .= (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1.width .= (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1.width .= (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1.width .= (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1.width .= (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1.width .= (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1.width .= (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1.width .= (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1.width .= (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1.width .= (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1.width .= (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1.width .= (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1.width .= (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1.width .= (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1.width .= (relatedView.widthAnchor .+ 10) .* 3 ~ .low
    }

    func impliedcompileView1WidthEqualToWidthAnchorPlusConstantMultiplyingConstantWithPriority() {
        view1 .= (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1 .= (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1 .= (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1 .= (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1 .= (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1 .= (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1 .= (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1 .= (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1 .= (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1 .= (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1 .= (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1 .= (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1 .= (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1 .= (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1 .= (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1 .= (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1 .= (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1 .= (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1 .= (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1 .= (relatedView.widthAnchor .+ 10) .* 3 ~ .low
    }

    func compileView1WidthEqualToWidthAnchorPlusConstantMultipliedByConstantWithPriority() {
        view1.width .= 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1.width .= 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1.width .= 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1.width .= 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1.width .= 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1.width .= 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1.width .= 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1.width .= 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1.width .= 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1.width .= 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1.width .= 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1.width .= 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1.width .= 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1.width .= 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1.width .= 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1.width .= 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1.width .= 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1.width .= 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1.width .= 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1.width .= 3 .* (relatedView.widthAnchor .+ 10) ~ .low
    }

    func impliedcompileView1WidthEqualToWidthAnchorPlusConstantMultipliedByConstantWithPriority() {
        view1 .= 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1 .= 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1 .= 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1 .= 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1 .= 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1 .= 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1 .= 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1 .= 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1 .= 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1 .= 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1 .= 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1 .= 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1 .= 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1 .= 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1 .= 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1 .= 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1 .= 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1 .= 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1 .= 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1 .= 3 .* (relatedView.widthAnchor .+ 10) ~ .low
    }

    func compileView1WidthEqualToWidthAnchorMultipliedByConstantPlusConstantWithPriority() {
        view1.width .= 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1.width .= 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1.width .= 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1.width .= 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1.width .= 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1.width .= 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1.width .= 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1.width .= 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1.width .= 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1.width .= 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1.width .= 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1.width .= 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1.width .= 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1.width .= 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1.width .= 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1.width .= 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1.width .= 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1.width .= 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1.width .= 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1.width .= 3 .* relatedView.widthAnchor .+ 10 ~ .low
    }

    func impliedcompileView1WidthEqualToWidthAnchorMultipliedByConstantPlusConstantWithPriority() {
        view1 .= 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1 .= 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1 .= 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1 .= 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1 .= 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1 .= 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1 .= 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1 .= 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1 .= 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1 .= 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1 .= 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1 .= 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1 .= 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1 .= 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1 .= 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1 .= 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1 .= 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1 .= 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1 .= 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1 .= 3 .* relatedView.widthAnchor .+ 10 ~ .low
    }

    func compileView1WidthEqualToWidthAnchorPlusConstantDividedByConstantWithPriority() {
        view1.width .= (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1.width .= (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1.width .= (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1.width .= (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1.width .= (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1.width .= (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1.width .= (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1.width .= (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1.width .= (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1.width .= (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1.width .= (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1.width .= (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1.width .= (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1.width .= (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1.width .= (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1.width .= (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1.width .= (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1.width .= (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1.width .= (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1.width .= (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
    }

    func impliedcompileView1WidthEqualToWidthAnchorPlusConstantDividedByConstantWithPriority() {
        view1 .= (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1 .= (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1 .= (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1 .= (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1 .= (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1 .= (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1 .= (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1 .= (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1 .= (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1 .= (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1 .= (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1 .= (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1 .= (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1 .= (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1 .= (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1 .= (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1 .= (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1 .= (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1 .= (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1 .= (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func compileView1WidthEqualToWidthAnchorPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        view1.width .= (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1.width .= (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1.width .= (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1.width .= (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1.width .= (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1.width .= (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1.width .= (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1.width .= (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1.width .= (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1.width .= (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1.width .= (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1.width .= (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1.width .= (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1.width .= (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1.width .= (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1.width .= (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1.width .= (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1.width .= (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1.width .= (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1.width .= (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
    }

    func impliedcompileView1WidthEqualToWidthAnchorPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        view1 .= (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1 .= (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1 .= (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1 .= (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1 .= (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1 .= (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1 .= (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1 .= (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1 .= (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1 .= (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1 .= (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1 .= (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1 .= (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1 .= (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1 .= (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1 .= (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1 .= (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1 .= (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1 .= (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1 .= (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
    }

    func compileView1WidthEqualToWidthAnchorPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        view1.width .= 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1.width .= 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1.width .= 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1.width .= 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1.width .= 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1.width .= 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1.width .= 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1.width .= 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1.width .= 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1.width .= 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1.width .= 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1.width .= 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1.width .= 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1.width .= 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1.width .= 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1.width .= 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1.width .= 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1.width .= 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1.width .= 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1.width .= 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
    }

    func impliedcompileView1WidthEqualToWidthAnchorPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        view1 .= 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1 .= 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1 .= 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1 .= 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1 .= 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1 .= 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1 .= 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1 .= 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1 .= 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1 .= 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1 .= 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1 .= 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1 .= 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1 .= 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1 .= 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1 .= 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1 .= 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1 .= 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1 .= 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1 .= 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
    }

    func compileView1WidthEqualToWidthAnchorMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        view1.width .= 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1.width .= 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1.width .= 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1.width .= 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1.width .= 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1.width .= 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1.width .= 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1.width .= 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1.width .= 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1.width .= 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1.width .= 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1.width .= 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1.width .= 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1.width .= 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1.width .= 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1.width .= 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1.width .= 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1.width .= 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1.width .= 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1.width .= 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
    }

    func impliedcompileView1WidthEqualToWidthAnchorMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        view1 .= 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1 .= 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1 .= 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1 .= 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1 .= 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1 .= 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1 .= 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1 .= 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1 .= 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1 .= 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1 .= 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1 .= 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1 .= 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1 .= 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1 .= 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1 .= 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1 .= 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1 .= 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1 .= 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1 .= 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
    }

    func compileView1WidthEqualToWidthAnchorPlusConstantDividedByConstantWithPriorityArithmetic() {
        view1.width .= (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1.width .= (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1.width .= (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1.width .= (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1.width .= (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1.width .= (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1.width .= (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1.width .= (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1.width .= (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1.width .= (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1.width .= (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1.width .= (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1.width .= (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1.width .= (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1.width .= (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1.width .= (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1.width .= (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1.width .= (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1.width .= (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1.width .= (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
    }

    func impliedcompileView1WidthEqualToWidthAnchorPlusConstantDividedByConstantWithPriorityArithmetic() {
        view1 .= (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1 .= (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1 .= (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1 .= (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1 .= (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1 .= (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1 .= (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1 .= (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1 .= (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1 .= (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1 .= (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1 .= (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1 .= (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1 .= (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1 .= (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1 .= (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1 .= (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1 .= (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1 .= (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1 .= (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
    }

    // MARK: view1WidthAnchor <=> relatedViewWidth

    // MARK: LessThanOrEqual

    func compileView1WidthAnchorLessThanOrEqualToWidth() {
        view1.widthAnchor ≤ relatedView.width
        view1.widthAnchor ≤ relatedView.width
        view1.widthAnchor ≤ relatedView.width
        view1.widthAnchor ≤ relatedView.width
        view1.widthAnchor ≤ relatedView.width
        view1.widthAnchor ≤ relatedView.width
        view1.widthAnchor ≤ relatedView.width
        view1.widthAnchor ≤ relatedView.width
        view1.widthAnchor ≤ relatedView.width
        view1.widthAnchor ≤ relatedView.width
        view1.widthAnchor ≤ relatedView.width
        view1.widthAnchor ≤ relatedView.width
        view1.widthAnchor ≤ relatedView.width
        view1.widthAnchor ≤ relatedView.width
        view1.widthAnchor ≤ relatedView.width
        view1.widthAnchor ≤ relatedView.width
        view1.widthAnchor ≤ relatedView.width
        view1.widthAnchor ≤ relatedView.width
        view1.widthAnchor ≤ relatedView.width
        view1.widthAnchor ≤ relatedView.width
    }

    func impliedcompileView1WidthAnchorLessThanOrEqualToWidth() {
        view1 ≤ relatedView.width
        view1 ≤ relatedView.width
        view1 ≤ relatedView.width
        view1 ≤ relatedView.width
        view1 ≤ relatedView.width
        view1 ≤ relatedView.width
        view1 ≤ relatedView.width
        view1 ≤ relatedView.width
        view1 ≤ relatedView.width
        view1 ≤ relatedView.width
        view1 ≤ relatedView.width
        view1 ≤ relatedView.width
        view1 ≤ relatedView.width
        view1 ≤ relatedView.width
        view1 ≤ relatedView.width
        view1 ≤ relatedView.width
        view1 ≤ relatedView.width
        view1 ≤ relatedView.width
        view1 ≤ relatedView.width
        view1 ≤ relatedView.width
    }

    // MARK: LessThanOrEqual with constant
    func compileView1WidthAnchorLessThanOrEqualToWidthPlusConstant() {
        view1.widthAnchor ≤ relatedView.width .+ 10
        view1.widthAnchor ≤ relatedView.width .+ 10
        view1.widthAnchor ≤ relatedView.width .+ 10
        view1.widthAnchor ≤ relatedView.width .+ 10
        view1.widthAnchor ≤ relatedView.width .+ 10
        view1.widthAnchor ≤ relatedView.width .+ 10
        view1.widthAnchor ≤ relatedView.width .+ 10
        view1.widthAnchor ≤ relatedView.width .+ 10
        view1.widthAnchor ≤ relatedView.width .+ 10
        view1.widthAnchor ≤ relatedView.width .+ 10
        view1.widthAnchor ≤ relatedView.width .+ 10
        view1.widthAnchor ≤ relatedView.width .+ 10
        view1.widthAnchor ≤ relatedView.width .+ 10
        view1.widthAnchor ≤ relatedView.width .+ 10
        view1.widthAnchor ≤ relatedView.width .+ 10
        view1.widthAnchor ≤ relatedView.width .+ 10
        view1.widthAnchor ≤ relatedView.width .+ 10
        view1.widthAnchor ≤ relatedView.width .+ 10
        view1.widthAnchor ≤ relatedView.width .+ 10
        view1.widthAnchor ≤ relatedView.width .+ 10
    }

    func impliedcompileView1WidthAnchorLessThanOrEqualToWidthPlusConstant() {
        view1 ≤ relatedView.width .+ 10
        view1 ≤ relatedView.width .+ 10
        view1 ≤ relatedView.width .+ 10
        view1 ≤ relatedView.width .+ 10
        view1 ≤ relatedView.width .+ 10
        view1 ≤ relatedView.width .+ 10
        view1 ≤ relatedView.width .+ 10
        view1 ≤ relatedView.width .+ 10
        view1 ≤ relatedView.width .+ 10
        view1 ≤ relatedView.width .+ 10
        view1 ≤ relatedView.width .+ 10
        view1 ≤ relatedView.width .+ 10
        view1 ≤ relatedView.width .+ 10
        view1 ≤ relatedView.width .+ 10
        view1 ≤ relatedView.width .+ 10
        view1 ≤ relatedView.width .+ 10
        view1 ≤ relatedView.width .+ 10
        view1 ≤ relatedView.width .+ 10
        view1 ≤ relatedView.width .+ 10
        view1 ≤ relatedView.width .+ 10
    }

    func compileView1WidthAnchorLessThanOrEqualToWidthMinusConstant() {
        view1.widthAnchor ≤ relatedView.width .- 10
        view1.widthAnchor ≤ relatedView.width .- 10
        view1.widthAnchor ≤ relatedView.width .- 10
        view1.widthAnchor ≤ relatedView.width .- 10
        view1.widthAnchor ≤ relatedView.width .- 10
        view1.widthAnchor ≤ relatedView.width .- 10
        view1.widthAnchor ≤ relatedView.width .- 10
        view1.widthAnchor ≤ relatedView.width .- 10
        view1.widthAnchor ≤ relatedView.width .- 10
        view1.widthAnchor ≤ relatedView.width .- 10
        view1.widthAnchor ≤ relatedView.width .- 10
        view1.widthAnchor ≤ relatedView.width .- 10
        view1.widthAnchor ≤ relatedView.width .- 10
        view1.widthAnchor ≤ relatedView.width .- 10
        view1.widthAnchor ≤ relatedView.width .- 10
        view1.widthAnchor ≤ relatedView.width .- 10
        view1.widthAnchor ≤ relatedView.width .- 10
        view1.widthAnchor ≤ relatedView.width .- 10
        view1.widthAnchor ≤ relatedView.width .- 10
        view1.widthAnchor ≤ relatedView.width .- 10
    }

    func impliedcompileView1WidthAnchorLessThanOrEqualToWidthMinusConstant() {
        view1 ≤ relatedView.width .- 10
        view1 ≤ relatedView.width .- 10
        view1 ≤ relatedView.width .- 10
        view1 ≤ relatedView.width .- 10
        view1 ≤ relatedView.width .- 10
        view1 ≤ relatedView.width .- 10
        view1 ≤ relatedView.width .- 10
        view1 ≤ relatedView.width .- 10
        view1 ≤ relatedView.width .- 10
        view1 ≤ relatedView.width .- 10
        view1 ≤ relatedView.width .- 10
        view1 ≤ relatedView.width .- 10
        view1 ≤ relatedView.width .- 10
        view1 ≤ relatedView.width .- 10
        view1 ≤ relatedView.width .- 10
        view1 ≤ relatedView.width .- 10
        view1 ≤ relatedView.width .- 10
        view1 ≤ relatedView.width .- 10
        view1 ≤ relatedView.width .- 10
        view1 ≤ relatedView.width .- 10
    }

    // MARK: LessThanOrEqual with multiplier
    func compileView1WidthAnchorLessThanOrEqualToWidthMultiplyingConstant() {
        view1.widthAnchor ≤ relatedView.width .* 3
        view1.widthAnchor ≤ relatedView.width .* 3
        view1.widthAnchor ≤ relatedView.width .* 3
        view1.widthAnchor ≤ relatedView.width .* 3
        view1.widthAnchor ≤ relatedView.width .* 3
        view1.widthAnchor ≤ relatedView.width .* 3
        view1.widthAnchor ≤ relatedView.width .* 3
        view1.widthAnchor ≤ relatedView.width .* 3
        view1.widthAnchor ≤ relatedView.width .* 3
        view1.widthAnchor ≤ relatedView.width .* 3
        view1.widthAnchor ≤ relatedView.width .* 3
        view1.widthAnchor ≤ relatedView.width .* 3
        view1.widthAnchor ≤ relatedView.width .* 3
        view1.widthAnchor ≤ relatedView.width .* 3
        view1.widthAnchor ≤ relatedView.width .* 3
        view1.widthAnchor ≤ relatedView.width .* 3
        view1.widthAnchor ≤ relatedView.width .* 3
        view1.widthAnchor ≤ relatedView.width .* 3
        view1.widthAnchor ≤ relatedView.width .* 3
        view1.widthAnchor ≤ relatedView.width .* 3
    }

    func impliedcompileView1WidthAnchorLessThanOrEqualToWidthMultiplyingConstant() {
        view1 ≤ relatedView.width .* 3
        view1 ≤ relatedView.width .* 3
        view1 ≤ relatedView.width .* 3
        view1 ≤ relatedView.width .* 3
        view1 ≤ relatedView.width .* 3
        view1 ≤ relatedView.width .* 3
        view1 ≤ relatedView.width .* 3
        view1 ≤ relatedView.width .* 3
        view1 ≤ relatedView.width .* 3
        view1 ≤ relatedView.width .* 3
        view1 ≤ relatedView.width .* 3
        view1 ≤ relatedView.width .* 3
        view1 ≤ relatedView.width .* 3
        view1 ≤ relatedView.width .* 3
        view1 ≤ relatedView.width .* 3
        view1 ≤ relatedView.width .* 3
        view1 ≤ relatedView.width .* 3
        view1 ≤ relatedView.width .* 3
        view1 ≤ relatedView.width .* 3
        view1 ≤ relatedView.width .* 3
    }

    func compileView1WidthAnchorLessThanOrEqualToWidthMultipliedByConstant() {
        view1.widthAnchor ≤ 3 .* relatedView.width
        view1.widthAnchor ≤ 3 .* relatedView.width
        view1.widthAnchor ≤ 3 .* relatedView.width
        view1.widthAnchor ≤ 3 .* relatedView.width
        view1.widthAnchor ≤ 3 .* relatedView.width
        view1.widthAnchor ≤ 3 .* relatedView.width
        view1.widthAnchor ≤ 3 .* relatedView.width
        view1.widthAnchor ≤ 3 .* relatedView.width
        view1.widthAnchor ≤ 3 .* relatedView.width
        view1.widthAnchor ≤ 3 .* relatedView.width
        view1.widthAnchor ≤ 3 .* relatedView.width
        view1.widthAnchor ≤ 3 .* relatedView.width
        view1.widthAnchor ≤ 3 .* relatedView.width
        view1.widthAnchor ≤ 3 .* relatedView.width
        view1.widthAnchor ≤ 3 .* relatedView.width
        view1.widthAnchor ≤ 3 .* relatedView.width
        view1.widthAnchor ≤ 3 .* relatedView.width
        view1.widthAnchor ≤ 3 .* relatedView.width
        view1.widthAnchor ≤ 3 .* relatedView.width
        view1.widthAnchor ≤ 3 .* relatedView.width
    }

    func impliedcompileView1WidthAnchorLessThanOrEqualToWidthMultipliedByConstant() {
        view1 ≤ 3 .* relatedView.width
        view1 ≤ 3 .* relatedView.width
        view1 ≤ 3 .* relatedView.width
        view1 ≤ 3 .* relatedView.width
        view1 ≤ 3 .* relatedView.width
        view1 ≤ 3 .* relatedView.width
        view1 ≤ 3 .* relatedView.width
        view1 ≤ 3 .* relatedView.width
        view1 ≤ 3 .* relatedView.width
        view1 ≤ 3 .* relatedView.width
        view1 ≤ 3 .* relatedView.width
        view1 ≤ 3 .* relatedView.width
        view1 ≤ 3 .* relatedView.width
        view1 ≤ 3 .* relatedView.width
        view1 ≤ 3 .* relatedView.width
        view1 ≤ 3 .* relatedView.width
        view1 ≤ 3 .* relatedView.width
        view1 ≤ 3 .* relatedView.width
        view1 ≤ 3 .* relatedView.width
        view1 ≤ 3 .* relatedView.width
    }

    func compileView1WidthAnchorLessThanOrEqualToWidthDividedByConstant() {
        view1.widthAnchor ≤ relatedView.width ./ 2
        view1.widthAnchor ≤ relatedView.width ./ 2
        view1.widthAnchor ≤ relatedView.width ./ 2
        view1.widthAnchor ≤ relatedView.width ./ 2
        view1.widthAnchor ≤ relatedView.width ./ 2
        view1.widthAnchor ≤ relatedView.width ./ 2
        view1.widthAnchor ≤ relatedView.width ./ 2
        view1.widthAnchor ≤ relatedView.width ./ 2
        view1.widthAnchor ≤ relatedView.width ./ 2
        view1.widthAnchor ≤ relatedView.width ./ 2
        view1.widthAnchor ≤ relatedView.width ./ 2
        view1.widthAnchor ≤ relatedView.width ./ 2
        view1.widthAnchor ≤ relatedView.width ./ 2
        view1.widthAnchor ≤ relatedView.width ./ 2
        view1.widthAnchor ≤ relatedView.width ./ 2
        view1.widthAnchor ≤ relatedView.width ./ 2
        view1.widthAnchor ≤ relatedView.width ./ 2
        view1.widthAnchor ≤ relatedView.width ./ 2
        view1.widthAnchor ≤ relatedView.width ./ 2
        view1.widthAnchor ≤ relatedView.width ./ 2
    }

    func impliedcompileView1WidthAnchorLessThanOrEqualToWidthDividedByConstant() {
        view1 ≤ relatedView.width ./ 2
        view1 ≤ relatedView.width ./ 2
        view1 ≤ relatedView.width ./ 2
        view1 ≤ relatedView.width ./ 2
        view1 ≤ relatedView.width ./ 2
        view1 ≤ relatedView.width ./ 2
        view1 ≤ relatedView.width ./ 2
        view1 ≤ relatedView.width ./ 2
        view1 ≤ relatedView.width ./ 2
        view1 ≤ relatedView.width ./ 2
        view1 ≤ relatedView.width ./ 2
        view1 ≤ relatedView.width ./ 2
        view1 ≤ relatedView.width ./ 2
        view1 ≤ relatedView.width ./ 2
        view1 ≤ relatedView.width ./ 2
        view1 ≤ relatedView.width ./ 2
        view1 ≤ relatedView.width ./ 2
        view1 ≤ relatedView.width ./ 2
        view1 ≤ relatedView.width ./ 2
        view1 ≤ relatedView.width ./ 2
    }

    // MARK: LessThanOrEqual Prioritized
    func compileView1WidthAnchorLessThanOrEqualToWidthWithPriority() {
        view1.widthAnchor ≤ relatedView.width ~ .low
        view1.widthAnchor ≤ relatedView.width ~ .low
        view1.widthAnchor ≤ relatedView.width ~ .low
        view1.widthAnchor ≤ relatedView.width ~ .low
        view1.widthAnchor ≤ relatedView.width ~ .low
        view1.widthAnchor ≤ relatedView.width ~ .low
        view1.widthAnchor ≤ relatedView.width ~ .low
        view1.widthAnchor ≤ relatedView.width ~ .low
        view1.widthAnchor ≤ relatedView.width ~ .low
        view1.widthAnchor ≤ relatedView.width ~ .low
        view1.widthAnchor ≤ relatedView.width ~ .low
        view1.widthAnchor ≤ relatedView.width ~ .low
        view1.widthAnchor ≤ relatedView.width ~ .low
        view1.widthAnchor ≤ relatedView.width ~ .low
        view1.widthAnchor ≤ relatedView.width ~ .low
        view1.widthAnchor ≤ relatedView.width ~ .low
        view1.widthAnchor ≤ relatedView.width ~ .low
        view1.widthAnchor ≤ relatedView.width ~ .low
        view1.widthAnchor ≤ relatedView.width ~ .low
        view1.widthAnchor ≤ relatedView.width ~ .low
    }

    func impliedcompileView1WidthAnchorLessThanOrEqualToWidthWithPriority() {
        view1 ≤ relatedView.width ~ .low
        view1 ≤ relatedView.width ~ .low
        view1 ≤ relatedView.width ~ .low
        view1 ≤ relatedView.width ~ .low
        view1 ≤ relatedView.width ~ .low
        view1 ≤ relatedView.width ~ .low
        view1 ≤ relatedView.width ~ .low
        view1 ≤ relatedView.width ~ .low
        view1 ≤ relatedView.width ~ .low
        view1 ≤ relatedView.width ~ .low
        view1 ≤ relatedView.width ~ .low
        view1 ≤ relatedView.width ~ .low
        view1 ≤ relatedView.width ~ .low
        view1 ≤ relatedView.width ~ .low
        view1 ≤ relatedView.width ~ .low
        view1 ≤ relatedView.width ~ .low
        view1 ≤ relatedView.width ~ .low
        view1 ≤ relatedView.width ~ .low
        view1 ≤ relatedView.width ~ .low
        view1 ≤ relatedView.width ~ .low
    }

    func compileView1WidthAnchorLessThanOrEqualToWidthWithPriorityLiteral() {
        view1.widthAnchor ≤ relatedView.width ~ 300
        view1.widthAnchor ≤ relatedView.width ~ 300
        view1.widthAnchor ≤ relatedView.width ~ 300
        view1.widthAnchor ≤ relatedView.width ~ 300
        view1.widthAnchor ≤ relatedView.width ~ 300
        view1.widthAnchor ≤ relatedView.width ~ 300
        view1.widthAnchor ≤ relatedView.width ~ 300
        view1.widthAnchor ≤ relatedView.width ~ 300
        view1.widthAnchor ≤ relatedView.width ~ 300
        view1.widthAnchor ≤ relatedView.width ~ 300
        view1.widthAnchor ≤ relatedView.width ~ 300
        view1.widthAnchor ≤ relatedView.width ~ 300
        view1.widthAnchor ≤ relatedView.width ~ 300
        view1.widthAnchor ≤ relatedView.width ~ 300
        view1.widthAnchor ≤ relatedView.width ~ 300
        view1.widthAnchor ≤ relatedView.width ~ 300
        view1.widthAnchor ≤ relatedView.width ~ 300
        view1.widthAnchor ≤ relatedView.width ~ 300
        view1.widthAnchor ≤ relatedView.width ~ 300
        view1.widthAnchor ≤ relatedView.width ~ 300
    }

    func impliedcompileView1WidthAnchorLessThanOrEqualToWidthWithPriorityLiteral() {
        view1 ≤ relatedView.width ~ 300
        view1 ≤ relatedView.width ~ 300
        view1 ≤ relatedView.width ~ 300
        view1 ≤ relatedView.width ~ 300
        view1 ≤ relatedView.width ~ 300
        view1 ≤ relatedView.width ~ 300
        view1 ≤ relatedView.width ~ 300
        view1 ≤ relatedView.width ~ 300
        view1 ≤ relatedView.width ~ 300
        view1 ≤ relatedView.width ~ 300
        view1 ≤ relatedView.width ~ 300
        view1 ≤ relatedView.width ~ 300
        view1 ≤ relatedView.width ~ 300
        view1 ≤ relatedView.width ~ 300
        view1 ≤ relatedView.width ~ 300
        view1 ≤ relatedView.width ~ 300
        view1 ≤ relatedView.width ~ 300
        view1 ≤ relatedView.width ~ 300
        view1 ≤ relatedView.width ~ 300
        view1 ≤ relatedView.width ~ 300
    }

    func compileView1WidthAnchorLessThanOrEqualToWidthWithPriorityArithmetic() {
        view1.widthAnchor ≤ relatedView.width ~ .high .- 1
        view1.widthAnchor ≤ relatedView.width ~ .high .- 1
        view1.widthAnchor ≤ relatedView.width ~ .high .- 1
        view1.widthAnchor ≤ relatedView.width ~ .high .- 1
        view1.widthAnchor ≤ relatedView.width ~ .high .- 1
        view1.widthAnchor ≤ relatedView.width ~ .high .- 1
        view1.widthAnchor ≤ relatedView.width ~ .high .- 1
        view1.widthAnchor ≤ relatedView.width ~ .high .- 1
        view1.widthAnchor ≤ relatedView.width ~ .high .- 1
        view1.widthAnchor ≤ relatedView.width ~ .high .- 1
        view1.widthAnchor ≤ relatedView.width ~ .high .- 1
        view1.widthAnchor ≤ relatedView.width ~ .high .- 1
        view1.widthAnchor ≤ relatedView.width ~ .high .- 1
        view1.widthAnchor ≤ relatedView.width ~ .high .- 1
        view1.widthAnchor ≤ relatedView.width ~ .high .- 1
        view1.widthAnchor ≤ relatedView.width ~ .high .- 1
        view1.widthAnchor ≤ relatedView.width ~ .high .- 1
        view1.widthAnchor ≤ relatedView.width ~ .high .- 1
        view1.widthAnchor ≤ relatedView.width ~ .high .- 1
        view1.widthAnchor ≤ relatedView.width ~ .high .- 1
    }

    func impliedcompileView1WidthAnchorLessThanOrEqualToWidthWithPriorityArithmetic() {
        view1 ≤ relatedView.width ~ .high .- 1
        view1 ≤ relatedView.width ~ .high .- 1
        view1 ≤ relatedView.width ~ .high .- 1
        view1 ≤ relatedView.width ~ .high .- 1
        view1 ≤ relatedView.width ~ .high .- 1
        view1 ≤ relatedView.width ~ .high .- 1
        view1 ≤ relatedView.width ~ .high .- 1
        view1 ≤ relatedView.width ~ .high .- 1
        view1 ≤ relatedView.width ~ .high .- 1
        view1 ≤ relatedView.width ~ .high .- 1
        view1 ≤ relatedView.width ~ .high .- 1
        view1 ≤ relatedView.width ~ .high .- 1
        view1 ≤ relatedView.width ~ .high .- 1
        view1 ≤ relatedView.width ~ .high .- 1
        view1 ≤ relatedView.width ~ .high .- 1
        view1 ≤ relatedView.width ~ .high .- 1
        view1 ≤ relatedView.width ~ .high .- 1
        view1 ≤ relatedView.width ~ .high .- 1
        view1 ≤ relatedView.width ~ .high .- 1
        view1 ≤ relatedView.width ~ .high .- 1
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func compileView1WidthAnchorLessThanOrEqualToWidthPlusConstantMultiplyingConstant() {
        view1.widthAnchor ≤ (relatedView.width .+ 10) .* 3
        view1.widthAnchor ≤ (relatedView.width .+ 10) .* 3
        view1.widthAnchor ≤ (relatedView.width .+ 10) .* 3
        view1.widthAnchor ≤ (relatedView.width .+ 10) .* 3
        view1.widthAnchor ≤ (relatedView.width .+ 10) .* 3
        view1.widthAnchor ≤ (relatedView.width .+ 10) .* 3
        view1.widthAnchor ≤ (relatedView.width .+ 10) .* 3
        view1.widthAnchor ≤ (relatedView.width .+ 10) .* 3
        view1.widthAnchor ≤ (relatedView.width .+ 10) .* 3
        view1.widthAnchor ≤ (relatedView.width .+ 10) .* 3
        view1.widthAnchor ≤ (relatedView.width .+ 10) .* 3
        view1.widthAnchor ≤ (relatedView.width .+ 10) .* 3
        view1.widthAnchor ≤ (relatedView.width .+ 10) .* 3
        view1.widthAnchor ≤ (relatedView.width .+ 10) .* 3
        view1.widthAnchor ≤ (relatedView.width .+ 10) .* 3
        view1.widthAnchor ≤ (relatedView.width .+ 10) .* 3
        view1.widthAnchor ≤ (relatedView.width .+ 10) .* 3
        view1.widthAnchor ≤ (relatedView.width .+ 10) .* 3
        view1.widthAnchor ≤ (relatedView.width .+ 10) .* 3
        view1.widthAnchor ≤ (relatedView.width .+ 10) .* 3
    }

    func impliedcompileView1WidthAnchorLessThanOrEqualToWidthPlusConstantMultiplyingConstant() {
        view1 ≤ (relatedView.width .+ 10) .* 3
        view1 ≤ (relatedView.width .+ 10) .* 3
        view1 ≤ (relatedView.width .+ 10) .* 3
        view1 ≤ (relatedView.width .+ 10) .* 3
        view1 ≤ (relatedView.width .+ 10) .* 3
        view1 ≤ (relatedView.width .+ 10) .* 3
        view1 ≤ (relatedView.width .+ 10) .* 3
        view1 ≤ (relatedView.width .+ 10) .* 3
        view1 ≤ (relatedView.width .+ 10) .* 3
        view1 ≤ (relatedView.width .+ 10) .* 3
        view1 ≤ (relatedView.width .+ 10) .* 3
        view1 ≤ (relatedView.width .+ 10) .* 3
        view1 ≤ (relatedView.width .+ 10) .* 3
        view1 ≤ (relatedView.width .+ 10) .* 3
        view1 ≤ (relatedView.width .+ 10) .* 3
        view1 ≤ (relatedView.width .+ 10) .* 3
        view1 ≤ (relatedView.width .+ 10) .* 3
        view1 ≤ (relatedView.width .+ 10) .* 3
        view1 ≤ (relatedView.width .+ 10) .* 3
        view1 ≤ (relatedView.width .+ 10) .* 3
    }

    func compileView1WidthAnchorLessThanOrEqualToWidthPlusConstantMultipliedByConstant() {
        view1.widthAnchor ≤ 3 .* (relatedView.width .+ 10)
        view1.widthAnchor ≤ 3 .* (relatedView.width .+ 10)
        view1.widthAnchor ≤ 3 .* (relatedView.width .+ 10)
        view1.widthAnchor ≤ 3 .* (relatedView.width .+ 10)
        view1.widthAnchor ≤ 3 .* (relatedView.width .+ 10)
        view1.widthAnchor ≤ 3 .* (relatedView.width .+ 10)
        view1.widthAnchor ≤ 3 .* (relatedView.width .+ 10)
        view1.widthAnchor ≤ 3 .* (relatedView.width .+ 10)
        view1.widthAnchor ≤ 3 .* (relatedView.width .+ 10)
        view1.widthAnchor ≤ 3 .* (relatedView.width .+ 10)
        view1.widthAnchor ≤ 3 .* (relatedView.width .+ 10)
        view1.widthAnchor ≤ 3 .* (relatedView.width .+ 10)
        view1.widthAnchor ≤ 3 .* (relatedView.width .+ 10)
        view1.widthAnchor ≤ 3 .* (relatedView.width .+ 10)
        view1.widthAnchor ≤ 3 .* (relatedView.width .+ 10)
        view1.widthAnchor ≤ 3 .* (relatedView.width .+ 10)
        view1.widthAnchor ≤ 3 .* (relatedView.width .+ 10)
        view1.widthAnchor ≤ 3 .* (relatedView.width .+ 10)
        view1.widthAnchor ≤ 3 .* (relatedView.width .+ 10)
        view1.widthAnchor ≤ 3 .* (relatedView.width .+ 10)
    }

    func impliedcompileView1WidthAnchorLessThanOrEqualToWidthPlusConstantMultipliedByConstant() {
        view1 ≤ 3 .* (relatedView.width .+ 10)
        view1 ≤ 3 .* (relatedView.width .+ 10)
        view1 ≤ 3 .* (relatedView.width .+ 10)
        view1 ≤ 3 .* (relatedView.width .+ 10)
        view1 ≤ 3 .* (relatedView.width .+ 10)
        view1 ≤ 3 .* (relatedView.width .+ 10)
        view1 ≤ 3 .* (relatedView.width .+ 10)
        view1 ≤ 3 .* (relatedView.width .+ 10)
        view1 ≤ 3 .* (relatedView.width .+ 10)
        view1 ≤ 3 .* (relatedView.width .+ 10)
        view1 ≤ 3 .* (relatedView.width .+ 10)
        view1 ≤ 3 .* (relatedView.width .+ 10)
        view1 ≤ 3 .* (relatedView.width .+ 10)
        view1 ≤ 3 .* (relatedView.width .+ 10)
        view1 ≤ 3 .* (relatedView.width .+ 10)
        view1 ≤ 3 .* (relatedView.width .+ 10)
        view1 ≤ 3 .* (relatedView.width .+ 10)
        view1 ≤ 3 .* (relatedView.width .+ 10)
        view1 ≤ 3 .* (relatedView.width .+ 10)
        view1 ≤ 3 .* (relatedView.width .+ 10)
    }

    func compileView1WidthAnchorLessThanOrEqualToWidthMultipliedByConstantPlusConstant() {
        view1.widthAnchor ≤ 3 .* relatedView.width .+ 10
        view1.widthAnchor ≤ 3 .* relatedView.width .+ 10
        view1.widthAnchor ≤ 3 .* relatedView.width .+ 10
        view1.widthAnchor ≤ 3 .* relatedView.width .+ 10
        view1.widthAnchor ≤ 3 .* relatedView.width .+ 10
        view1.widthAnchor ≤ 3 .* relatedView.width .+ 10
        view1.widthAnchor ≤ 3 .* relatedView.width .+ 10
        view1.widthAnchor ≤ 3 .* relatedView.width .+ 10
        view1.widthAnchor ≤ 3 .* relatedView.width .+ 10
        view1.widthAnchor ≤ 3 .* relatedView.width .+ 10
        view1.widthAnchor ≤ 3 .* relatedView.width .+ 10
        view1.widthAnchor ≤ 3 .* relatedView.width .+ 10
        view1.widthAnchor ≤ 3 .* relatedView.width .+ 10
        view1.widthAnchor ≤ 3 .* relatedView.width .+ 10
        view1.widthAnchor ≤ 3 .* relatedView.width .+ 10
        view1.widthAnchor ≤ 3 .* relatedView.width .+ 10
        view1.widthAnchor ≤ 3 .* relatedView.width .+ 10
        view1.widthAnchor ≤ 3 .* relatedView.width .+ 10
        view1.widthAnchor ≤ 3 .* relatedView.width .+ 10
        view1.widthAnchor ≤ 3 .* relatedView.width .+ 10
    }

    func impliedcompileView1WidthAnchorLessThanOrEqualToWidthMultipliedByConstantPlusConstant() {
        view1 ≤ 3 .* relatedView.width .+ 10
        view1 ≤ 3 .* relatedView.width .+ 10
        view1 ≤ 3 .* relatedView.width .+ 10
        view1 ≤ 3 .* relatedView.width .+ 10
        view1 ≤ 3 .* relatedView.width .+ 10
        view1 ≤ 3 .* relatedView.width .+ 10
        view1 ≤ 3 .* relatedView.width .+ 10
        view1 ≤ 3 .* relatedView.width .+ 10
        view1 ≤ 3 .* relatedView.width .+ 10
        view1 ≤ 3 .* relatedView.width .+ 10
        view1 ≤ 3 .* relatedView.width .+ 10
        view1 ≤ 3 .* relatedView.width .+ 10
        view1 ≤ 3 .* relatedView.width .+ 10
        view1 ≤ 3 .* relatedView.width .+ 10
        view1 ≤ 3 .* relatedView.width .+ 10
        view1 ≤ 3 .* relatedView.width .+ 10
        view1 ≤ 3 .* relatedView.width .+ 10
        view1 ≤ 3 .* relatedView.width .+ 10
        view1 ≤ 3 .* relatedView.width .+ 10
        view1 ≤ 3 .* relatedView.width .+ 10
    }

    func compileView1WidthAnchorLessThanOrEqualToWidthPlusConstantDividedByConstant() {
        view1.widthAnchor ≤ (relatedView.width .+ 10) ./ 2
        view1.widthAnchor ≤ (relatedView.width .+ 10) ./ 2
        view1.widthAnchor ≤ (relatedView.width .+ 10) ./ 2
        view1.widthAnchor ≤ (relatedView.width .+ 10) ./ 2
        view1.widthAnchor ≤ (relatedView.width .+ 10) ./ 2
        view1.widthAnchor ≤ (relatedView.width .+ 10) ./ 2
        view1.widthAnchor ≤ (relatedView.width .+ 10) ./ 2
        view1.widthAnchor ≤ (relatedView.width .+ 10) ./ 2
        view1.widthAnchor ≤ (relatedView.width .+ 10) ./ 2
        view1.widthAnchor ≤ (relatedView.width .+ 10) ./ 2
        view1.widthAnchor ≤ (relatedView.width .+ 10) ./ 2
        view1.widthAnchor ≤ (relatedView.width .+ 10) ./ 2
        view1.widthAnchor ≤ (relatedView.width .+ 10) ./ 2
        view1.widthAnchor ≤ (relatedView.width .+ 10) ./ 2
        view1.widthAnchor ≤ (relatedView.width .+ 10) ./ 2
        view1.widthAnchor ≤ (relatedView.width .+ 10) ./ 2
        view1.widthAnchor ≤ (relatedView.width .+ 10) ./ 2
        view1.widthAnchor ≤ (relatedView.width .+ 10) ./ 2
        view1.widthAnchor ≤ (relatedView.width .+ 10) ./ 2
        view1.widthAnchor ≤ (relatedView.width .+ 10) ./ 2
    }

    func impliedcompileView1WidthAnchorLessThanOrEqualToWidthPlusConstantDividedByConstant() {
        view1 ≤ (relatedView.width .+ 10) ./ 2
        view1 ≤ (relatedView.width .+ 10) ./ 2
        view1 ≤ (relatedView.width .+ 10) ./ 2
        view1 ≤ (relatedView.width .+ 10) ./ 2
        view1 ≤ (relatedView.width .+ 10) ./ 2
        view1 ≤ (relatedView.width .+ 10) ./ 2
        view1 ≤ (relatedView.width .+ 10) ./ 2
        view1 ≤ (relatedView.width .+ 10) ./ 2
        view1 ≤ (relatedView.width .+ 10) ./ 2
        view1 ≤ (relatedView.width .+ 10) ./ 2
        view1 ≤ (relatedView.width .+ 10) ./ 2
        view1 ≤ (relatedView.width .+ 10) ./ 2
        view1 ≤ (relatedView.width .+ 10) ./ 2
        view1 ≤ (relatedView.width .+ 10) ./ 2
        view1 ≤ (relatedView.width .+ 10) ./ 2
        view1 ≤ (relatedView.width .+ 10) ./ 2
        view1 ≤ (relatedView.width .+ 10) ./ 2
        view1 ≤ (relatedView.width .+ 10) ./ 2
        view1 ≤ (relatedView.width .+ 10) ./ 2
        view1 ≤ (relatedView.width .+ 10) ./ 2
    }

// MARK: LessThanOrEqual with constant .+ multiplier and priority

    func compileView1WidthAnchorLessThanOrEqualToWidthPlusConstantMultiplyingConstantWithPriority() {
        view1.widthAnchor ≤ (relatedView.width .+ 10) .* 3 ~ .low
        view1.widthAnchor ≤ (relatedView.width .+ 10) .* 3 ~ .low
        view1.widthAnchor ≤ (relatedView.width .+ 10) .* 3 ~ .low
        view1.widthAnchor ≤ (relatedView.width .+ 10) .* 3 ~ .low
        view1.widthAnchor ≤ (relatedView.width .+ 10) .* 3 ~ .low
        view1.widthAnchor ≤ (relatedView.width .+ 10) .* 3 ~ .low
        view1.widthAnchor ≤ (relatedView.width .+ 10) .* 3 ~ .low
        view1.widthAnchor ≤ (relatedView.width .+ 10) .* 3 ~ .low
        view1.widthAnchor ≤ (relatedView.width .+ 10) .* 3 ~ .low
        view1.widthAnchor ≤ (relatedView.width .+ 10) .* 3 ~ .low
        view1.widthAnchor ≤ (relatedView.width .+ 10) .* 3 ~ .low
        view1.widthAnchor ≤ (relatedView.width .+ 10) .* 3 ~ .low
        view1.widthAnchor ≤ (relatedView.width .+ 10) .* 3 ~ .low
        view1.widthAnchor ≤ (relatedView.width .+ 10) .* 3 ~ .low
        view1.widthAnchor ≤ (relatedView.width .+ 10) .* 3 ~ .low
        view1.widthAnchor ≤ (relatedView.width .+ 10) .* 3 ~ .low
        view1.widthAnchor ≤ (relatedView.width .+ 10) .* 3 ~ .low
        view1.widthAnchor ≤ (relatedView.width .+ 10) .* 3 ~ .low
        view1.widthAnchor ≤ (relatedView.width .+ 10) .* 3 ~ .low
        view1.widthAnchor ≤ (relatedView.width .+ 10) .* 3 ~ .low
    }

    func impliedcompileView1WidthAnchorLessThanOrEqualToWidthPlusConstantMultiplyingConstantWithPriority() {
        view1 ≤ (relatedView.width .+ 10) .* 3 ~ .low
        view1 ≤ (relatedView.width .+ 10) .* 3 ~ .low
        view1 ≤ (relatedView.width .+ 10) .* 3 ~ .low
        view1 ≤ (relatedView.width .+ 10) .* 3 ~ .low
        view1 ≤ (relatedView.width .+ 10) .* 3 ~ .low
        view1 ≤ (relatedView.width .+ 10) .* 3 ~ .low
        view1 ≤ (relatedView.width .+ 10) .* 3 ~ .low
        view1 ≤ (relatedView.width .+ 10) .* 3 ~ .low
        view1 ≤ (relatedView.width .+ 10) .* 3 ~ .low
        view1 ≤ (relatedView.width .+ 10) .* 3 ~ .low
        view1 ≤ (relatedView.width .+ 10) .* 3 ~ .low
        view1 ≤ (relatedView.width .+ 10) .* 3 ~ .low
        view1 ≤ (relatedView.width .+ 10) .* 3 ~ .low
        view1 ≤ (relatedView.width .+ 10) .* 3 ~ .low
        view1 ≤ (relatedView.width .+ 10) .* 3 ~ .low
        view1 ≤ (relatedView.width .+ 10) .* 3 ~ .low
        view1 ≤ (relatedView.width .+ 10) .* 3 ~ .low
        view1 ≤ (relatedView.width .+ 10) .* 3 ~ .low
        view1 ≤ (relatedView.width .+ 10) .* 3 ~ .low
        view1 ≤ (relatedView.width .+ 10) .* 3 ~ .low
    }

    func compileView1WidthAnchorLessThanOrEqualToWidthPlusConstantMultipliedByConstantWithPriority() {
        view1.widthAnchor ≤ 3 .* (relatedView.width .+ 10) ~ .low
        view1.widthAnchor ≤ 3 .* (relatedView.width .+ 10) ~ .low
        view1.widthAnchor ≤ 3 .* (relatedView.width .+ 10) ~ .low
        view1.widthAnchor ≤ 3 .* (relatedView.width .+ 10) ~ .low
        view1.widthAnchor ≤ 3 .* (relatedView.width .+ 10) ~ .low
        view1.widthAnchor ≤ 3 .* (relatedView.width .+ 10) ~ .low
        view1.widthAnchor ≤ 3 .* (relatedView.width .+ 10) ~ .low
        view1.widthAnchor ≤ 3 .* (relatedView.width .+ 10) ~ .low
        view1.widthAnchor ≤ 3 .* (relatedView.width .+ 10) ~ .low
        view1.widthAnchor ≤ 3 .* (relatedView.width .+ 10) ~ .low
        view1.widthAnchor ≤ 3 .* (relatedView.width .+ 10) ~ .low
        view1.widthAnchor ≤ 3 .* (relatedView.width .+ 10) ~ .low
        view1.widthAnchor ≤ 3 .* (relatedView.width .+ 10) ~ .low
        view1.widthAnchor ≤ 3 .* (relatedView.width .+ 10) ~ .low
        view1.widthAnchor ≤ 3 .* (relatedView.width .+ 10) ~ .low
        view1.widthAnchor ≤ 3 .* (relatedView.width .+ 10) ~ .low
        view1.widthAnchor ≤ 3 .* (relatedView.width .+ 10) ~ .low
        view1.widthAnchor ≤ 3 .* (relatedView.width .+ 10) ~ .low
        view1.widthAnchor ≤ 3 .* (relatedView.width .+ 10) ~ .low
        view1.widthAnchor ≤ 3 .* (relatedView.width .+ 10) ~ .low
    }

    func impliedcompileView1WidthAnchorLessThanOrEqualToWidthPlusConstantMultipliedByConstantWithPriority() {
        view1 ≤ 3 .* (relatedView.width .+ 10) ~ .low
        view1 ≤ 3 .* (relatedView.width .+ 10) ~ .low
        view1 ≤ 3 .* (relatedView.width .+ 10) ~ .low
        view1 ≤ 3 .* (relatedView.width .+ 10) ~ .low
        view1 ≤ 3 .* (relatedView.width .+ 10) ~ .low
        view1 ≤ 3 .* (relatedView.width .+ 10) ~ .low
        view1 ≤ 3 .* (relatedView.width .+ 10) ~ .low
        view1 ≤ 3 .* (relatedView.width .+ 10) ~ .low
        view1 ≤ 3 .* (relatedView.width .+ 10) ~ .low
        view1 ≤ 3 .* (relatedView.width .+ 10) ~ .low
        view1 ≤ 3 .* (relatedView.width .+ 10) ~ .low
        view1 ≤ 3 .* (relatedView.width .+ 10) ~ .low
        view1 ≤ 3 .* (relatedView.width .+ 10) ~ .low
        view1 ≤ 3 .* (relatedView.width .+ 10) ~ .low
        view1 ≤ 3 .* (relatedView.width .+ 10) ~ .low
        view1 ≤ 3 .* (relatedView.width .+ 10) ~ .low
        view1 ≤ 3 .* (relatedView.width .+ 10) ~ .low
        view1 ≤ 3 .* (relatedView.width .+ 10) ~ .low
        view1 ≤ 3 .* (relatedView.width .+ 10) ~ .low
        view1 ≤ 3 .* (relatedView.width .+ 10) ~ .low
    }

    func compileView1WidthAnchorLessThanOrEqualToWidthMultipliedByConstantPlusConstantWithPriority() {
        view1.widthAnchor ≤ 3 .* relatedView.width .+ 10 ~ .low
        view1.widthAnchor ≤ 3 .* relatedView.width .+ 10 ~ .low
        view1.widthAnchor ≤ 3 .* relatedView.width .+ 10 ~ .low
        view1.widthAnchor ≤ 3 .* relatedView.width .+ 10 ~ .low
        view1.widthAnchor ≤ 3 .* relatedView.width .+ 10 ~ .low
        view1.widthAnchor ≤ 3 .* relatedView.width .+ 10 ~ .low
        view1.widthAnchor ≤ 3 .* relatedView.width .+ 10 ~ .low
        view1.widthAnchor ≤ 3 .* relatedView.width .+ 10 ~ .low
        view1.widthAnchor ≤ 3 .* relatedView.width .+ 10 ~ .low
        view1.widthAnchor ≤ 3 .* relatedView.width .+ 10 ~ .low
        view1.widthAnchor ≤ 3 .* relatedView.width .+ 10 ~ .low
        view1.widthAnchor ≤ 3 .* relatedView.width .+ 10 ~ .low
        view1.widthAnchor ≤ 3 .* relatedView.width .+ 10 ~ .low
        view1.widthAnchor ≤ 3 .* relatedView.width .+ 10 ~ .low
        view1.widthAnchor ≤ 3 .* relatedView.width .+ 10 ~ .low
        view1.widthAnchor ≤ 3 .* relatedView.width .+ 10 ~ .low
        view1.widthAnchor ≤ 3 .* relatedView.width .+ 10 ~ .low
        view1.widthAnchor ≤ 3 .* relatedView.width .+ 10 ~ .low
        view1.widthAnchor ≤ 3 .* relatedView.width .+ 10 ~ .low
        view1.widthAnchor ≤ 3 .* relatedView.width .+ 10 ~ .low
    }

    func impliedcompileView1WidthAnchorLessThanOrEqualToWidthMultipliedByConstantPlusConstantWithPriority() {
        view1 ≤ 3 .* relatedView.width .+ 10 ~ .low
        view1 ≤ 3 .* relatedView.width .+ 10 ~ .low
        view1 ≤ 3 .* relatedView.width .+ 10 ~ .low
        view1 ≤ 3 .* relatedView.width .+ 10 ~ .low
        view1 ≤ 3 .* relatedView.width .+ 10 ~ .low
        view1 ≤ 3 .* relatedView.width .+ 10 ~ .low
        view1 ≤ 3 .* relatedView.width .+ 10 ~ .low
        view1 ≤ 3 .* relatedView.width .+ 10 ~ .low
        view1 ≤ 3 .* relatedView.width .+ 10 ~ .low
        view1 ≤ 3 .* relatedView.width .+ 10 ~ .low
        view1 ≤ 3 .* relatedView.width .+ 10 ~ .low
        view1 ≤ 3 .* relatedView.width .+ 10 ~ .low
        view1 ≤ 3 .* relatedView.width .+ 10 ~ .low
        view1 ≤ 3 .* relatedView.width .+ 10 ~ .low
        view1 ≤ 3 .* relatedView.width .+ 10 ~ .low
        view1 ≤ 3 .* relatedView.width .+ 10 ~ .low
        view1 ≤ 3 .* relatedView.width .+ 10 ~ .low
        view1 ≤ 3 .* relatedView.width .+ 10 ~ .low
        view1 ≤ 3 .* relatedView.width .+ 10 ~ .low
        view1 ≤ 3 .* relatedView.width .+ 10 ~ .low
    }

    func compileView1WidthAnchorLessThanOrEqualToWidthPlusConstantDividedByConstantWithPriority() {
        view1.widthAnchor ≤ (relatedView.width .+ 10) ./ 2 ~ .low
        view1.widthAnchor ≤ (relatedView.width .+ 10) ./ 2 ~ .low
        view1.widthAnchor ≤ (relatedView.width .+ 10) ./ 2 ~ .low
        view1.widthAnchor ≤ (relatedView.width .+ 10) ./ 2 ~ .low
        view1.widthAnchor ≤ (relatedView.width .+ 10) ./ 2 ~ .low
        view1.widthAnchor ≤ (relatedView.width .+ 10) ./ 2 ~ .low
        view1.widthAnchor ≤ (relatedView.width .+ 10) ./ 2 ~ .low
        view1.widthAnchor ≤ (relatedView.width .+ 10) ./ 2 ~ .low
        view1.widthAnchor ≤ (relatedView.width .+ 10) ./ 2 ~ .low
        view1.widthAnchor ≤ (relatedView.width .+ 10) ./ 2 ~ .low
        view1.widthAnchor ≤ (relatedView.width .+ 10) ./ 2 ~ .low
        view1.widthAnchor ≤ (relatedView.width .+ 10) ./ 2 ~ .low
        view1.widthAnchor ≤ (relatedView.width .+ 10) ./ 2 ~ .low
        view1.widthAnchor ≤ (relatedView.width .+ 10) ./ 2 ~ .low
        view1.widthAnchor ≤ (relatedView.width .+ 10) ./ 2 ~ .low
        view1.widthAnchor ≤ (relatedView.width .+ 10) ./ 2 ~ .low
        view1.widthAnchor ≤ (relatedView.width .+ 10) ./ 2 ~ .low
        view1.widthAnchor ≤ (relatedView.width .+ 10) ./ 2 ~ .low
        view1.widthAnchor ≤ (relatedView.width .+ 10) ./ 2 ~ .low
        view1.widthAnchor ≤ (relatedView.width .+ 10) ./ 2 ~ .low
    }

    func impliedcompileView1WidthAnchorLessThanOrEqualToWidthPlusConstantDividedByConstantWithPriority() {
        view1 ≤ (relatedView.width .+ 10) ./ 2 ~ .low
        view1 ≤ (relatedView.width .+ 10) ./ 2 ~ .low
        view1 ≤ (relatedView.width .+ 10) ./ 2 ~ .low
        view1 ≤ (relatedView.width .+ 10) ./ 2 ~ .low
        view1 ≤ (relatedView.width .+ 10) ./ 2 ~ .low
        view1 ≤ (relatedView.width .+ 10) ./ 2 ~ .low
        view1 ≤ (relatedView.width .+ 10) ./ 2 ~ .low
        view1 ≤ (relatedView.width .+ 10) ./ 2 ~ .low
        view1 ≤ (relatedView.width .+ 10) ./ 2 ~ .low
        view1 ≤ (relatedView.width .+ 10) ./ 2 ~ .low
        view1 ≤ (relatedView.width .+ 10) ./ 2 ~ .low
        view1 ≤ (relatedView.width .+ 10) ./ 2 ~ .low
        view1 ≤ (relatedView.width .+ 10) ./ 2 ~ .low
        view1 ≤ (relatedView.width .+ 10) ./ 2 ~ .low
        view1 ≤ (relatedView.width .+ 10) ./ 2 ~ .low
        view1 ≤ (relatedView.width .+ 10) ./ 2 ~ .low
        view1 ≤ (relatedView.width .+ 10) ./ 2 ~ .low
        view1 ≤ (relatedView.width .+ 10) ./ 2 ~ .low
        view1 ≤ (relatedView.width .+ 10) ./ 2 ~ .low
        view1 ≤ (relatedView.width .+ 10) ./ 2 ~ .low
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func compileView1WidthAnchorLessThanOrEqualToWidthPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        view1.widthAnchor ≤ (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1.widthAnchor ≤ (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1.widthAnchor ≤ (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1.widthAnchor ≤ (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1.widthAnchor ≤ (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1.widthAnchor ≤ (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1.widthAnchor ≤ (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1.widthAnchor ≤ (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1.widthAnchor ≤ (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1.widthAnchor ≤ (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1.widthAnchor ≤ (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1.widthAnchor ≤ (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1.widthAnchor ≤ (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1.widthAnchor ≤ (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1.widthAnchor ≤ (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1.widthAnchor ≤ (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1.widthAnchor ≤ (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1.widthAnchor ≤ (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1.widthAnchor ≤ (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1.widthAnchor ≤ (relatedView.width .+ 10) .* 3  ~ .high .- 1
    }

    func impliedcompileView1WidthAnchorLessThanOrEqualToWidthPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        view1 ≤ (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1 ≤ (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1 ≤ (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1 ≤ (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1 ≤ (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1 ≤ (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1 ≤ (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1 ≤ (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1 ≤ (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1 ≤ (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1 ≤ (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1 ≤ (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1 ≤ (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1 ≤ (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1 ≤ (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1 ≤ (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1 ≤ (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1 ≤ (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1 ≤ (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1 ≤ (relatedView.width .+ 10) .* 3  ~ .high .- 1
    }

    func compileView1WidthAnchorLessThanOrEqualToWidthPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        view1.widthAnchor ≤ 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1.widthAnchor ≤ 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1.widthAnchor ≤ 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1.widthAnchor ≤ 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1.widthAnchor ≤ 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1.widthAnchor ≤ 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1.widthAnchor ≤ 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1.widthAnchor ≤ 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1.widthAnchor ≤ 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1.widthAnchor ≤ 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1.widthAnchor ≤ 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1.widthAnchor ≤ 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1.widthAnchor ≤ 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1.widthAnchor ≤ 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1.widthAnchor ≤ 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1.widthAnchor ≤ 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1.widthAnchor ≤ 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1.widthAnchor ≤ 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1.widthAnchor ≤ 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1.widthAnchor ≤ 3 .* (relatedView.width .+ 10)  ~ .high .- 1
    }

    func impliedcompileView1WidthAnchorLessThanOrEqualToWidthPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        view1 ≤ 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1 ≤ 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1 ≤ 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1 ≤ 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1 ≤ 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1 ≤ 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1 ≤ 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1 ≤ 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1 ≤ 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1 ≤ 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1 ≤ 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1 ≤ 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1 ≤ 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1 ≤ 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1 ≤ 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1 ≤ 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1 ≤ 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1 ≤ 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1 ≤ 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1 ≤ 3 .* (relatedView.width .+ 10)  ~ .high .- 1
    }

    func compileView1WidthAnchorLessThanOrEqualToWidthMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        view1.widthAnchor ≤ 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1.widthAnchor ≤ 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1.widthAnchor ≤ 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1.widthAnchor ≤ 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1.widthAnchor ≤ 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1.widthAnchor ≤ 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1.widthAnchor ≤ 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1.widthAnchor ≤ 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1.widthAnchor ≤ 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1.widthAnchor ≤ 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1.widthAnchor ≤ 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1.widthAnchor ≤ 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1.widthAnchor ≤ 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1.widthAnchor ≤ 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1.widthAnchor ≤ 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1.widthAnchor ≤ 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1.widthAnchor ≤ 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1.widthAnchor ≤ 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1.widthAnchor ≤ 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1.widthAnchor ≤ 3 .* relatedView.width .+ 10  ~ .high .- 1
    }

    func impliedcompileView1WidthAnchorLessThanOrEqualToWidthMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        view1 ≤ 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1 ≤ 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1 ≤ 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1 ≤ 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1 ≤ 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1 ≤ 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1 ≤ 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1 ≤ 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1 ≤ 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1 ≤ 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1 ≤ 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1 ≤ 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1 ≤ 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1 ≤ 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1 ≤ 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1 ≤ 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1 ≤ 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1 ≤ 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1 ≤ 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1 ≤ 3 .* relatedView.width .+ 10  ~ .high .- 1
    }

    func compileView1WidthAnchorLessThanOrEqualToWidthPlusConstantDividedByConstantWithPriorityArithmetic() {
        view1.widthAnchor ≤ (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1.widthAnchor ≤ (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1.widthAnchor ≤ (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1.widthAnchor ≤ (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1.widthAnchor ≤ (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1.widthAnchor ≤ (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1.widthAnchor ≤ (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1.widthAnchor ≤ (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1.widthAnchor ≤ (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1.widthAnchor ≤ (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1.widthAnchor ≤ (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1.widthAnchor ≤ (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1.widthAnchor ≤ (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1.widthAnchor ≤ (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1.widthAnchor ≤ (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1.widthAnchor ≤ (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1.widthAnchor ≤ (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1.widthAnchor ≤ (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1.widthAnchor ≤ (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1.widthAnchor ≤ (relatedView.width .+ 10) ./ 2  ~ .high .- 1
    }

    func impliedcompileView1WidthAnchorLessThanOrEqualToWidthPlusConstantDividedByConstantWithPriorityArithmetic() {
        view1 ≤ (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1 ≤ (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1 ≤ (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1 ≤ (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1 ≤ (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1 ≤ (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1 ≤ (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1 ≤ (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1 ≤ (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1 ≤ (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1 ≤ (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1 ≤ (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1 ≤ (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1 ≤ (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1 ≤ (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1 ≤ (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1 ≤ (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1 ≤ (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1 ≤ (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1 ≤ (relatedView.width .+ 10) ./ 2  ~ .high .- 1
    }

    // MARK: GreaterThanOrEqual

    func compileView1WidthAnchorGreaterThanOrEqualToWidth() {
        view1.widthAnchor ≥ relatedView.width
        view1.widthAnchor ≥ relatedView.width
        view1.widthAnchor ≥ relatedView.width
        view1.widthAnchor ≥ relatedView.width
        view1.widthAnchor ≥ relatedView.width
        view1.widthAnchor ≥ relatedView.width
        view1.widthAnchor ≥ relatedView.width
        view1.widthAnchor ≥ relatedView.width
        view1.widthAnchor ≥ relatedView.width
        view1.widthAnchor ≥ relatedView.width
        view1.widthAnchor ≥ relatedView.width
        view1.widthAnchor ≥ relatedView.width
        view1.widthAnchor ≥ relatedView.width
        view1.widthAnchor ≥ relatedView.width
        view1.widthAnchor ≥ relatedView.width
        view1.widthAnchor ≥ relatedView.width
        view1.widthAnchor ≥ relatedView.width
        view1.widthAnchor ≥ relatedView.width
        view1.widthAnchor ≥ relatedView.width
        view1.widthAnchor ≥ relatedView.width
    }

    func impliedcompileView1WidthAnchorGreaterThanOrEqualToWidth() {
        view1 ≥ relatedView.width
        view1 ≥ relatedView.width
        view1 ≥ relatedView.width
        view1 ≥ relatedView.width
        view1 ≥ relatedView.width
        view1 ≥ relatedView.width
        view1 ≥ relatedView.width
        view1 ≥ relatedView.width
        view1 ≥ relatedView.width
        view1 ≥ relatedView.width
        view1 ≥ relatedView.width
        view1 ≥ relatedView.width
        view1 ≥ relatedView.width
        view1 ≥ relatedView.width
        view1 ≥ relatedView.width
        view1 ≥ relatedView.width
        view1 ≥ relatedView.width
        view1 ≥ relatedView.width
        view1 ≥ relatedView.width
        view1 ≥ relatedView.width
    }

    // MARK: GreaterThanOrEqual with constant
    func compileView1WidthAnchorGreaterThanOrEqualToWidthPlusConstant() {
        view1.widthAnchor ≥ relatedView.width .+ 10
        view1.widthAnchor ≥ relatedView.width .+ 10
        view1.widthAnchor ≥ relatedView.width .+ 10
        view1.widthAnchor ≥ relatedView.width .+ 10
        view1.widthAnchor ≥ relatedView.width .+ 10
        view1.widthAnchor ≥ relatedView.width .+ 10
        view1.widthAnchor ≥ relatedView.width .+ 10
        view1.widthAnchor ≥ relatedView.width .+ 10
        view1.widthAnchor ≥ relatedView.width .+ 10
        view1.widthAnchor ≥ relatedView.width .+ 10
        view1.widthAnchor ≥ relatedView.width .+ 10
        view1.widthAnchor ≥ relatedView.width .+ 10
        view1.widthAnchor ≥ relatedView.width .+ 10
        view1.widthAnchor ≥ relatedView.width .+ 10
        view1.widthAnchor ≥ relatedView.width .+ 10
        view1.widthAnchor ≥ relatedView.width .+ 10
        view1.widthAnchor ≥ relatedView.width .+ 10
        view1.widthAnchor ≥ relatedView.width .+ 10
        view1.widthAnchor ≥ relatedView.width .+ 10
        view1.widthAnchor ≥ relatedView.width .+ 10
    }

    func impliedcompileView1WidthAnchorGreaterThanOrEqualToWidthPlusConstant() {
        view1 ≥ relatedView.width .+ 10
        view1 ≥ relatedView.width .+ 10
        view1 ≥ relatedView.width .+ 10
        view1 ≥ relatedView.width .+ 10
        view1 ≥ relatedView.width .+ 10
        view1 ≥ relatedView.width .+ 10
        view1 ≥ relatedView.width .+ 10
        view1 ≥ relatedView.width .+ 10
        view1 ≥ relatedView.width .+ 10
        view1 ≥ relatedView.width .+ 10
        view1 ≥ relatedView.width .+ 10
        view1 ≥ relatedView.width .+ 10
        view1 ≥ relatedView.width .+ 10
        view1 ≥ relatedView.width .+ 10
        view1 ≥ relatedView.width .+ 10
        view1 ≥ relatedView.width .+ 10
        view1 ≥ relatedView.width .+ 10
        view1 ≥ relatedView.width .+ 10
        view1 ≥ relatedView.width .+ 10
        view1 ≥ relatedView.width .+ 10
    }

    func compileView1WidthAnchorGreaterThanOrEqualToWidthMinusConstant() {
        view1.widthAnchor ≥ relatedView.width .- 10
        view1.widthAnchor ≥ relatedView.width .- 10
        view1.widthAnchor ≥ relatedView.width .- 10
        view1.widthAnchor ≥ relatedView.width .- 10
        view1.widthAnchor ≥ relatedView.width .- 10
        view1.widthAnchor ≥ relatedView.width .- 10
        view1.widthAnchor ≥ relatedView.width .- 10
        view1.widthAnchor ≥ relatedView.width .- 10
        view1.widthAnchor ≥ relatedView.width .- 10
        view1.widthAnchor ≥ relatedView.width .- 10
        view1.widthAnchor ≥ relatedView.width .- 10
        view1.widthAnchor ≥ relatedView.width .- 10
        view1.widthAnchor ≥ relatedView.width .- 10
        view1.widthAnchor ≥ relatedView.width .- 10
        view1.widthAnchor ≥ relatedView.width .- 10
        view1.widthAnchor ≥ relatedView.width .- 10
        view1.widthAnchor ≥ relatedView.width .- 10
        view1.widthAnchor ≥ relatedView.width .- 10
        view1.widthAnchor ≥ relatedView.width .- 10
        view1.widthAnchor ≥ relatedView.width .- 10
    }

    func impliedcompileView1WidthAnchorGreaterThanOrEqualToWidthMinusConstant() {
        view1 ≥ relatedView.width .- 10
        view1 ≥ relatedView.width .- 10
        view1 ≥ relatedView.width .- 10
        view1 ≥ relatedView.width .- 10
        view1 ≥ relatedView.width .- 10
        view1 ≥ relatedView.width .- 10
        view1 ≥ relatedView.width .- 10
        view1 ≥ relatedView.width .- 10
        view1 ≥ relatedView.width .- 10
        view1 ≥ relatedView.width .- 10
        view1 ≥ relatedView.width .- 10
        view1 ≥ relatedView.width .- 10
        view1 ≥ relatedView.width .- 10
        view1 ≥ relatedView.width .- 10
        view1 ≥ relatedView.width .- 10
        view1 ≥ relatedView.width .- 10
        view1 ≥ relatedView.width .- 10
        view1 ≥ relatedView.width .- 10
        view1 ≥ relatedView.width .- 10
        view1 ≥ relatedView.width .- 10
    }

    // MARK: GreaterThanOrEqual with multiplier
    func compileView1WidthAnchorGreaterThanOrEqualToWidthMultiplyingConstant() {
        view1.widthAnchor ≥ relatedView.width .* 3
        view1.widthAnchor ≥ relatedView.width .* 3
        view1.widthAnchor ≥ relatedView.width .* 3
        view1.widthAnchor ≥ relatedView.width .* 3
        view1.widthAnchor ≥ relatedView.width .* 3
        view1.widthAnchor ≥ relatedView.width .* 3
        view1.widthAnchor ≥ relatedView.width .* 3
        view1.widthAnchor ≥ relatedView.width .* 3
        view1.widthAnchor ≥ relatedView.width .* 3
        view1.widthAnchor ≥ relatedView.width .* 3
        view1.widthAnchor ≥ relatedView.width .* 3
        view1.widthAnchor ≥ relatedView.width .* 3
        view1.widthAnchor ≥ relatedView.width .* 3
        view1.widthAnchor ≥ relatedView.width .* 3
        view1.widthAnchor ≥ relatedView.width .* 3
        view1.widthAnchor ≥ relatedView.width .* 3
        view1.widthAnchor ≥ relatedView.width .* 3
        view1.widthAnchor ≥ relatedView.width .* 3
        view1.widthAnchor ≥ relatedView.width .* 3
        view1.widthAnchor ≥ relatedView.width .* 3
    }

    func impliedcompileView1WidthAnchorGreaterThanOrEqualToWidthMultiplyingConstant() {
        view1 ≥ relatedView.width .* 3
        view1 ≥ relatedView.width .* 3
        view1 ≥ relatedView.width .* 3
        view1 ≥ relatedView.width .* 3
        view1 ≥ relatedView.width .* 3
        view1 ≥ relatedView.width .* 3
        view1 ≥ relatedView.width .* 3
        view1 ≥ relatedView.width .* 3
        view1 ≥ relatedView.width .* 3
        view1 ≥ relatedView.width .* 3
        view1 ≥ relatedView.width .* 3
        view1 ≥ relatedView.width .* 3
        view1 ≥ relatedView.width .* 3
        view1 ≥ relatedView.width .* 3
        view1 ≥ relatedView.width .* 3
        view1 ≥ relatedView.width .* 3
        view1 ≥ relatedView.width .* 3
        view1 ≥ relatedView.width .* 3
        view1 ≥ relatedView.width .* 3
        view1 ≥ relatedView.width .* 3
    }

    func compileView1WidthAnchorGreaterThanOrEqualToWidthMultipliedByConstant() {
        view1.widthAnchor ≥ 3 .* relatedView.width
        view1.widthAnchor ≥ 3 .* relatedView.width
        view1.widthAnchor ≥ 3 .* relatedView.width
        view1.widthAnchor ≥ 3 .* relatedView.width
        view1.widthAnchor ≥ 3 .* relatedView.width
        view1.widthAnchor ≥ 3 .* relatedView.width
        view1.widthAnchor ≥ 3 .* relatedView.width
        view1.widthAnchor ≥ 3 .* relatedView.width
        view1.widthAnchor ≥ 3 .* relatedView.width
        view1.widthAnchor ≥ 3 .* relatedView.width
        view1.widthAnchor ≥ 3 .* relatedView.width
        view1.widthAnchor ≥ 3 .* relatedView.width
        view1.widthAnchor ≥ 3 .* relatedView.width
        view1.widthAnchor ≥ 3 .* relatedView.width
        view1.widthAnchor ≥ 3 .* relatedView.width
        view1.widthAnchor ≥ 3 .* relatedView.width
        view1.widthAnchor ≥ 3 .* relatedView.width
        view1.widthAnchor ≥ 3 .* relatedView.width
        view1.widthAnchor ≥ 3 .* relatedView.width
        view1.widthAnchor ≥ 3 .* relatedView.width
    }

    func impliedcompileView1WidthAnchorGreaterThanOrEqualToWidthMultipliedByConstant() {
        view1 ≥ 3 .* relatedView.width
        view1 ≥ 3 .* relatedView.width
        view1 ≥ 3 .* relatedView.width
        view1 ≥ 3 .* relatedView.width
        view1 ≥ 3 .* relatedView.width
        view1 ≥ 3 .* relatedView.width
        view1 ≥ 3 .* relatedView.width
        view1 ≥ 3 .* relatedView.width
        view1 ≥ 3 .* relatedView.width
        view1 ≥ 3 .* relatedView.width
        view1 ≥ 3 .* relatedView.width
        view1 ≥ 3 .* relatedView.width
        view1 ≥ 3 .* relatedView.width
        view1 ≥ 3 .* relatedView.width
        view1 ≥ 3 .* relatedView.width
        view1 ≥ 3 .* relatedView.width
        view1 ≥ 3 .* relatedView.width
        view1 ≥ 3 .* relatedView.width
        view1 ≥ 3 .* relatedView.width
        view1 ≥ 3 .* relatedView.width
    }

    func compileView1WidthAnchorGreaterThanOrEqualToWidthDividedByConstant() {
        view1.widthAnchor ≥ relatedView.width ./ 2
        view1.widthAnchor ≥ relatedView.width ./ 2
        view1.widthAnchor ≥ relatedView.width ./ 2
        view1.widthAnchor ≥ relatedView.width ./ 2
        view1.widthAnchor ≥ relatedView.width ./ 2
        view1.widthAnchor ≥ relatedView.width ./ 2
        view1.widthAnchor ≥ relatedView.width ./ 2
        view1.widthAnchor ≥ relatedView.width ./ 2
        view1.widthAnchor ≥ relatedView.width ./ 2
        view1.widthAnchor ≥ relatedView.width ./ 2
        view1.widthAnchor ≥ relatedView.width ./ 2
        view1.widthAnchor ≥ relatedView.width ./ 2
        view1.widthAnchor ≥ relatedView.width ./ 2
        view1.widthAnchor ≥ relatedView.width ./ 2
        view1.widthAnchor ≥ relatedView.width ./ 2
        view1.widthAnchor ≥ relatedView.width ./ 2
        view1.widthAnchor ≥ relatedView.width ./ 2
        view1.widthAnchor ≥ relatedView.width ./ 2
        view1.widthAnchor ≥ relatedView.width ./ 2
        view1.widthAnchor ≥ relatedView.width ./ 2
    }

    func impliedcompileView1WidthAnchorGreaterThanOrEqualToWidthDividedByConstant() {
        view1 ≥ relatedView.width ./ 2
        view1 ≥ relatedView.width ./ 2
        view1 ≥ relatedView.width ./ 2
        view1 ≥ relatedView.width ./ 2
        view1 ≥ relatedView.width ./ 2
        view1 ≥ relatedView.width ./ 2
        view1 ≥ relatedView.width ./ 2
        view1 ≥ relatedView.width ./ 2
        view1 ≥ relatedView.width ./ 2
        view1 ≥ relatedView.width ./ 2
        view1 ≥ relatedView.width ./ 2
        view1 ≥ relatedView.width ./ 2
        view1 ≥ relatedView.width ./ 2
        view1 ≥ relatedView.width ./ 2
        view1 ≥ relatedView.width ./ 2
        view1 ≥ relatedView.width ./ 2
        view1 ≥ relatedView.width ./ 2
        view1 ≥ relatedView.width ./ 2
        view1 ≥ relatedView.width ./ 2
        view1 ≥ relatedView.width ./ 2
    }

    // MARK: GreaterThanOrEqual Prioritized
    func compileView1WidthAnchorGreaterThanOrEqualToWidthWithPriority() {
        view1.widthAnchor ≥ relatedView.width ~ .low
        view1.widthAnchor ≥ relatedView.width ~ .low
        view1.widthAnchor ≥ relatedView.width ~ .low
        view1.widthAnchor ≥ relatedView.width ~ .low
        view1.widthAnchor ≥ relatedView.width ~ .low
        view1.widthAnchor ≥ relatedView.width ~ .low
        view1.widthAnchor ≥ relatedView.width ~ .low
        view1.widthAnchor ≥ relatedView.width ~ .low
        view1.widthAnchor ≥ relatedView.width ~ .low
        view1.widthAnchor ≥ relatedView.width ~ .low
        view1.widthAnchor ≥ relatedView.width ~ .low
        view1.widthAnchor ≥ relatedView.width ~ .low
        view1.widthAnchor ≥ relatedView.width ~ .low
        view1.widthAnchor ≥ relatedView.width ~ .low
        view1.widthAnchor ≥ relatedView.width ~ .low
        view1.widthAnchor ≥ relatedView.width ~ .low
        view1.widthAnchor ≥ relatedView.width ~ .low
        view1.widthAnchor ≥ relatedView.width ~ .low
        view1.widthAnchor ≥ relatedView.width ~ .low
        view1.widthAnchor ≥ relatedView.width ~ .low
    }

    func impliedcompileView1WidthAnchorGreaterThanOrEqualToWidthWithPriority() {
        view1 ≥ relatedView.width ~ .low
        view1 ≥ relatedView.width ~ .low
        view1 ≥ relatedView.width ~ .low
        view1 ≥ relatedView.width ~ .low
        view1 ≥ relatedView.width ~ .low
        view1 ≥ relatedView.width ~ .low
        view1 ≥ relatedView.width ~ .low
        view1 ≥ relatedView.width ~ .low
        view1 ≥ relatedView.width ~ .low
        view1 ≥ relatedView.width ~ .low
        view1 ≥ relatedView.width ~ .low
        view1 ≥ relatedView.width ~ .low
        view1 ≥ relatedView.width ~ .low
        view1 ≥ relatedView.width ~ .low
        view1 ≥ relatedView.width ~ .low
        view1 ≥ relatedView.width ~ .low
        view1 ≥ relatedView.width ~ .low
        view1 ≥ relatedView.width ~ .low
        view1 ≥ relatedView.width ~ .low
        view1 ≥ relatedView.width ~ .low
    }

    func compileView1WidthAnchorGreaterThanOrEqualToWidthWithPriorityLiteral() {
        view1.widthAnchor ≥ relatedView.width ~ 300
        view1.widthAnchor ≥ relatedView.width ~ 300
        view1.widthAnchor ≥ relatedView.width ~ 300
        view1.widthAnchor ≥ relatedView.width ~ 300
        view1.widthAnchor ≥ relatedView.width ~ 300
        view1.widthAnchor ≥ relatedView.width ~ 300
        view1.widthAnchor ≥ relatedView.width ~ 300
        view1.widthAnchor ≥ relatedView.width ~ 300
        view1.widthAnchor ≥ relatedView.width ~ 300
        view1.widthAnchor ≥ relatedView.width ~ 300
        view1.widthAnchor ≥ relatedView.width ~ 300
        view1.widthAnchor ≥ relatedView.width ~ 300
        view1.widthAnchor ≥ relatedView.width ~ 300
        view1.widthAnchor ≥ relatedView.width ~ 300
        view1.widthAnchor ≥ relatedView.width ~ 300
        view1.widthAnchor ≥ relatedView.width ~ 300
        view1.widthAnchor ≥ relatedView.width ~ 300
        view1.widthAnchor ≥ relatedView.width ~ 300
        view1.widthAnchor ≥ relatedView.width ~ 300
        view1.widthAnchor ≥ relatedView.width ~ 300
    }

    func impliedcompileView1WidthAnchorGreaterThanOrEqualToWidthWithPriorityLiteral() {
        view1 ≥ relatedView.width ~ 300
        view1 ≥ relatedView.width ~ 300
        view1 ≥ relatedView.width ~ 300
        view1 ≥ relatedView.width ~ 300
        view1 ≥ relatedView.width ~ 300
        view1 ≥ relatedView.width ~ 300
        view1 ≥ relatedView.width ~ 300
        view1 ≥ relatedView.width ~ 300
        view1 ≥ relatedView.width ~ 300
        view1 ≥ relatedView.width ~ 300
        view1 ≥ relatedView.width ~ 300
        view1 ≥ relatedView.width ~ 300
        view1 ≥ relatedView.width ~ 300
        view1 ≥ relatedView.width ~ 300
        view1 ≥ relatedView.width ~ 300
        view1 ≥ relatedView.width ~ 300
        view1 ≥ relatedView.width ~ 300
        view1 ≥ relatedView.width ~ 300
        view1 ≥ relatedView.width ~ 300
        view1 ≥ relatedView.width ~ 300
    }

    func compileView1WidthAnchorGreaterThanOrEqualToWidthWithPriorityArithmetic() {
        view1.widthAnchor ≥ relatedView.width ~ .high .- 1
        view1.widthAnchor ≥ relatedView.width ~ .high .- 1
        view1.widthAnchor ≥ relatedView.width ~ .high .- 1
        view1.widthAnchor ≥ relatedView.width ~ .high .- 1
        view1.widthAnchor ≥ relatedView.width ~ .high .- 1
        view1.widthAnchor ≥ relatedView.width ~ .high .- 1
        view1.widthAnchor ≥ relatedView.width ~ .high .- 1
        view1.widthAnchor ≥ relatedView.width ~ .high .- 1
        view1.widthAnchor ≥ relatedView.width ~ .high .- 1
        view1.widthAnchor ≥ relatedView.width ~ .high .- 1
        view1.widthAnchor ≥ relatedView.width ~ .high .- 1
        view1.widthAnchor ≥ relatedView.width ~ .high .- 1
        view1.widthAnchor ≥ relatedView.width ~ .high .- 1
        view1.widthAnchor ≥ relatedView.width ~ .high .- 1
        view1.widthAnchor ≥ relatedView.width ~ .high .- 1
        view1.widthAnchor ≥ relatedView.width ~ .high .- 1
        view1.widthAnchor ≥ relatedView.width ~ .high .- 1
        view1.widthAnchor ≥ relatedView.width ~ .high .- 1
        view1.widthAnchor ≥ relatedView.width ~ .high .- 1
        view1.widthAnchor ≥ relatedView.width ~ .high .- 1
    }

    func impliedcompileView1WidthAnchorGreaterThanOrEqualToWidthWithPriorityArithmetic() {
        view1 ≥ relatedView.width ~ .high .- 1
        view1 ≥ relatedView.width ~ .high .- 1
        view1 ≥ relatedView.width ~ .high .- 1
        view1 ≥ relatedView.width ~ .high .- 1
        view1 ≥ relatedView.width ~ .high .- 1
        view1 ≥ relatedView.width ~ .high .- 1
        view1 ≥ relatedView.width ~ .high .- 1
        view1 ≥ relatedView.width ~ .high .- 1
        view1 ≥ relatedView.width ~ .high .- 1
        view1 ≥ relatedView.width ~ .high .- 1
        view1 ≥ relatedView.width ~ .high .- 1
        view1 ≥ relatedView.width ~ .high .- 1
        view1 ≥ relatedView.width ~ .high .- 1
        view1 ≥ relatedView.width ~ .high .- 1
        view1 ≥ relatedView.width ~ .high .- 1
        view1 ≥ relatedView.width ~ .high .- 1
        view1 ≥ relatedView.width ~ .high .- 1
        view1 ≥ relatedView.width ~ .high .- 1
        view1 ≥ relatedView.width ~ .high .- 1
        view1 ≥ relatedView.width ~ .high .- 1
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func compileView1WidthAnchorGreaterThanOrEqualToWidthPlusConstantMultiplyingConstant() {
        view1.widthAnchor ≥ (relatedView.width .+ 10) .* 3
        view1.widthAnchor ≥ (relatedView.width .+ 10) .* 3
        view1.widthAnchor ≥ (relatedView.width .+ 10) .* 3
        view1.widthAnchor ≥ (relatedView.width .+ 10) .* 3
        view1.widthAnchor ≥ (relatedView.width .+ 10) .* 3
        view1.widthAnchor ≥ (relatedView.width .+ 10) .* 3
        view1.widthAnchor ≥ (relatedView.width .+ 10) .* 3
        view1.widthAnchor ≥ (relatedView.width .+ 10) .* 3
        view1.widthAnchor ≥ (relatedView.width .+ 10) .* 3
        view1.widthAnchor ≥ (relatedView.width .+ 10) .* 3
        view1.widthAnchor ≥ (relatedView.width .+ 10) .* 3
        view1.widthAnchor ≥ (relatedView.width .+ 10) .* 3
        view1.widthAnchor ≥ (relatedView.width .+ 10) .* 3
        view1.widthAnchor ≥ (relatedView.width .+ 10) .* 3
        view1.widthAnchor ≥ (relatedView.width .+ 10) .* 3
        view1.widthAnchor ≥ (relatedView.width .+ 10) .* 3
        view1.widthAnchor ≥ (relatedView.width .+ 10) .* 3
        view1.widthAnchor ≥ (relatedView.width .+ 10) .* 3
        view1.widthAnchor ≥ (relatedView.width .+ 10) .* 3
        view1.widthAnchor ≥ (relatedView.width .+ 10) .* 3
    }

    func impliedcompileView1WidthAnchorGreaterThanOrEqualToWidthPlusConstantMultiplyingConstant() {
        view1 ≥ (relatedView.width .+ 10) .* 3
        view1 ≥ (relatedView.width .+ 10) .* 3
        view1 ≥ (relatedView.width .+ 10) .* 3
        view1 ≥ (relatedView.width .+ 10) .* 3
        view1 ≥ (relatedView.width .+ 10) .* 3
        view1 ≥ (relatedView.width .+ 10) .* 3
        view1 ≥ (relatedView.width .+ 10) .* 3
        view1 ≥ (relatedView.width .+ 10) .* 3
        view1 ≥ (relatedView.width .+ 10) .* 3
        view1 ≥ (relatedView.width .+ 10) .* 3
        view1 ≥ (relatedView.width .+ 10) .* 3
        view1 ≥ (relatedView.width .+ 10) .* 3
        view1 ≥ (relatedView.width .+ 10) .* 3
        view1 ≥ (relatedView.width .+ 10) .* 3
        view1 ≥ (relatedView.width .+ 10) .* 3
        view1 ≥ (relatedView.width .+ 10) .* 3
        view1 ≥ (relatedView.width .+ 10) .* 3
        view1 ≥ (relatedView.width .+ 10) .* 3
        view1 ≥ (relatedView.width .+ 10) .* 3
        view1 ≥ (relatedView.width .+ 10) .* 3
    }

    func compileView1WidthAnchorGreaterThanOrEqualToWidthPlusConstantMultipliedByConstant() {
        view1.widthAnchor ≥ 3 .* (relatedView.width .+ 10)
        view1.widthAnchor ≥ 3 .* (relatedView.width .+ 10)
        view1.widthAnchor ≥ 3 .* (relatedView.width .+ 10)
        view1.widthAnchor ≥ 3 .* (relatedView.width .+ 10)
        view1.widthAnchor ≥ 3 .* (relatedView.width .+ 10)
        view1.widthAnchor ≥ 3 .* (relatedView.width .+ 10)
        view1.widthAnchor ≥ 3 .* (relatedView.width .+ 10)
        view1.widthAnchor ≥ 3 .* (relatedView.width .+ 10)
        view1.widthAnchor ≥ 3 .* (relatedView.width .+ 10)
        view1.widthAnchor ≥ 3 .* (relatedView.width .+ 10)
        view1.widthAnchor ≥ 3 .* (relatedView.width .+ 10)
        view1.widthAnchor ≥ 3 .* (relatedView.width .+ 10)
        view1.widthAnchor ≥ 3 .* (relatedView.width .+ 10)
        view1.widthAnchor ≥ 3 .* (relatedView.width .+ 10)
        view1.widthAnchor ≥ 3 .* (relatedView.width .+ 10)
        view1.widthAnchor ≥ 3 .* (relatedView.width .+ 10)
        view1.widthAnchor ≥ 3 .* (relatedView.width .+ 10)
        view1.widthAnchor ≥ 3 .* (relatedView.width .+ 10)
        view1.widthAnchor ≥ 3 .* (relatedView.width .+ 10)
        view1.widthAnchor ≥ 3 .* (relatedView.width .+ 10)
    }

    func impliedcompileView1WidthAnchorGreaterThanOrEqualToWidthPlusConstantMultipliedByConstant() {
        view1 ≥ 3 .* (relatedView.width .+ 10)
        view1 ≥ 3 .* (relatedView.width .+ 10)
        view1 ≥ 3 .* (relatedView.width .+ 10)
        view1 ≥ 3 .* (relatedView.width .+ 10)
        view1 ≥ 3 .* (relatedView.width .+ 10)
        view1 ≥ 3 .* (relatedView.width .+ 10)
        view1 ≥ 3 .* (relatedView.width .+ 10)
        view1 ≥ 3 .* (relatedView.width .+ 10)
        view1 ≥ 3 .* (relatedView.width .+ 10)
        view1 ≥ 3 .* (relatedView.width .+ 10)
        view1 ≥ 3 .* (relatedView.width .+ 10)
        view1 ≥ 3 .* (relatedView.width .+ 10)
        view1 ≥ 3 .* (relatedView.width .+ 10)
        view1 ≥ 3 .* (relatedView.width .+ 10)
        view1 ≥ 3 .* (relatedView.width .+ 10)
        view1 ≥ 3 .* (relatedView.width .+ 10)
        view1 ≥ 3 .* (relatedView.width .+ 10)
        view1 ≥ 3 .* (relatedView.width .+ 10)
        view1 ≥ 3 .* (relatedView.width .+ 10)
        view1 ≥ 3 .* (relatedView.width .+ 10)
    }

    func compileView1WidthAnchorGreaterThanOrEqualToWidthMultipliedByConstantPlusConstant() {
        view1.widthAnchor ≥ 3 .* relatedView.width .+ 10
        view1.widthAnchor ≥ 3 .* relatedView.width .+ 10
        view1.widthAnchor ≥ 3 .* relatedView.width .+ 10
        view1.widthAnchor ≥ 3 .* relatedView.width .+ 10
        view1.widthAnchor ≥ 3 .* relatedView.width .+ 10
        view1.widthAnchor ≥ 3 .* relatedView.width .+ 10
        view1.widthAnchor ≥ 3 .* relatedView.width .+ 10
        view1.widthAnchor ≥ 3 .* relatedView.width .+ 10
        view1.widthAnchor ≥ 3 .* relatedView.width .+ 10
        view1.widthAnchor ≥ 3 .* relatedView.width .+ 10
        view1.widthAnchor ≥ 3 .* relatedView.width .+ 10
        view1.widthAnchor ≥ 3 .* relatedView.width .+ 10
        view1.widthAnchor ≥ 3 .* relatedView.width .+ 10
        view1.widthAnchor ≥ 3 .* relatedView.width .+ 10
        view1.widthAnchor ≥ 3 .* relatedView.width .+ 10
        view1.widthAnchor ≥ 3 .* relatedView.width .+ 10
        view1.widthAnchor ≥ 3 .* relatedView.width .+ 10
        view1.widthAnchor ≥ 3 .* relatedView.width .+ 10
        view1.widthAnchor ≥ 3 .* relatedView.width .+ 10
        view1.widthAnchor ≥ 3 .* relatedView.width .+ 10
    }

    func impliedcompileView1WidthAnchorGreaterThanOrEqualToWidthMultipliedByConstantPlusConstant() {
        view1 ≥ 3 .* relatedView.width .+ 10
        view1 ≥ 3 .* relatedView.width .+ 10
        view1 ≥ 3 .* relatedView.width .+ 10
        view1 ≥ 3 .* relatedView.width .+ 10
        view1 ≥ 3 .* relatedView.width .+ 10
        view1 ≥ 3 .* relatedView.width .+ 10
        view1 ≥ 3 .* relatedView.width .+ 10
        view1 ≥ 3 .* relatedView.width .+ 10
        view1 ≥ 3 .* relatedView.width .+ 10
        view1 ≥ 3 .* relatedView.width .+ 10
        view1 ≥ 3 .* relatedView.width .+ 10
        view1 ≥ 3 .* relatedView.width .+ 10
        view1 ≥ 3 .* relatedView.width .+ 10
        view1 ≥ 3 .* relatedView.width .+ 10
        view1 ≥ 3 .* relatedView.width .+ 10
        view1 ≥ 3 .* relatedView.width .+ 10
        view1 ≥ 3 .* relatedView.width .+ 10
        view1 ≥ 3 .* relatedView.width .+ 10
        view1 ≥ 3 .* relatedView.width .+ 10
        view1 ≥ 3 .* relatedView.width .+ 10
    }

    func compileView1WidthAnchorGreaterThanOrEqualToWidthPlusConstantDividedByConstant() {
        view1.widthAnchor ≥ (relatedView.width .+ 10) ./ 2
        view1.widthAnchor ≥ (relatedView.width .+ 10) ./ 2
        view1.widthAnchor ≥ (relatedView.width .+ 10) ./ 2
        view1.widthAnchor ≥ (relatedView.width .+ 10) ./ 2
        view1.widthAnchor ≥ (relatedView.width .+ 10) ./ 2
        view1.widthAnchor ≥ (relatedView.width .+ 10) ./ 2
        view1.widthAnchor ≥ (relatedView.width .+ 10) ./ 2
        view1.widthAnchor ≥ (relatedView.width .+ 10) ./ 2
        view1.widthAnchor ≥ (relatedView.width .+ 10) ./ 2
        view1.widthAnchor ≥ (relatedView.width .+ 10) ./ 2
        view1.widthAnchor ≥ (relatedView.width .+ 10) ./ 2
        view1.widthAnchor ≥ (relatedView.width .+ 10) ./ 2
        view1.widthAnchor ≥ (relatedView.width .+ 10) ./ 2
        view1.widthAnchor ≥ (relatedView.width .+ 10) ./ 2
        view1.widthAnchor ≥ (relatedView.width .+ 10) ./ 2
        view1.widthAnchor ≥ (relatedView.width .+ 10) ./ 2
        view1.widthAnchor ≥ (relatedView.width .+ 10) ./ 2
        view1.widthAnchor ≥ (relatedView.width .+ 10) ./ 2
        view1.widthAnchor ≥ (relatedView.width .+ 10) ./ 2
        view1.widthAnchor ≥ (relatedView.width .+ 10) ./ 2
    }

    func impliedcompileView1WidthAnchorGreaterThanOrEqualToWidthPlusConstantDividedByConstant() {
        view1 ≥ (relatedView.width .+ 10) ./ 2
        view1 ≥ (relatedView.width .+ 10) ./ 2
        view1 ≥ (relatedView.width .+ 10) ./ 2
        view1 ≥ (relatedView.width .+ 10) ./ 2
        view1 ≥ (relatedView.width .+ 10) ./ 2
        view1 ≥ (relatedView.width .+ 10) ./ 2
        view1 ≥ (relatedView.width .+ 10) ./ 2
        view1 ≥ (relatedView.width .+ 10) ./ 2
        view1 ≥ (relatedView.width .+ 10) ./ 2
        view1 ≥ (relatedView.width .+ 10) ./ 2
        view1 ≥ (relatedView.width .+ 10) ./ 2
        view1 ≥ (relatedView.width .+ 10) ./ 2
        view1 ≥ (relatedView.width .+ 10) ./ 2
        view1 ≥ (relatedView.width .+ 10) ./ 2
        view1 ≥ (relatedView.width .+ 10) ./ 2
        view1 ≥ (relatedView.width .+ 10) ./ 2
        view1 ≥ (relatedView.width .+ 10) ./ 2
        view1 ≥ (relatedView.width .+ 10) ./ 2
        view1 ≥ (relatedView.width .+ 10) ./ 2
        view1 ≥ (relatedView.width .+ 10) ./ 2
    }

// MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func compileView1WidthAnchorGreaterThanOrEqualToWidthPlusConstantMultiplyingConstantWithPriority() {
        view1.widthAnchor ≥ (relatedView.width .+ 10) .* 3 ~ .low
        view1.widthAnchor ≥ (relatedView.width .+ 10) .* 3 ~ .low
        view1.widthAnchor ≥ (relatedView.width .+ 10) .* 3 ~ .low
        view1.widthAnchor ≥ (relatedView.width .+ 10) .* 3 ~ .low
        view1.widthAnchor ≥ (relatedView.width .+ 10) .* 3 ~ .low
        view1.widthAnchor ≥ (relatedView.width .+ 10) .* 3 ~ .low
        view1.widthAnchor ≥ (relatedView.width .+ 10) .* 3 ~ .low
        view1.widthAnchor ≥ (relatedView.width .+ 10) .* 3 ~ .low
        view1.widthAnchor ≥ (relatedView.width .+ 10) .* 3 ~ .low
        view1.widthAnchor ≥ (relatedView.width .+ 10) .* 3 ~ .low
        view1.widthAnchor ≥ (relatedView.width .+ 10) .* 3 ~ .low
        view1.widthAnchor ≥ (relatedView.width .+ 10) .* 3 ~ .low
        view1.widthAnchor ≥ (relatedView.width .+ 10) .* 3 ~ .low
        view1.widthAnchor ≥ (relatedView.width .+ 10) .* 3 ~ .low
        view1.widthAnchor ≥ (relatedView.width .+ 10) .* 3 ~ .low
        view1.widthAnchor ≥ (relatedView.width .+ 10) .* 3 ~ .low
        view1.widthAnchor ≥ (relatedView.width .+ 10) .* 3 ~ .low
        view1.widthAnchor ≥ (relatedView.width .+ 10) .* 3 ~ .low
        view1.widthAnchor ≥ (relatedView.width .+ 10) .* 3 ~ .low
        view1.widthAnchor ≥ (relatedView.width .+ 10) .* 3 ~ .low
    }

    func impliedcompileView1WidthAnchorGreaterThanOrEqualToWidthPlusConstantMultiplyingConstantWithPriority() {
        view1 ≥ (relatedView.width .+ 10) .* 3 ~ .low
        view1 ≥ (relatedView.width .+ 10) .* 3 ~ .low
        view1 ≥ (relatedView.width .+ 10) .* 3 ~ .low
        view1 ≥ (relatedView.width .+ 10) .* 3 ~ .low
        view1 ≥ (relatedView.width .+ 10) .* 3 ~ .low
        view1 ≥ (relatedView.width .+ 10) .* 3 ~ .low
        view1 ≥ (relatedView.width .+ 10) .* 3 ~ .low
        view1 ≥ (relatedView.width .+ 10) .* 3 ~ .low
        view1 ≥ (relatedView.width .+ 10) .* 3 ~ .low
        view1 ≥ (relatedView.width .+ 10) .* 3 ~ .low
        view1 ≥ (relatedView.width .+ 10) .* 3 ~ .low
        view1 ≥ (relatedView.width .+ 10) .* 3 ~ .low
        view1 ≥ (relatedView.width .+ 10) .* 3 ~ .low
        view1 ≥ (relatedView.width .+ 10) .* 3 ~ .low
        view1 ≥ (relatedView.width .+ 10) .* 3 ~ .low
        view1 ≥ (relatedView.width .+ 10) .* 3 ~ .low
        view1 ≥ (relatedView.width .+ 10) .* 3 ~ .low
        view1 ≥ (relatedView.width .+ 10) .* 3 ~ .low
        view1 ≥ (relatedView.width .+ 10) .* 3 ~ .low
        view1 ≥ (relatedView.width .+ 10) .* 3 ~ .low
    }

    func compileView1WidthAnchorGreaterThanOrEqualToWidthPlusConstantMultipliedByConstantWithPriority() {
        view1.widthAnchor ≥ 3 .* (relatedView.width .+ 10) ~ .low
        view1.widthAnchor ≥ 3 .* (relatedView.width .+ 10) ~ .low
        view1.widthAnchor ≥ 3 .* (relatedView.width .+ 10) ~ .low
        view1.widthAnchor ≥ 3 .* (relatedView.width .+ 10) ~ .low
        view1.widthAnchor ≥ 3 .* (relatedView.width .+ 10) ~ .low
        view1.widthAnchor ≥ 3 .* (relatedView.width .+ 10) ~ .low
        view1.widthAnchor ≥ 3 .* (relatedView.width .+ 10) ~ .low
        view1.widthAnchor ≥ 3 .* (relatedView.width .+ 10) ~ .low
        view1.widthAnchor ≥ 3 .* (relatedView.width .+ 10) ~ .low
        view1.widthAnchor ≥ 3 .* (relatedView.width .+ 10) ~ .low
        view1.widthAnchor ≥ 3 .* (relatedView.width .+ 10) ~ .low
        view1.widthAnchor ≥ 3 .* (relatedView.width .+ 10) ~ .low
        view1.widthAnchor ≥ 3 .* (relatedView.width .+ 10) ~ .low
        view1.widthAnchor ≥ 3 .* (relatedView.width .+ 10) ~ .low
        view1.widthAnchor ≥ 3 .* (relatedView.width .+ 10) ~ .low
        view1.widthAnchor ≥ 3 .* (relatedView.width .+ 10) ~ .low
        view1.widthAnchor ≥ 3 .* (relatedView.width .+ 10) ~ .low
        view1.widthAnchor ≥ 3 .* (relatedView.width .+ 10) ~ .low
        view1.widthAnchor ≥ 3 .* (relatedView.width .+ 10) ~ .low
        view1.widthAnchor ≥ 3 .* (relatedView.width .+ 10) ~ .low
    }

    func impliedcompileView1WidthAnchorGreaterThanOrEqualToWidthPlusConstantMultipliedByConstantWithPriority() {
        view1 ≥ 3 .* (relatedView.width .+ 10) ~ .low
        view1 ≥ 3 .* (relatedView.width .+ 10) ~ .low
        view1 ≥ 3 .* (relatedView.width .+ 10) ~ .low
        view1 ≥ 3 .* (relatedView.width .+ 10) ~ .low
        view1 ≥ 3 .* (relatedView.width .+ 10) ~ .low
        view1 ≥ 3 .* (relatedView.width .+ 10) ~ .low
        view1 ≥ 3 .* (relatedView.width .+ 10) ~ .low
        view1 ≥ 3 .* (relatedView.width .+ 10) ~ .low
        view1 ≥ 3 .* (relatedView.width .+ 10) ~ .low
        view1 ≥ 3 .* (relatedView.width .+ 10) ~ .low
        view1 ≥ 3 .* (relatedView.width .+ 10) ~ .low
        view1 ≥ 3 .* (relatedView.width .+ 10) ~ .low
        view1 ≥ 3 .* (relatedView.width .+ 10) ~ .low
        view1 ≥ 3 .* (relatedView.width .+ 10) ~ .low
        view1 ≥ 3 .* (relatedView.width .+ 10) ~ .low
        view1 ≥ 3 .* (relatedView.width .+ 10) ~ .low
        view1 ≥ 3 .* (relatedView.width .+ 10) ~ .low
        view1 ≥ 3 .* (relatedView.width .+ 10) ~ .low
        view1 ≥ 3 .* (relatedView.width .+ 10) ~ .low
        view1 ≥ 3 .* (relatedView.width .+ 10) ~ .low
    }

    func compileView1WidthAnchorGreaterThanOrEqualToWidthMultipliedByConstantPlusConstantWithPriority() {
        view1.widthAnchor ≥ 3 .* relatedView.width .+ 10 ~ .low
        view1.widthAnchor ≥ 3 .* relatedView.width .+ 10 ~ .low
        view1.widthAnchor ≥ 3 .* relatedView.width .+ 10 ~ .low
        view1.widthAnchor ≥ 3 .* relatedView.width .+ 10 ~ .low
        view1.widthAnchor ≥ 3 .* relatedView.width .+ 10 ~ .low
        view1.widthAnchor ≥ 3 .* relatedView.width .+ 10 ~ .low
        view1.widthAnchor ≥ 3 .* relatedView.width .+ 10 ~ .low
        view1.widthAnchor ≥ 3 .* relatedView.width .+ 10 ~ .low
        view1.widthAnchor ≥ 3 .* relatedView.width .+ 10 ~ .low
        view1.widthAnchor ≥ 3 .* relatedView.width .+ 10 ~ .low
        view1.widthAnchor ≥ 3 .* relatedView.width .+ 10 ~ .low
        view1.widthAnchor ≥ 3 .* relatedView.width .+ 10 ~ .low
        view1.widthAnchor ≥ 3 .* relatedView.width .+ 10 ~ .low
        view1.widthAnchor ≥ 3 .* relatedView.width .+ 10 ~ .low
        view1.widthAnchor ≥ 3 .* relatedView.width .+ 10 ~ .low
        view1.widthAnchor ≥ 3 .* relatedView.width .+ 10 ~ .low
        view1.widthAnchor ≥ 3 .* relatedView.width .+ 10 ~ .low
        view1.widthAnchor ≥ 3 .* relatedView.width .+ 10 ~ .low
        view1.widthAnchor ≥ 3 .* relatedView.width .+ 10 ~ .low
        view1.widthAnchor ≥ 3 .* relatedView.width .+ 10 ~ .low
    }

    func impliedcompileView1WidthAnchorGreaterThanOrEqualToWidthMultipliedByConstantPlusConstantWithPriority() {
        view1 ≥ 3 .* relatedView.width .+ 10 ~ .low
        view1 ≥ 3 .* relatedView.width .+ 10 ~ .low
        view1 ≥ 3 .* relatedView.width .+ 10 ~ .low
        view1 ≥ 3 .* relatedView.width .+ 10 ~ .low
        view1 ≥ 3 .* relatedView.width .+ 10 ~ .low
        view1 ≥ 3 .* relatedView.width .+ 10 ~ .low
        view1 ≥ 3 .* relatedView.width .+ 10 ~ .low
        view1 ≥ 3 .* relatedView.width .+ 10 ~ .low
        view1 ≥ 3 .* relatedView.width .+ 10 ~ .low
        view1 ≥ 3 .* relatedView.width .+ 10 ~ .low
        view1 ≥ 3 .* relatedView.width .+ 10 ~ .low
        view1 ≥ 3 .* relatedView.width .+ 10 ~ .low
        view1 ≥ 3 .* relatedView.width .+ 10 ~ .low
        view1 ≥ 3 .* relatedView.width .+ 10 ~ .low
        view1 ≥ 3 .* relatedView.width .+ 10 ~ .low
        view1 ≥ 3 .* relatedView.width .+ 10 ~ .low
        view1 ≥ 3 .* relatedView.width .+ 10 ~ .low
        view1 ≥ 3 .* relatedView.width .+ 10 ~ .low
        view1 ≥ 3 .* relatedView.width .+ 10 ~ .low
        view1 ≥ 3 .* relatedView.width .+ 10 ~ .low
    }

    func compileView1WidthAnchorGreaterThanOrEqualToWidthPlusConstantDividedByConstantWithPriority() {
        view1.widthAnchor ≥ (relatedView.width .+ 10) ./ 2 ~ .low
        view1.widthAnchor ≥ (relatedView.width .+ 10) ./ 2 ~ .low
        view1.widthAnchor ≥ (relatedView.width .+ 10) ./ 2 ~ .low
        view1.widthAnchor ≥ (relatedView.width .+ 10) ./ 2 ~ .low
        view1.widthAnchor ≥ (relatedView.width .+ 10) ./ 2 ~ .low
        view1.widthAnchor ≥ (relatedView.width .+ 10) ./ 2 ~ .low
        view1.widthAnchor ≥ (relatedView.width .+ 10) ./ 2 ~ .low
        view1.widthAnchor ≥ (relatedView.width .+ 10) ./ 2 ~ .low
        view1.widthAnchor ≥ (relatedView.width .+ 10) ./ 2 ~ .low
        view1.widthAnchor ≥ (relatedView.width .+ 10) ./ 2 ~ .low
        view1.widthAnchor ≥ (relatedView.width .+ 10) ./ 2 ~ .low
        view1.widthAnchor ≥ (relatedView.width .+ 10) ./ 2 ~ .low
        view1.widthAnchor ≥ (relatedView.width .+ 10) ./ 2 ~ .low
        view1.widthAnchor ≥ (relatedView.width .+ 10) ./ 2 ~ .low
        view1.widthAnchor ≥ (relatedView.width .+ 10) ./ 2 ~ .low
        view1.widthAnchor ≥ (relatedView.width .+ 10) ./ 2 ~ .low
        view1.widthAnchor ≥ (relatedView.width .+ 10) ./ 2 ~ .low
        view1.widthAnchor ≥ (relatedView.width .+ 10) ./ 2 ~ .low
        view1.widthAnchor ≥ (relatedView.width .+ 10) ./ 2 ~ .low
        view1.widthAnchor ≥ (relatedView.width .+ 10) ./ 2 ~ .low
    }

    func impliedcompileView1WidthAnchorGreaterThanOrEqualToWidthPlusConstantDividedByConstantWithPriority() {
        view1 ≥ (relatedView.width .+ 10) ./ 2 ~ .low
        view1 ≥ (relatedView.width .+ 10) ./ 2 ~ .low
        view1 ≥ (relatedView.width .+ 10) ./ 2 ~ .low
        view1 ≥ (relatedView.width .+ 10) ./ 2 ~ .low
        view1 ≥ (relatedView.width .+ 10) ./ 2 ~ .low
        view1 ≥ (relatedView.width .+ 10) ./ 2 ~ .low
        view1 ≥ (relatedView.width .+ 10) ./ 2 ~ .low
        view1 ≥ (relatedView.width .+ 10) ./ 2 ~ .low
        view1 ≥ (relatedView.width .+ 10) ./ 2 ~ .low
        view1 ≥ (relatedView.width .+ 10) ./ 2 ~ .low
        view1 ≥ (relatedView.width .+ 10) ./ 2 ~ .low
        view1 ≥ (relatedView.width .+ 10) ./ 2 ~ .low
        view1 ≥ (relatedView.width .+ 10) ./ 2 ~ .low
        view1 ≥ (relatedView.width .+ 10) ./ 2 ~ .low
        view1 ≥ (relatedView.width .+ 10) ./ 2 ~ .low
        view1 ≥ (relatedView.width .+ 10) ./ 2 ~ .low
        view1 ≥ (relatedView.width .+ 10) ./ 2 ~ .low
        view1 ≥ (relatedView.width .+ 10) ./ 2 ~ .low
        view1 ≥ (relatedView.width .+ 10) ./ 2 ~ .low
        view1 ≥ (relatedView.width .+ 10) ./ 2 ~ .low
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func compileView1WidthAnchorGreaterThanOrEqualToWidthPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        view1.widthAnchor ≥ (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1.widthAnchor ≥ (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1.widthAnchor ≥ (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1.widthAnchor ≥ (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1.widthAnchor ≥ (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1.widthAnchor ≥ (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1.widthAnchor ≥ (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1.widthAnchor ≥ (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1.widthAnchor ≥ (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1.widthAnchor ≥ (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1.widthAnchor ≥ (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1.widthAnchor ≥ (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1.widthAnchor ≥ (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1.widthAnchor ≥ (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1.widthAnchor ≥ (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1.widthAnchor ≥ (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1.widthAnchor ≥ (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1.widthAnchor ≥ (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1.widthAnchor ≥ (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1.widthAnchor ≥ (relatedView.width .+ 10) .* 3  ~ .high .- 1
    }

    func impliedcompileView1WidthAnchorGreaterThanOrEqualToWidthPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        view1 ≥ (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1 ≥ (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1 ≥ (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1 ≥ (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1 ≥ (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1 ≥ (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1 ≥ (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1 ≥ (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1 ≥ (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1 ≥ (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1 ≥ (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1 ≥ (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1 ≥ (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1 ≥ (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1 ≥ (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1 ≥ (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1 ≥ (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1 ≥ (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1 ≥ (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1 ≥ (relatedView.width .+ 10) .* 3  ~ .high .- 1
    }

    func compileView1WidthAnchorGreaterThanOrEqualToWidthPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        view1.widthAnchor ≥ 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1.widthAnchor ≥ 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1.widthAnchor ≥ 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1.widthAnchor ≥ 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1.widthAnchor ≥ 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1.widthAnchor ≥ 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1.widthAnchor ≥ 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1.widthAnchor ≥ 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1.widthAnchor ≥ 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1.widthAnchor ≥ 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1.widthAnchor ≥ 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1.widthAnchor ≥ 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1.widthAnchor ≥ 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1.widthAnchor ≥ 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1.widthAnchor ≥ 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1.widthAnchor ≥ 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1.widthAnchor ≥ 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1.widthAnchor ≥ 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1.widthAnchor ≥ 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1.widthAnchor ≥ 3 .* (relatedView.width .+ 10)  ~ .high .- 1
    }

    func impliedcompileView1WidthAnchorGreaterThanOrEqualToWidthPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        view1 ≥ 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1 ≥ 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1 ≥ 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1 ≥ 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1 ≥ 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1 ≥ 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1 ≥ 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1 ≥ 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1 ≥ 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1 ≥ 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1 ≥ 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1 ≥ 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1 ≥ 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1 ≥ 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1 ≥ 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1 ≥ 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1 ≥ 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1 ≥ 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1 ≥ 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1 ≥ 3 .* (relatedView.width .+ 10)  ~ .high .- 1
    }

    func compileView1WidthAnchorGreaterThanOrEqualToWidthMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        view1.widthAnchor ≥ 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1.widthAnchor ≥ 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1.widthAnchor ≥ 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1.widthAnchor ≥ 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1.widthAnchor ≥ 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1.widthAnchor ≥ 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1.widthAnchor ≥ 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1.widthAnchor ≥ 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1.widthAnchor ≥ 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1.widthAnchor ≥ 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1.widthAnchor ≥ 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1.widthAnchor ≥ 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1.widthAnchor ≥ 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1.widthAnchor ≥ 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1.widthAnchor ≥ 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1.widthAnchor ≥ 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1.widthAnchor ≥ 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1.widthAnchor ≥ 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1.widthAnchor ≥ 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1.widthAnchor ≥ 3 .* relatedView.width .+ 10  ~ .high .- 1
    }

    func impliedcompileView1WidthAnchorGreaterThanOrEqualToWidthMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        view1 ≥ 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1 ≥ 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1 ≥ 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1 ≥ 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1 ≥ 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1 ≥ 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1 ≥ 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1 ≥ 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1 ≥ 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1 ≥ 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1 ≥ 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1 ≥ 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1 ≥ 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1 ≥ 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1 ≥ 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1 ≥ 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1 ≥ 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1 ≥ 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1 ≥ 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1 ≥ 3 .* relatedView.width .+ 10  ~ .high .- 1
    }

    func compileView1WidthAnchorGreaterThanOrEqualToWidthPlusConstantDividedByConstantWithPriorityArithmetic() {
        view1.widthAnchor ≥ (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1.widthAnchor ≥ (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1.widthAnchor ≥ (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1.widthAnchor ≥ (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1.widthAnchor ≥ (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1.widthAnchor ≥ (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1.widthAnchor ≥ (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1.widthAnchor ≥ (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1.widthAnchor ≥ (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1.widthAnchor ≥ (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1.widthAnchor ≥ (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1.widthAnchor ≥ (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1.widthAnchor ≥ (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1.widthAnchor ≥ (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1.widthAnchor ≥ (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1.widthAnchor ≥ (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1.widthAnchor ≥ (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1.widthAnchor ≥ (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1.widthAnchor ≥ (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1.widthAnchor ≥ (relatedView.width .+ 10) ./ 2  ~ .high .- 1
    }

    func impliedcompileView1WidthAnchorGreaterThanOrEqualToWidthPlusConstantDividedByConstantWithPriorityArithmetic() {
        view1 ≥ (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1 ≥ (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1 ≥ (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1 ≥ (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1 ≥ (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1 ≥ (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1 ≥ (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1 ≥ (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1 ≥ (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1 ≥ (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1 ≥ (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1 ≥ (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1 ≥ (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1 ≥ (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1 ≥ (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1 ≥ (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1 ≥ (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1 ≥ (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1 ≥ (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1 ≥ (relatedView.width .+ 10) ./ 2  ~ .high .- 1
    }

    // MARK: Equal

    func compileView1WidthAnchorEqualToWidth() {
        view1.widthAnchor .= relatedView.width
        view1.widthAnchor .= relatedView.width
        view1.widthAnchor .= relatedView.width
        view1.widthAnchor .= relatedView.width
        view1.widthAnchor .= relatedView.width
        view1.widthAnchor .= relatedView.width
        view1.widthAnchor .= relatedView.width
        view1.widthAnchor .= relatedView.width
        view1.widthAnchor .= relatedView.width
        view1.widthAnchor .= relatedView.width
        view1.widthAnchor .= relatedView.width
        view1.widthAnchor .= relatedView.width
        view1.widthAnchor .= relatedView.width
        view1.widthAnchor .= relatedView.width
        view1.widthAnchor .= relatedView.width
        view1.widthAnchor .= relatedView.width
        view1.widthAnchor .= relatedView.width
        view1.widthAnchor .= relatedView.width
        view1.widthAnchor .= relatedView.width
        view1.widthAnchor .= relatedView.width
    }

    func impliedcompileView1WidthAnchorEqualToWidth() {
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

    // MARK: Equal with constant
    func compileView1WidthAnchorEqualToWidthPlusConstant() {
        view1.widthAnchor .= relatedView.width .+ 10
        view1.widthAnchor .= relatedView.width .+ 10
        view1.widthAnchor .= relatedView.width .+ 10
        view1.widthAnchor .= relatedView.width .+ 10
        view1.widthAnchor .= relatedView.width .+ 10
        view1.widthAnchor .= relatedView.width .+ 10
        view1.widthAnchor .= relatedView.width .+ 10
        view1.widthAnchor .= relatedView.width .+ 10
        view1.widthAnchor .= relatedView.width .+ 10
        view1.widthAnchor .= relatedView.width .+ 10
        view1.widthAnchor .= relatedView.width .+ 10
        view1.widthAnchor .= relatedView.width .+ 10
        view1.widthAnchor .= relatedView.width .+ 10
        view1.widthAnchor .= relatedView.width .+ 10
        view1.widthAnchor .= relatedView.width .+ 10
        view1.widthAnchor .= relatedView.width .+ 10
        view1.widthAnchor .= relatedView.width .+ 10
        view1.widthAnchor .= relatedView.width .+ 10
        view1.widthAnchor .= relatedView.width .+ 10
        view1.widthAnchor .= relatedView.width .+ 10
    }

    func impliedcompileView1WidthAnchorEqualToWidthPlusConstant() {
        view1 .= relatedView.width .+ 10
        view1 .= relatedView.width .+ 10
        view1 .= relatedView.width .+ 10
        view1 .= relatedView.width .+ 10
        view1 .= relatedView.width .+ 10
        view1 .= relatedView.width .+ 10
        view1 .= relatedView.width .+ 10
        view1 .= relatedView.width .+ 10
        view1 .= relatedView.width .+ 10
        view1 .= relatedView.width .+ 10
        view1 .= relatedView.width .+ 10
        view1 .= relatedView.width .+ 10
        view1 .= relatedView.width .+ 10
        view1 .= relatedView.width .+ 10
        view1 .= relatedView.width .+ 10
        view1 .= relatedView.width .+ 10
        view1 .= relatedView.width .+ 10
        view1 .= relatedView.width .+ 10
        view1 .= relatedView.width .+ 10
        view1 .= relatedView.width .+ 10
    }

    func compileView1WidthAnchorEqualToWidthMinusConstant() {
        view1.widthAnchor .= relatedView.width .- 10
        view1.widthAnchor .= relatedView.width .- 10
        view1.widthAnchor .= relatedView.width .- 10
        view1.widthAnchor .= relatedView.width .- 10
        view1.widthAnchor .= relatedView.width .- 10
        view1.widthAnchor .= relatedView.width .- 10
        view1.widthAnchor .= relatedView.width .- 10
        view1.widthAnchor .= relatedView.width .- 10
        view1.widthAnchor .= relatedView.width .- 10
        view1.widthAnchor .= relatedView.width .- 10
        view1.widthAnchor .= relatedView.width .- 10
        view1.widthAnchor .= relatedView.width .- 10
        view1.widthAnchor .= relatedView.width .- 10
        view1.widthAnchor .= relatedView.width .- 10
        view1.widthAnchor .= relatedView.width .- 10
        view1.widthAnchor .= relatedView.width .- 10
        view1.widthAnchor .= relatedView.width .- 10
        view1.widthAnchor .= relatedView.width .- 10
        view1.widthAnchor .= relatedView.width .- 10
        view1.widthAnchor .= relatedView.width .- 10
    }

    func impliedcompileView1WidthAnchorEqualToWidthMinusConstant() {
        view1 .= relatedView.width .- 10
        view1 .= relatedView.width .- 10
        view1 .= relatedView.width .- 10
        view1 .= relatedView.width .- 10
        view1 .= relatedView.width .- 10
        view1 .= relatedView.width .- 10
        view1 .= relatedView.width .- 10
        view1 .= relatedView.width .- 10
        view1 .= relatedView.width .- 10
        view1 .= relatedView.width .- 10
        view1 .= relatedView.width .- 10
        view1 .= relatedView.width .- 10
        view1 .= relatedView.width .- 10
        view1 .= relatedView.width .- 10
        view1 .= relatedView.width .- 10
        view1 .= relatedView.width .- 10
        view1 .= relatedView.width .- 10
        view1 .= relatedView.width .- 10
        view1 .= relatedView.width .- 10
        view1 .= relatedView.width .- 10
    }

    // MARK: Equal with multiplier
    func compileView1WidthAnchorEqualToWidthMultiplyingConstant() {
        view1.widthAnchor .= relatedView.width .* 3
        view1.widthAnchor .= relatedView.width .* 3
        view1.widthAnchor .= relatedView.width .* 3
        view1.widthAnchor .= relatedView.width .* 3
        view1.widthAnchor .= relatedView.width .* 3
        view1.widthAnchor .= relatedView.width .* 3
        view1.widthAnchor .= relatedView.width .* 3
        view1.widthAnchor .= relatedView.width .* 3
        view1.widthAnchor .= relatedView.width .* 3
        view1.widthAnchor .= relatedView.width .* 3
        view1.widthAnchor .= relatedView.width .* 3
        view1.widthAnchor .= relatedView.width .* 3
        view1.widthAnchor .= relatedView.width .* 3
        view1.widthAnchor .= relatedView.width .* 3
        view1.widthAnchor .= relatedView.width .* 3
        view1.widthAnchor .= relatedView.width .* 3
        view1.widthAnchor .= relatedView.width .* 3
        view1.widthAnchor .= relatedView.width .* 3
        view1.widthAnchor .= relatedView.width .* 3
        view1.widthAnchor .= relatedView.width .* 3
    }

    func impliedcompileView1WidthAnchorEqualToWidthMultiplyingConstant() {
        view1 .= relatedView.width .* 3
        view1 .= relatedView.width .* 3
        view1 .= relatedView.width .* 3
        view1 .= relatedView.width .* 3
        view1 .= relatedView.width .* 3
        view1 .= relatedView.width .* 3
        view1 .= relatedView.width .* 3
        view1 .= relatedView.width .* 3
        view1 .= relatedView.width .* 3
        view1 .= relatedView.width .* 3
        view1 .= relatedView.width .* 3
        view1 .= relatedView.width .* 3
        view1 .= relatedView.width .* 3
        view1 .= relatedView.width .* 3
        view1 .= relatedView.width .* 3
        view1 .= relatedView.width .* 3
        view1 .= relatedView.width .* 3
        view1 .= relatedView.width .* 3
        view1 .= relatedView.width .* 3
        view1 .= relatedView.width .* 3
    }

    func compileView1WidthAnchorEqualToWidthMultipliedByConstant() {
        view1.widthAnchor .= 3 .* relatedView.width
        view1.widthAnchor .= 3 .* relatedView.width
        view1.widthAnchor .= 3 .* relatedView.width
        view1.widthAnchor .= 3 .* relatedView.width
        view1.widthAnchor .= 3 .* relatedView.width
        view1.widthAnchor .= 3 .* relatedView.width
        view1.widthAnchor .= 3 .* relatedView.width
        view1.widthAnchor .= 3 .* relatedView.width
        view1.widthAnchor .= 3 .* relatedView.width
        view1.widthAnchor .= 3 .* relatedView.width
        view1.widthAnchor .= 3 .* relatedView.width
        view1.widthAnchor .= 3 .* relatedView.width
        view1.widthAnchor .= 3 .* relatedView.width
        view1.widthAnchor .= 3 .* relatedView.width
        view1.widthAnchor .= 3 .* relatedView.width
        view1.widthAnchor .= 3 .* relatedView.width
        view1.widthAnchor .= 3 .* relatedView.width
        view1.widthAnchor .= 3 .* relatedView.width
        view1.widthAnchor .= 3 .* relatedView.width
        view1.widthAnchor .= 3 .* relatedView.width
    }

    func impliedcompileView1WidthAnchorEqualToWidthMultipliedByConstant() {
        view1 .= 3 .* relatedView.width
        view1 .= 3 .* relatedView.width
        view1 .= 3 .* relatedView.width
        view1 .= 3 .* relatedView.width
        view1 .= 3 .* relatedView.width
        view1 .= 3 .* relatedView.width
        view1 .= 3 .* relatedView.width
        view1 .= 3 .* relatedView.width
        view1 .= 3 .* relatedView.width
        view1 .= 3 .* relatedView.width
        view1 .= 3 .* relatedView.width
        view1 .= 3 .* relatedView.width
        view1 .= 3 .* relatedView.width
        view1 .= 3 .* relatedView.width
        view1 .= 3 .* relatedView.width
        view1 .= 3 .* relatedView.width
        view1 .= 3 .* relatedView.width
        view1 .= 3 .* relatedView.width
        view1 .= 3 .* relatedView.width
        view1 .= 3 .* relatedView.width
    }

    func compileView1WidthAnchorEqualToWidthDividedByConstant() {
        view1.widthAnchor .= relatedView.width ./ 2
        view1.widthAnchor .= relatedView.width ./ 2
        view1.widthAnchor .= relatedView.width ./ 2
        view1.widthAnchor .= relatedView.width ./ 2
        view1.widthAnchor .= relatedView.width ./ 2
        view1.widthAnchor .= relatedView.width ./ 2
        view1.widthAnchor .= relatedView.width ./ 2
        view1.widthAnchor .= relatedView.width ./ 2
        view1.widthAnchor .= relatedView.width ./ 2
        view1.widthAnchor .= relatedView.width ./ 2
        view1.widthAnchor .= relatedView.width ./ 2
        view1.widthAnchor .= relatedView.width ./ 2
        view1.widthAnchor .= relatedView.width ./ 2
        view1.widthAnchor .= relatedView.width ./ 2
        view1.widthAnchor .= relatedView.width ./ 2
        view1.widthAnchor .= relatedView.width ./ 2
        view1.widthAnchor .= relatedView.width ./ 2
        view1.widthAnchor .= relatedView.width ./ 2
        view1.widthAnchor .= relatedView.width ./ 2
        view1.widthAnchor .= relatedView.width ./ 2
    }

    func impliedcompileView1WidthAnchorEqualToWidthDividedByConstant() {
        view1 .= relatedView.width ./ 2
        view1 .= relatedView.width ./ 2
        view1 .= relatedView.width ./ 2
        view1 .= relatedView.width ./ 2
        view1 .= relatedView.width ./ 2
        view1 .= relatedView.width ./ 2
        view1 .= relatedView.width ./ 2
        view1 .= relatedView.width ./ 2
        view1 .= relatedView.width ./ 2
        view1 .= relatedView.width ./ 2
        view1 .= relatedView.width ./ 2
        view1 .= relatedView.width ./ 2
        view1 .= relatedView.width ./ 2
        view1 .= relatedView.width ./ 2
        view1 .= relatedView.width ./ 2
        view1 .= relatedView.width ./ 2
        view1 .= relatedView.width ./ 2
        view1 .= relatedView.width ./ 2
        view1 .= relatedView.width ./ 2
        view1 .= relatedView.width ./ 2
    }

    // MARK: Equal Prioritized
    func compileView1WidthAnchorEqualToWidthWithPriority() {
        view1.widthAnchor .= relatedView.width ~ .low
        view1.widthAnchor .= relatedView.width ~ .low
        view1.widthAnchor .= relatedView.width ~ .low
        view1.widthAnchor .= relatedView.width ~ .low
        view1.widthAnchor .= relatedView.width ~ .low
        view1.widthAnchor .= relatedView.width ~ .low
        view1.widthAnchor .= relatedView.width ~ .low
        view1.widthAnchor .= relatedView.width ~ .low
        view1.widthAnchor .= relatedView.width ~ .low
        view1.widthAnchor .= relatedView.width ~ .low
        view1.widthAnchor .= relatedView.width ~ .low
        view1.widthAnchor .= relatedView.width ~ .low
        view1.widthAnchor .= relatedView.width ~ .low
        view1.widthAnchor .= relatedView.width ~ .low
        view1.widthAnchor .= relatedView.width ~ .low
        view1.widthAnchor .= relatedView.width ~ .low
        view1.widthAnchor .= relatedView.width ~ .low
        view1.widthAnchor .= relatedView.width ~ .low
        view1.widthAnchor .= relatedView.width ~ .low
        view1.widthAnchor .= relatedView.width ~ .low
    }

    func impliedcompileView1WidthAnchorEqualToWidthWithPriority() {
        view1 .= relatedView.width ~ .low
        view1 .= relatedView.width ~ .low
        view1 .= relatedView.width ~ .low
        view1 .= relatedView.width ~ .low
        view1 .= relatedView.width ~ .low
        view1 .= relatedView.width ~ .low
        view1 .= relatedView.width ~ .low
        view1 .= relatedView.width ~ .low
        view1 .= relatedView.width ~ .low
        view1 .= relatedView.width ~ .low
        view1 .= relatedView.width ~ .low
        view1 .= relatedView.width ~ .low
        view1 .= relatedView.width ~ .low
        view1 .= relatedView.width ~ .low
        view1 .= relatedView.width ~ .low
        view1 .= relatedView.width ~ .low
        view1 .= relatedView.width ~ .low
        view1 .= relatedView.width ~ .low
        view1 .= relatedView.width ~ .low
        view1 .= relatedView.width ~ .low
    }

    func compileView1WidthAnchorEqualToWidthWithPriorityLiteral() {
        view1.widthAnchor .= relatedView.width ~ 300
        view1.widthAnchor .= relatedView.width ~ 300
        view1.widthAnchor .= relatedView.width ~ 300
        view1.widthAnchor .= relatedView.width ~ 300
        view1.widthAnchor .= relatedView.width ~ 300
        view1.widthAnchor .= relatedView.width ~ 300
        view1.widthAnchor .= relatedView.width ~ 300
        view1.widthAnchor .= relatedView.width ~ 300
        view1.widthAnchor .= relatedView.width ~ 300
        view1.widthAnchor .= relatedView.width ~ 300
        view1.widthAnchor .= relatedView.width ~ 300
        view1.widthAnchor .= relatedView.width ~ 300
        view1.widthAnchor .= relatedView.width ~ 300
        view1.widthAnchor .= relatedView.width ~ 300
        view1.widthAnchor .= relatedView.width ~ 300
        view1.widthAnchor .= relatedView.width ~ 300
        view1.widthAnchor .= relatedView.width ~ 300
        view1.widthAnchor .= relatedView.width ~ 300
        view1.widthAnchor .= relatedView.width ~ 300
        view1.widthAnchor .= relatedView.width ~ 300
    }

    func impliedcompileView1WidthAnchorEqualToWidthWithPriorityLiteral() {
        view1 .= relatedView.width ~ 300
        view1 .= relatedView.width ~ 300
        view1 .= relatedView.width ~ 300
        view1 .= relatedView.width ~ 300
        view1 .= relatedView.width ~ 300
        view1 .= relatedView.width ~ 300
        view1 .= relatedView.width ~ 300
        view1 .= relatedView.width ~ 300
        view1 .= relatedView.width ~ 300
        view1 .= relatedView.width ~ 300
        view1 .= relatedView.width ~ 300
        view1 .= relatedView.width ~ 300
        view1 .= relatedView.width ~ 300
        view1 .= relatedView.width ~ 300
        view1 .= relatedView.width ~ 300
        view1 .= relatedView.width ~ 300
        view1 .= relatedView.width ~ 300
        view1 .= relatedView.width ~ 300
        view1 .= relatedView.width ~ 300
        view1 .= relatedView.width ~ 300
    }

    func compileView1WidthAnchorEqualToWidthWithPriorityArithmetic() {
        view1.widthAnchor .= relatedView.width ~ .high .- 1
        view1.widthAnchor .= relatedView.width ~ .high .- 1
        view1.widthAnchor .= relatedView.width ~ .high .- 1
        view1.widthAnchor .= relatedView.width ~ .high .- 1
        view1.widthAnchor .= relatedView.width ~ .high .- 1
        view1.widthAnchor .= relatedView.width ~ .high .- 1
        view1.widthAnchor .= relatedView.width ~ .high .- 1
        view1.widthAnchor .= relatedView.width ~ .high .- 1
        view1.widthAnchor .= relatedView.width ~ .high .- 1
        view1.widthAnchor .= relatedView.width ~ .high .- 1
        view1.widthAnchor .= relatedView.width ~ .high .- 1
        view1.widthAnchor .= relatedView.width ~ .high .- 1
        view1.widthAnchor .= relatedView.width ~ .high .- 1
        view1.widthAnchor .= relatedView.width ~ .high .- 1
        view1.widthAnchor .= relatedView.width ~ .high .- 1
        view1.widthAnchor .= relatedView.width ~ .high .- 1
        view1.widthAnchor .= relatedView.width ~ .high .- 1
        view1.widthAnchor .= relatedView.width ~ .high .- 1
        view1.widthAnchor .= relatedView.width ~ .high .- 1
        view1.widthAnchor .= relatedView.width ~ .high .- 1
    }

    func impliedcompileView1WidthAnchorEqualToWidthWithPriorityArithmetic() {
        view1 .= relatedView.width ~ .high .- 1
        view1 .= relatedView.width ~ .high .- 1
        view1 .= relatedView.width ~ .high .- 1
        view1 .= relatedView.width ~ .high .- 1
        view1 .= relatedView.width ~ .high .- 1
        view1 .= relatedView.width ~ .high .- 1
        view1 .= relatedView.width ~ .high .- 1
        view1 .= relatedView.width ~ .high .- 1
        view1 .= relatedView.width ~ .high .- 1
        view1 .= relatedView.width ~ .high .- 1
        view1 .= relatedView.width ~ .high .- 1
        view1 .= relatedView.width ~ .high .- 1
        view1 .= relatedView.width ~ .high .- 1
        view1 .= relatedView.width ~ .high .- 1
        view1 .= relatedView.width ~ .high .- 1
        view1 .= relatedView.width ~ .high .- 1
        view1 .= relatedView.width ~ .high .- 1
        view1 .= relatedView.width ~ .high .- 1
        view1 .= relatedView.width ~ .high .- 1
        view1 .= relatedView.width ~ .high .- 1
    }

    // MARK: Equal with constant .+ multiplier

    func compileView1WidthAnchorEqualToWidthPlusConstantMultiplyingConstant() {
        view1.widthAnchor .= (relatedView.width .+ 10) .* 3
        view1.widthAnchor .= (relatedView.width .+ 10) .* 3
        view1.widthAnchor .= (relatedView.width .+ 10) .* 3
        view1.widthAnchor .= (relatedView.width .+ 10) .* 3
        view1.widthAnchor .= (relatedView.width .+ 10) .* 3
        view1.widthAnchor .= (relatedView.width .+ 10) .* 3
        view1.widthAnchor .= (relatedView.width .+ 10) .* 3
        view1.widthAnchor .= (relatedView.width .+ 10) .* 3
        view1.widthAnchor .= (relatedView.width .+ 10) .* 3
        view1.widthAnchor .= (relatedView.width .+ 10) .* 3
        view1.widthAnchor .= (relatedView.width .+ 10) .* 3
        view1.widthAnchor .= (relatedView.width .+ 10) .* 3
        view1.widthAnchor .= (relatedView.width .+ 10) .* 3
        view1.widthAnchor .= (relatedView.width .+ 10) .* 3
        view1.widthAnchor .= (relatedView.width .+ 10) .* 3
        view1.widthAnchor .= (relatedView.width .+ 10) .* 3
        view1.widthAnchor .= (relatedView.width .+ 10) .* 3
        view1.widthAnchor .= (relatedView.width .+ 10) .* 3
        view1.widthAnchor .= (relatedView.width .+ 10) .* 3
        view1.widthAnchor .= (relatedView.width .+ 10) .* 3
    }

    func impliedcompileView1WidthAnchorEqualToWidthPlusConstantMultiplyingConstant() {
        view1 .= (relatedView.width .+ 10) .* 3
        view1 .= (relatedView.width .+ 10) .* 3
        view1 .= (relatedView.width .+ 10) .* 3
        view1 .= (relatedView.width .+ 10) .* 3
        view1 .= (relatedView.width .+ 10) .* 3
        view1 .= (relatedView.width .+ 10) .* 3
        view1 .= (relatedView.width .+ 10) .* 3
        view1 .= (relatedView.width .+ 10) .* 3
        view1 .= (relatedView.width .+ 10) .* 3
        view1 .= (relatedView.width .+ 10) .* 3
        view1 .= (relatedView.width .+ 10) .* 3
        view1 .= (relatedView.width .+ 10) .* 3
        view1 .= (relatedView.width .+ 10) .* 3
        view1 .= (relatedView.width .+ 10) .* 3
        view1 .= (relatedView.width .+ 10) .* 3
        view1 .= (relatedView.width .+ 10) .* 3
        view1 .= (relatedView.width .+ 10) .* 3
        view1 .= (relatedView.width .+ 10) .* 3
        view1 .= (relatedView.width .+ 10) .* 3
        view1 .= (relatedView.width .+ 10) .* 3
    }

    func compileView1WidthAnchorEqualToWidthPlusConstantMultipliedByConstant() {
        view1.widthAnchor .= 3 .* (relatedView.width .+ 10)
        view1.widthAnchor .= 3 .* (relatedView.width .+ 10)
        view1.widthAnchor .= 3 .* (relatedView.width .+ 10)
        view1.widthAnchor .= 3 .* (relatedView.width .+ 10)
        view1.widthAnchor .= 3 .* (relatedView.width .+ 10)
        view1.widthAnchor .= 3 .* (relatedView.width .+ 10)
        view1.widthAnchor .= 3 .* (relatedView.width .+ 10)
        view1.widthAnchor .= 3 .* (relatedView.width .+ 10)
        view1.widthAnchor .= 3 .* (relatedView.width .+ 10)
        view1.widthAnchor .= 3 .* (relatedView.width .+ 10)
        view1.widthAnchor .= 3 .* (relatedView.width .+ 10)
        view1.widthAnchor .= 3 .* (relatedView.width .+ 10)
        view1.widthAnchor .= 3 .* (relatedView.width .+ 10)
        view1.widthAnchor .= 3 .* (relatedView.width .+ 10)
        view1.widthAnchor .= 3 .* (relatedView.width .+ 10)
        view1.widthAnchor .= 3 .* (relatedView.width .+ 10)
        view1.widthAnchor .= 3 .* (relatedView.width .+ 10)
        view1.widthAnchor .= 3 .* (relatedView.width .+ 10)
        view1.widthAnchor .= 3 .* (relatedView.width .+ 10)
        view1.widthAnchor .= 3 .* (relatedView.width .+ 10)
    }

    func impliedcompileView1WidthAnchorEqualToWidthPlusConstantMultipliedByConstant() {
        view1 .= 3 .* (relatedView.width .+ 10)
        view1 .= 3 .* (relatedView.width .+ 10)
        view1 .= 3 .* (relatedView.width .+ 10)
        view1 .= 3 .* (relatedView.width .+ 10)
        view1 .= 3 .* (relatedView.width .+ 10)
        view1 .= 3 .* (relatedView.width .+ 10)
        view1 .= 3 .* (relatedView.width .+ 10)
        view1 .= 3 .* (relatedView.width .+ 10)
        view1 .= 3 .* (relatedView.width .+ 10)
        view1 .= 3 .* (relatedView.width .+ 10)
        view1 .= 3 .* (relatedView.width .+ 10)
        view1 .= 3 .* (relatedView.width .+ 10)
        view1 .= 3 .* (relatedView.width .+ 10)
        view1 .= 3 .* (relatedView.width .+ 10)
        view1 .= 3 .* (relatedView.width .+ 10)
        view1 .= 3 .* (relatedView.width .+ 10)
        view1 .= 3 .* (relatedView.width .+ 10)
        view1 .= 3 .* (relatedView.width .+ 10)
        view1 .= 3 .* (relatedView.width .+ 10)
        view1 .= 3 .* (relatedView.width .+ 10)
    }

    func compileView1WidthAnchorEqualToWidthMultipliedByConstantPlusConstant() {
        view1.widthAnchor .= 3 .* relatedView.width .+ 10
        view1.widthAnchor .= 3 .* relatedView.width .+ 10
        view1.widthAnchor .= 3 .* relatedView.width .+ 10
        view1.widthAnchor .= 3 .* relatedView.width .+ 10
        view1.widthAnchor .= 3 .* relatedView.width .+ 10
        view1.widthAnchor .= 3 .* relatedView.width .+ 10
        view1.widthAnchor .= 3 .* relatedView.width .+ 10
        view1.widthAnchor .= 3 .* relatedView.width .+ 10
        view1.widthAnchor .= 3 .* relatedView.width .+ 10
        view1.widthAnchor .= 3 .* relatedView.width .+ 10
        view1.widthAnchor .= 3 .* relatedView.width .+ 10
        view1.widthAnchor .= 3 .* relatedView.width .+ 10
        view1.widthAnchor .= 3 .* relatedView.width .+ 10
        view1.widthAnchor .= 3 .* relatedView.width .+ 10
        view1.widthAnchor .= 3 .* relatedView.width .+ 10
        view1.widthAnchor .= 3 .* relatedView.width .+ 10
        view1.widthAnchor .= 3 .* relatedView.width .+ 10
        view1.widthAnchor .= 3 .* relatedView.width .+ 10
        view1.widthAnchor .= 3 .* relatedView.width .+ 10
        view1.widthAnchor .= 3 .* relatedView.width .+ 10
    }

    func impliedcompileView1WidthAnchorEqualToWidthMultipliedByConstantPlusConstant() {
        view1 .= 3 .* relatedView.width .+ 10
        view1 .= 3 .* relatedView.width .+ 10
        view1 .= 3 .* relatedView.width .+ 10
        view1 .= 3 .* relatedView.width .+ 10
        view1 .= 3 .* relatedView.width .+ 10
        view1 .= 3 .* relatedView.width .+ 10
        view1 .= 3 .* relatedView.width .+ 10
        view1 .= 3 .* relatedView.width .+ 10
        view1 .= 3 .* relatedView.width .+ 10
        view1 .= 3 .* relatedView.width .+ 10
        view1 .= 3 .* relatedView.width .+ 10
        view1 .= 3 .* relatedView.width .+ 10
        view1 .= 3 .* relatedView.width .+ 10
        view1 .= 3 .* relatedView.width .+ 10
        view1 .= 3 .* relatedView.width .+ 10
        view1 .= 3 .* relatedView.width .+ 10
        view1 .= 3 .* relatedView.width .+ 10
        view1 .= 3 .* relatedView.width .+ 10
        view1 .= 3 .* relatedView.width .+ 10
        view1 .= 3 .* relatedView.width .+ 10
    }

    func compileView1WidthAnchorEqualToWidthPlusConstantDividedByConstant() {
        view1.widthAnchor .= (relatedView.width .+ 10) ./ 2
        view1.widthAnchor .= (relatedView.width .+ 10) ./ 2
        view1.widthAnchor .= (relatedView.width .+ 10) ./ 2
        view1.widthAnchor .= (relatedView.width .+ 10) ./ 2
        view1.widthAnchor .= (relatedView.width .+ 10) ./ 2
        view1.widthAnchor .= (relatedView.width .+ 10) ./ 2
        view1.widthAnchor .= (relatedView.width .+ 10) ./ 2
        view1.widthAnchor .= (relatedView.width .+ 10) ./ 2
        view1.widthAnchor .= (relatedView.width .+ 10) ./ 2
        view1.widthAnchor .= (relatedView.width .+ 10) ./ 2
        view1.widthAnchor .= (relatedView.width .+ 10) ./ 2
        view1.widthAnchor .= (relatedView.width .+ 10) ./ 2
        view1.widthAnchor .= (relatedView.width .+ 10) ./ 2
        view1.widthAnchor .= (relatedView.width .+ 10) ./ 2
        view1.widthAnchor .= (relatedView.width .+ 10) ./ 2
        view1.widthAnchor .= (relatedView.width .+ 10) ./ 2
        view1.widthAnchor .= (relatedView.width .+ 10) ./ 2
        view1.widthAnchor .= (relatedView.width .+ 10) ./ 2
        view1.widthAnchor .= (relatedView.width .+ 10) ./ 2
        view1.widthAnchor .= (relatedView.width .+ 10) ./ 2
    }

    func impliedcompileView1WidthAnchorEqualToWidthPlusConstantDividedByConstant() {
        view1 .= (relatedView.width .+ 10) ./ 2
        view1 .= (relatedView.width .+ 10) ./ 2
        view1 .= (relatedView.width .+ 10) ./ 2
        view1 .= (relatedView.width .+ 10) ./ 2
        view1 .= (relatedView.width .+ 10) ./ 2
        view1 .= (relatedView.width .+ 10) ./ 2
        view1 .= (relatedView.width .+ 10) ./ 2
        view1 .= (relatedView.width .+ 10) ./ 2
        view1 .= (relatedView.width .+ 10) ./ 2
        view1 .= (relatedView.width .+ 10) ./ 2
        view1 .= (relatedView.width .+ 10) ./ 2
        view1 .= (relatedView.width .+ 10) ./ 2
        view1 .= (relatedView.width .+ 10) ./ 2
        view1 .= (relatedView.width .+ 10) ./ 2
        view1 .= (relatedView.width .+ 10) ./ 2
        view1 .= (relatedView.width .+ 10) ./ 2
        view1 .= (relatedView.width .+ 10) ./ 2
        view1 .= (relatedView.width .+ 10) ./ 2
        view1 .= (relatedView.width .+ 10) ./ 2
        view1 .= (relatedView.width .+ 10) ./ 2
    }

// MARK: Equal with constant .+ multiplier and priority

    func compileView1WidthAnchorEqualToWidthPlusConstantMultiplyingConstantWithPriority() {
        view1.widthAnchor .= (relatedView.width .+ 10) .* 3 ~ .low
        view1.widthAnchor .= (relatedView.width .+ 10) .* 3 ~ .low
        view1.widthAnchor .= (relatedView.width .+ 10) .* 3 ~ .low
        view1.widthAnchor .= (relatedView.width .+ 10) .* 3 ~ .low
        view1.widthAnchor .= (relatedView.width .+ 10) .* 3 ~ .low
        view1.widthAnchor .= (relatedView.width .+ 10) .* 3 ~ .low
        view1.widthAnchor .= (relatedView.width .+ 10) .* 3 ~ .low
        view1.widthAnchor .= (relatedView.width .+ 10) .* 3 ~ .low
        view1.widthAnchor .= (relatedView.width .+ 10) .* 3 ~ .low
        view1.widthAnchor .= (relatedView.width .+ 10) .* 3 ~ .low
        view1.widthAnchor .= (relatedView.width .+ 10) .* 3 ~ .low
        view1.widthAnchor .= (relatedView.width .+ 10) .* 3 ~ .low
        view1.widthAnchor .= (relatedView.width .+ 10) .* 3 ~ .low
        view1.widthAnchor .= (relatedView.width .+ 10) .* 3 ~ .low
        view1.widthAnchor .= (relatedView.width .+ 10) .* 3 ~ .low
        view1.widthAnchor .= (relatedView.width .+ 10) .* 3 ~ .low
        view1.widthAnchor .= (relatedView.width .+ 10) .* 3 ~ .low
        view1.widthAnchor .= (relatedView.width .+ 10) .* 3 ~ .low
        view1.widthAnchor .= (relatedView.width .+ 10) .* 3 ~ .low
        view1.widthAnchor .= (relatedView.width .+ 10) .* 3 ~ .low
    }

    func impliedcompileView1WidthAnchorEqualToWidthPlusConstantMultiplyingConstantWithPriority() {
        view1 .= (relatedView.width .+ 10) .* 3 ~ .low
        view1 .= (relatedView.width .+ 10) .* 3 ~ .low
        view1 .= (relatedView.width .+ 10) .* 3 ~ .low
        view1 .= (relatedView.width .+ 10) .* 3 ~ .low
        view1 .= (relatedView.width .+ 10) .* 3 ~ .low
        view1 .= (relatedView.width .+ 10) .* 3 ~ .low
        view1 .= (relatedView.width .+ 10) .* 3 ~ .low
        view1 .= (relatedView.width .+ 10) .* 3 ~ .low
        view1 .= (relatedView.width .+ 10) .* 3 ~ .low
        view1 .= (relatedView.width .+ 10) .* 3 ~ .low
        view1 .= (relatedView.width .+ 10) .* 3 ~ .low
        view1 .= (relatedView.width .+ 10) .* 3 ~ .low
        view1 .= (relatedView.width .+ 10) .* 3 ~ .low
        view1 .= (relatedView.width .+ 10) .* 3 ~ .low
        view1 .= (relatedView.width .+ 10) .* 3 ~ .low
        view1 .= (relatedView.width .+ 10) .* 3 ~ .low
        view1 .= (relatedView.width .+ 10) .* 3 ~ .low
        view1 .= (relatedView.width .+ 10) .* 3 ~ .low
        view1 .= (relatedView.width .+ 10) .* 3 ~ .low
        view1 .= (relatedView.width .+ 10) .* 3 ~ .low
    }

    func compileView1WidthAnchorEqualToWidthPlusConstantMultipliedByConstantWithPriority() {
        view1.widthAnchor .= 3 .* (relatedView.width .+ 10) ~ .low
        view1.widthAnchor .= 3 .* (relatedView.width .+ 10) ~ .low
        view1.widthAnchor .= 3 .* (relatedView.width .+ 10) ~ .low
        view1.widthAnchor .= 3 .* (relatedView.width .+ 10) ~ .low
        view1.widthAnchor .= 3 .* (relatedView.width .+ 10) ~ .low
        view1.widthAnchor .= 3 .* (relatedView.width .+ 10) ~ .low
        view1.widthAnchor .= 3 .* (relatedView.width .+ 10) ~ .low
        view1.widthAnchor .= 3 .* (relatedView.width .+ 10) ~ .low
        view1.widthAnchor .= 3 .* (relatedView.width .+ 10) ~ .low
        view1.widthAnchor .= 3 .* (relatedView.width .+ 10) ~ .low
        view1.widthAnchor .= 3 .* (relatedView.width .+ 10) ~ .low
        view1.widthAnchor .= 3 .* (relatedView.width .+ 10) ~ .low
        view1.widthAnchor .= 3 .* (relatedView.width .+ 10) ~ .low
        view1.widthAnchor .= 3 .* (relatedView.width .+ 10) ~ .low
        view1.widthAnchor .= 3 .* (relatedView.width .+ 10) ~ .low
        view1.widthAnchor .= 3 .* (relatedView.width .+ 10) ~ .low
        view1.widthAnchor .= 3 .* (relatedView.width .+ 10) ~ .low
        view1.widthAnchor .= 3 .* (relatedView.width .+ 10) ~ .low
        view1.widthAnchor .= 3 .* (relatedView.width .+ 10) ~ .low
        view1.widthAnchor .= 3 .* (relatedView.width .+ 10) ~ .low
    }

    func impliedcompileView1WidthAnchorEqualToWidthPlusConstantMultipliedByConstantWithPriority() {
        view1 .= 3 .* (relatedView.width .+ 10) ~ .low
        view1 .= 3 .* (relatedView.width .+ 10) ~ .low
        view1 .= 3 .* (relatedView.width .+ 10) ~ .low
        view1 .= 3 .* (relatedView.width .+ 10) ~ .low
        view1 .= 3 .* (relatedView.width .+ 10) ~ .low
        view1 .= 3 .* (relatedView.width .+ 10) ~ .low
        view1 .= 3 .* (relatedView.width .+ 10) ~ .low
        view1 .= 3 .* (relatedView.width .+ 10) ~ .low
        view1 .= 3 .* (relatedView.width .+ 10) ~ .low
        view1 .= 3 .* (relatedView.width .+ 10) ~ .low
        view1 .= 3 .* (relatedView.width .+ 10) ~ .low
        view1 .= 3 .* (relatedView.width .+ 10) ~ .low
        view1 .= 3 .* (relatedView.width .+ 10) ~ .low
        view1 .= 3 .* (relatedView.width .+ 10) ~ .low
        view1 .= 3 .* (relatedView.width .+ 10) ~ .low
        view1 .= 3 .* (relatedView.width .+ 10) ~ .low
        view1 .= 3 .* (relatedView.width .+ 10) ~ .low
        view1 .= 3 .* (relatedView.width .+ 10) ~ .low
        view1 .= 3 .* (relatedView.width .+ 10) ~ .low
        view1 .= 3 .* (relatedView.width .+ 10) ~ .low
    }

    func compileView1WidthAnchorEqualToWidthMultipliedByConstantPlusConstantWithPriority() {
        view1.widthAnchor .= 3 .* relatedView.width .+ 10 ~ .low
        view1.widthAnchor .= 3 .* relatedView.width .+ 10 ~ .low
        view1.widthAnchor .= 3 .* relatedView.width .+ 10 ~ .low
        view1.widthAnchor .= 3 .* relatedView.width .+ 10 ~ .low
        view1.widthAnchor .= 3 .* relatedView.width .+ 10 ~ .low
        view1.widthAnchor .= 3 .* relatedView.width .+ 10 ~ .low
        view1.widthAnchor .= 3 .* relatedView.width .+ 10 ~ .low
        view1.widthAnchor .= 3 .* relatedView.width .+ 10 ~ .low
        view1.widthAnchor .= 3 .* relatedView.width .+ 10 ~ .low
        view1.widthAnchor .= 3 .* relatedView.width .+ 10 ~ .low
        view1.widthAnchor .= 3 .* relatedView.width .+ 10 ~ .low
        view1.widthAnchor .= 3 .* relatedView.width .+ 10 ~ .low
        view1.widthAnchor .= 3 .* relatedView.width .+ 10 ~ .low
        view1.widthAnchor .= 3 .* relatedView.width .+ 10 ~ .low
        view1.widthAnchor .= 3 .* relatedView.width .+ 10 ~ .low
        view1.widthAnchor .= 3 .* relatedView.width .+ 10 ~ .low
        view1.widthAnchor .= 3 .* relatedView.width .+ 10 ~ .low
        view1.widthAnchor .= 3 .* relatedView.width .+ 10 ~ .low
        view1.widthAnchor .= 3 .* relatedView.width .+ 10 ~ .low
        view1.widthAnchor .= 3 .* relatedView.width .+ 10 ~ .low
    }

    func impliedcompileView1WidthAnchorEqualToWidthMultipliedByConstantPlusConstantWithPriority() {
        view1 .= 3 .* relatedView.width .+ 10 ~ .low
        view1 .= 3 .* relatedView.width .+ 10 ~ .low
        view1 .= 3 .* relatedView.width .+ 10 ~ .low
        view1 .= 3 .* relatedView.width .+ 10 ~ .low
        view1 .= 3 .* relatedView.width .+ 10 ~ .low
        view1 .= 3 .* relatedView.width .+ 10 ~ .low
        view1 .= 3 .* relatedView.width .+ 10 ~ .low
        view1 .= 3 .* relatedView.width .+ 10 ~ .low
        view1 .= 3 .* relatedView.width .+ 10 ~ .low
        view1 .= 3 .* relatedView.width .+ 10 ~ .low
        view1 .= 3 .* relatedView.width .+ 10 ~ .low
        view1 .= 3 .* relatedView.width .+ 10 ~ .low
        view1 .= 3 .* relatedView.width .+ 10 ~ .low
        view1 .= 3 .* relatedView.width .+ 10 ~ .low
        view1 .= 3 .* relatedView.width .+ 10 ~ .low
        view1 .= 3 .* relatedView.width .+ 10 ~ .low
        view1 .= 3 .* relatedView.width .+ 10 ~ .low
        view1 .= 3 .* relatedView.width .+ 10 ~ .low
        view1 .= 3 .* relatedView.width .+ 10 ~ .low
        view1 .= 3 .* relatedView.width .+ 10 ~ .low
    }

    func compileView1WidthAnchorEqualToWidthPlusConstantDividedByConstantWithPriority() {
        view1.widthAnchor .= (relatedView.width .+ 10) ./ 2 ~ .low
        view1.widthAnchor .= (relatedView.width .+ 10) ./ 2 ~ .low
        view1.widthAnchor .= (relatedView.width .+ 10) ./ 2 ~ .low
        view1.widthAnchor .= (relatedView.width .+ 10) ./ 2 ~ .low
        view1.widthAnchor .= (relatedView.width .+ 10) ./ 2 ~ .low
        view1.widthAnchor .= (relatedView.width .+ 10) ./ 2 ~ .low
        view1.widthAnchor .= (relatedView.width .+ 10) ./ 2 ~ .low
        view1.widthAnchor .= (relatedView.width .+ 10) ./ 2 ~ .low
        view1.widthAnchor .= (relatedView.width .+ 10) ./ 2 ~ .low
        view1.widthAnchor .= (relatedView.width .+ 10) ./ 2 ~ .low
        view1.widthAnchor .= (relatedView.width .+ 10) ./ 2 ~ .low
        view1.widthAnchor .= (relatedView.width .+ 10) ./ 2 ~ .low
        view1.widthAnchor .= (relatedView.width .+ 10) ./ 2 ~ .low
        view1.widthAnchor .= (relatedView.width .+ 10) ./ 2 ~ .low
        view1.widthAnchor .= (relatedView.width .+ 10) ./ 2 ~ .low
        view1.widthAnchor .= (relatedView.width .+ 10) ./ 2 ~ .low
        view1.widthAnchor .= (relatedView.width .+ 10) ./ 2 ~ .low
        view1.widthAnchor .= (relatedView.width .+ 10) ./ 2 ~ .low
        view1.widthAnchor .= (relatedView.width .+ 10) ./ 2 ~ .low
        view1.widthAnchor .= (relatedView.width .+ 10) ./ 2 ~ .low
    }

    func impliedcompileView1WidthAnchorEqualToWidthPlusConstantDividedByConstantWithPriority() {
        view1 .= (relatedView.width .+ 10) ./ 2 ~ .low
        view1 .= (relatedView.width .+ 10) ./ 2 ~ .low
        view1 .= (relatedView.width .+ 10) ./ 2 ~ .low
        view1 .= (relatedView.width .+ 10) ./ 2 ~ .low
        view1 .= (relatedView.width .+ 10) ./ 2 ~ .low
        view1 .= (relatedView.width .+ 10) ./ 2 ~ .low
        view1 .= (relatedView.width .+ 10) ./ 2 ~ .low
        view1 .= (relatedView.width .+ 10) ./ 2 ~ .low
        view1 .= (relatedView.width .+ 10) ./ 2 ~ .low
        view1 .= (relatedView.width .+ 10) ./ 2 ~ .low
        view1 .= (relatedView.width .+ 10) ./ 2 ~ .low
        view1 .= (relatedView.width .+ 10) ./ 2 ~ .low
        view1 .= (relatedView.width .+ 10) ./ 2 ~ .low
        view1 .= (relatedView.width .+ 10) ./ 2 ~ .low
        view1 .= (relatedView.width .+ 10) ./ 2 ~ .low
        view1 .= (relatedView.width .+ 10) ./ 2 ~ .low
        view1 .= (relatedView.width .+ 10) ./ 2 ~ .low
        view1 .= (relatedView.width .+ 10) ./ 2 ~ .low
        view1 .= (relatedView.width .+ 10) ./ 2 ~ .low
        view1 .= (relatedView.width .+ 10) ./ 2 ~ .low
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func compileView1WidthAnchorEqualToWidthPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        view1.widthAnchor .= (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1.widthAnchor .= (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1.widthAnchor .= (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1.widthAnchor .= (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1.widthAnchor .= (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1.widthAnchor .= (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1.widthAnchor .= (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1.widthAnchor .= (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1.widthAnchor .= (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1.widthAnchor .= (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1.widthAnchor .= (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1.widthAnchor .= (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1.widthAnchor .= (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1.widthAnchor .= (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1.widthAnchor .= (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1.widthAnchor .= (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1.widthAnchor .= (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1.widthAnchor .= (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1.widthAnchor .= (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1.widthAnchor .= (relatedView.width .+ 10) .* 3  ~ .high .- 1
    }

    func impliedcompileView1WidthAnchorEqualToWidthPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        view1 .= (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1 .= (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1 .= (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1 .= (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1 .= (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1 .= (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1 .= (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1 .= (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1 .= (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1 .= (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1 .= (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1 .= (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1 .= (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1 .= (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1 .= (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1 .= (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1 .= (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1 .= (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1 .= (relatedView.width .+ 10) .* 3  ~ .high .- 1
        view1 .= (relatedView.width .+ 10) .* 3  ~ .high .- 1
    }

    func compileView1WidthAnchorEqualToWidthPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        view1.widthAnchor .= 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1.widthAnchor .= 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1.widthAnchor .= 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1.widthAnchor .= 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1.widthAnchor .= 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1.widthAnchor .= 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1.widthAnchor .= 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1.widthAnchor .= 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1.widthAnchor .= 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1.widthAnchor .= 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1.widthAnchor .= 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1.widthAnchor .= 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1.widthAnchor .= 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1.widthAnchor .= 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1.widthAnchor .= 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1.widthAnchor .= 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1.widthAnchor .= 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1.widthAnchor .= 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1.widthAnchor .= 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1.widthAnchor .= 3 .* (relatedView.width .+ 10)  ~ .high .- 1
    }

    func impliedcompileView1WidthAnchorEqualToWidthPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        view1 .= 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1 .= 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1 .= 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1 .= 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1 .= 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1 .= 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1 .= 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1 .= 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1 .= 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1 .= 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1 .= 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1 .= 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1 .= 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1 .= 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1 .= 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1 .= 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1 .= 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1 .= 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1 .= 3 .* (relatedView.width .+ 10)  ~ .high .- 1
        view1 .= 3 .* (relatedView.width .+ 10)  ~ .high .- 1
    }

    func compileView1WidthAnchorEqualToWidthMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        view1.widthAnchor .= 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1.widthAnchor .= 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1.widthAnchor .= 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1.widthAnchor .= 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1.widthAnchor .= 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1.widthAnchor .= 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1.widthAnchor .= 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1.widthAnchor .= 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1.widthAnchor .= 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1.widthAnchor .= 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1.widthAnchor .= 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1.widthAnchor .= 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1.widthAnchor .= 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1.widthAnchor .= 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1.widthAnchor .= 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1.widthAnchor .= 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1.widthAnchor .= 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1.widthAnchor .= 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1.widthAnchor .= 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1.widthAnchor .= 3 .* relatedView.width .+ 10  ~ .high .- 1
    }

    func impliedcompileView1WidthAnchorEqualToWidthMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        view1 .= 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1 .= 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1 .= 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1 .= 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1 .= 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1 .= 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1 .= 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1 .= 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1 .= 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1 .= 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1 .= 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1 .= 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1 .= 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1 .= 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1 .= 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1 .= 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1 .= 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1 .= 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1 .= 3 .* relatedView.width .+ 10  ~ .high .- 1
        view1 .= 3 .* relatedView.width .+ 10  ~ .high .- 1
    }

    func compileView1WidthAnchorEqualToWidthPlusConstantDividedByConstantWithPriorityArithmetic() {
        view1.widthAnchor .= (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1.widthAnchor .= (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1.widthAnchor .= (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1.widthAnchor .= (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1.widthAnchor .= (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1.widthAnchor .= (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1.widthAnchor .= (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1.widthAnchor .= (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1.widthAnchor .= (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1.widthAnchor .= (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1.widthAnchor .= (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1.widthAnchor .= (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1.widthAnchor .= (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1.widthAnchor .= (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1.widthAnchor .= (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1.widthAnchor .= (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1.widthAnchor .= (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1.widthAnchor .= (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1.widthAnchor .= (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1.widthAnchor .= (relatedView.width .+ 10) ./ 2  ~ .high .- 1
    }

    func impliedcompileView1WidthAnchorEqualToWidthPlusConstantDividedByConstantWithPriorityArithmetic() {
        view1 .= (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1 .= (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1 .= (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1 .= (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1 .= (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1 .= (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1 .= (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1 .= (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1 .= (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1 .= (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1 .= (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1 .= (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1 .= (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1 .= (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1 .= (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1 .= (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1 .= (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1 .= (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1 .= (relatedView.width .+ 10) ./ 2  ~ .high .- 1
        view1 .= (relatedView.width .+ 10) ./ 2  ~ .high .- 1
    }

    // MARK: view1WidthAnchor <=> relatedViewWidthAnchor

    // MARK: LessThanOrEqual

    func compileView1WidthAnchorLessThanOrEqualToWidthAnchor() {
        view1.widthAnchor ≤ relatedView.widthAnchor
        view1.widthAnchor ≤ relatedView.widthAnchor
        view1.widthAnchor ≤ relatedView.widthAnchor
        view1.widthAnchor ≤ relatedView.widthAnchor
        view1.widthAnchor ≤ relatedView.widthAnchor
        view1.widthAnchor ≤ relatedView.widthAnchor
        view1.widthAnchor ≤ relatedView.widthAnchor
        view1.widthAnchor ≤ relatedView.widthAnchor
        view1.widthAnchor ≤ relatedView.widthAnchor
        view1.widthAnchor ≤ relatedView.widthAnchor
        view1.widthAnchor ≤ relatedView.widthAnchor
        view1.widthAnchor ≤ relatedView.widthAnchor
        view1.widthAnchor ≤ relatedView.widthAnchor
        view1.widthAnchor ≤ relatedView.widthAnchor
        view1.widthAnchor ≤ relatedView.widthAnchor
        view1.widthAnchor ≤ relatedView.widthAnchor
        view1.widthAnchor ≤ relatedView.widthAnchor
        view1.widthAnchor ≤ relatedView.widthAnchor
        view1.widthAnchor ≤ relatedView.widthAnchor
        view1.widthAnchor ≤ relatedView.widthAnchor
    }

    func impliedcompileView1WidthAnchorLessThanOrEqualToWidthAnchor() {
        view1 ≤ relatedView.widthAnchor
        view1 ≤ relatedView.widthAnchor
        view1 ≤ relatedView.widthAnchor
        view1 ≤ relatedView.widthAnchor
        view1 ≤ relatedView.widthAnchor
        view1 ≤ relatedView.widthAnchor
        view1 ≤ relatedView.widthAnchor
        view1 ≤ relatedView.widthAnchor
        view1 ≤ relatedView.widthAnchor
        view1 ≤ relatedView.widthAnchor
        view1 ≤ relatedView.widthAnchor
        view1 ≤ relatedView.widthAnchor
        view1 ≤ relatedView.widthAnchor
        view1 ≤ relatedView.widthAnchor
        view1 ≤ relatedView.widthAnchor
        view1 ≤ relatedView.widthAnchor
        view1 ≤ relatedView.widthAnchor
        view1 ≤ relatedView.widthAnchor
        view1 ≤ relatedView.widthAnchor
        view1 ≤ relatedView.widthAnchor
    }

    // MARK: LessThanOrEqual with constant
    func compileView1WidthAnchorLessThanOrEqualToWidthAnchorPlusConstant() {
        view1.widthAnchor ≤ relatedView.widthAnchor .+ 10
        view1.widthAnchor ≤ relatedView.widthAnchor .+ 10
        view1.widthAnchor ≤ relatedView.widthAnchor .+ 10
        view1.widthAnchor ≤ relatedView.widthAnchor .+ 10
        view1.widthAnchor ≤ relatedView.widthAnchor .+ 10
        view1.widthAnchor ≤ relatedView.widthAnchor .+ 10
        view1.widthAnchor ≤ relatedView.widthAnchor .+ 10
        view1.widthAnchor ≤ relatedView.widthAnchor .+ 10
        view1.widthAnchor ≤ relatedView.widthAnchor .+ 10
        view1.widthAnchor ≤ relatedView.widthAnchor .+ 10
        view1.widthAnchor ≤ relatedView.widthAnchor .+ 10
        view1.widthAnchor ≤ relatedView.widthAnchor .+ 10
        view1.widthAnchor ≤ relatedView.widthAnchor .+ 10
        view1.widthAnchor ≤ relatedView.widthAnchor .+ 10
        view1.widthAnchor ≤ relatedView.widthAnchor .+ 10
        view1.widthAnchor ≤ relatedView.widthAnchor .+ 10
        view1.widthAnchor ≤ relatedView.widthAnchor .+ 10
        view1.widthAnchor ≤ relatedView.widthAnchor .+ 10
        view1.widthAnchor ≤ relatedView.widthAnchor .+ 10
        view1.widthAnchor ≤ relatedView.widthAnchor .+ 10
    }

    func impliedcompileView1WidthAnchorLessThanOrEqualToWidthAnchorPlusConstant() {
        view1 ≤ relatedView.widthAnchor .+ 10
        view1 ≤ relatedView.widthAnchor .+ 10
        view1 ≤ relatedView.widthAnchor .+ 10
        view1 ≤ relatedView.widthAnchor .+ 10
        view1 ≤ relatedView.widthAnchor .+ 10
        view1 ≤ relatedView.widthAnchor .+ 10
        view1 ≤ relatedView.widthAnchor .+ 10
        view1 ≤ relatedView.widthAnchor .+ 10
        view1 ≤ relatedView.widthAnchor .+ 10
        view1 ≤ relatedView.widthAnchor .+ 10
        view1 ≤ relatedView.widthAnchor .+ 10
        view1 ≤ relatedView.widthAnchor .+ 10
        view1 ≤ relatedView.widthAnchor .+ 10
        view1 ≤ relatedView.widthAnchor .+ 10
        view1 ≤ relatedView.widthAnchor .+ 10
        view1 ≤ relatedView.widthAnchor .+ 10
        view1 ≤ relatedView.widthAnchor .+ 10
        view1 ≤ relatedView.widthAnchor .+ 10
        view1 ≤ relatedView.widthAnchor .+ 10
        view1 ≤ relatedView.widthAnchor .+ 10
    }

    func compileView1WidthAnchorLessThanOrEqualToWidthAnchorMinusConstant() {
        view1.widthAnchor ≤ relatedView.widthAnchor .- 10
        view1.widthAnchor ≤ relatedView.widthAnchor .- 10
        view1.widthAnchor ≤ relatedView.widthAnchor .- 10
        view1.widthAnchor ≤ relatedView.widthAnchor .- 10
        view1.widthAnchor ≤ relatedView.widthAnchor .- 10
        view1.widthAnchor ≤ relatedView.widthAnchor .- 10
        view1.widthAnchor ≤ relatedView.widthAnchor .- 10
        view1.widthAnchor ≤ relatedView.widthAnchor .- 10
        view1.widthAnchor ≤ relatedView.widthAnchor .- 10
        view1.widthAnchor ≤ relatedView.widthAnchor .- 10
        view1.widthAnchor ≤ relatedView.widthAnchor .- 10
        view1.widthAnchor ≤ relatedView.widthAnchor .- 10
        view1.widthAnchor ≤ relatedView.widthAnchor .- 10
        view1.widthAnchor ≤ relatedView.widthAnchor .- 10
        view1.widthAnchor ≤ relatedView.widthAnchor .- 10
        view1.widthAnchor ≤ relatedView.widthAnchor .- 10
        view1.widthAnchor ≤ relatedView.widthAnchor .- 10
        view1.widthAnchor ≤ relatedView.widthAnchor .- 10
        view1.widthAnchor ≤ relatedView.widthAnchor .- 10
        view1.widthAnchor ≤ relatedView.widthAnchor .- 10
    }

    func impliedcompileView1WidthAnchorLessThanOrEqualToWidthAnchorMinusConstant() {
        view1 ≤ relatedView.widthAnchor .- 10
        view1 ≤ relatedView.widthAnchor .- 10
        view1 ≤ relatedView.widthAnchor .- 10
        view1 ≤ relatedView.widthAnchor .- 10
        view1 ≤ relatedView.widthAnchor .- 10
        view1 ≤ relatedView.widthAnchor .- 10
        view1 ≤ relatedView.widthAnchor .- 10
        view1 ≤ relatedView.widthAnchor .- 10
        view1 ≤ relatedView.widthAnchor .- 10
        view1 ≤ relatedView.widthAnchor .- 10
        view1 ≤ relatedView.widthAnchor .- 10
        view1 ≤ relatedView.widthAnchor .- 10
        view1 ≤ relatedView.widthAnchor .- 10
        view1 ≤ relatedView.widthAnchor .- 10
        view1 ≤ relatedView.widthAnchor .- 10
        view1 ≤ relatedView.widthAnchor .- 10
        view1 ≤ relatedView.widthAnchor .- 10
        view1 ≤ relatedView.widthAnchor .- 10
        view1 ≤ relatedView.widthAnchor .- 10
        view1 ≤ relatedView.widthAnchor .- 10
    }

    // MARK: LessThanOrEqual with multiplier
    func compileView1WidthAnchorLessThanOrEqualToWidthAnchorMultiplyingConstant() {
        view1.widthAnchor ≤ relatedView.widthAnchor .* 3
        view1.widthAnchor ≤ relatedView.widthAnchor .* 3
        view1.widthAnchor ≤ relatedView.widthAnchor .* 3
        view1.widthAnchor ≤ relatedView.widthAnchor .* 3
        view1.widthAnchor ≤ relatedView.widthAnchor .* 3
        view1.widthAnchor ≤ relatedView.widthAnchor .* 3
        view1.widthAnchor ≤ relatedView.widthAnchor .* 3
        view1.widthAnchor ≤ relatedView.widthAnchor .* 3
        view1.widthAnchor ≤ relatedView.widthAnchor .* 3
        view1.widthAnchor ≤ relatedView.widthAnchor .* 3
        view1.widthAnchor ≤ relatedView.widthAnchor .* 3
        view1.widthAnchor ≤ relatedView.widthAnchor .* 3
        view1.widthAnchor ≤ relatedView.widthAnchor .* 3
        view1.widthAnchor ≤ relatedView.widthAnchor .* 3
        view1.widthAnchor ≤ relatedView.widthAnchor .* 3
        view1.widthAnchor ≤ relatedView.widthAnchor .* 3
        view1.widthAnchor ≤ relatedView.widthAnchor .* 3
        view1.widthAnchor ≤ relatedView.widthAnchor .* 3
        view1.widthAnchor ≤ relatedView.widthAnchor .* 3
        view1.widthAnchor ≤ relatedView.widthAnchor .* 3
    }

    func impliedcompileView1WidthAnchorLessThanOrEqualToWidthAnchorMultiplyingConstant() {
        view1 ≤ relatedView.widthAnchor .* 3
        view1 ≤ relatedView.widthAnchor .* 3
        view1 ≤ relatedView.widthAnchor .* 3
        view1 ≤ relatedView.widthAnchor .* 3
        view1 ≤ relatedView.widthAnchor .* 3
        view1 ≤ relatedView.widthAnchor .* 3
        view1 ≤ relatedView.widthAnchor .* 3
        view1 ≤ relatedView.widthAnchor .* 3
        view1 ≤ relatedView.widthAnchor .* 3
        view1 ≤ relatedView.widthAnchor .* 3
        view1 ≤ relatedView.widthAnchor .* 3
        view1 ≤ relatedView.widthAnchor .* 3
        view1 ≤ relatedView.widthAnchor .* 3
        view1 ≤ relatedView.widthAnchor .* 3
        view1 ≤ relatedView.widthAnchor .* 3
        view1 ≤ relatedView.widthAnchor .* 3
        view1 ≤ relatedView.widthAnchor .* 3
        view1 ≤ relatedView.widthAnchor .* 3
        view1 ≤ relatedView.widthAnchor .* 3
        view1 ≤ relatedView.widthAnchor .* 3
    }

    func compileView1WidthAnchorLessThanOrEqualToWidthAnchorMultipliedByConstant() {
        view1.widthAnchor ≤ 3 .* relatedView.widthAnchor
        view1.widthAnchor ≤ 3 .* relatedView.widthAnchor
        view1.widthAnchor ≤ 3 .* relatedView.widthAnchor
        view1.widthAnchor ≤ 3 .* relatedView.widthAnchor
        view1.widthAnchor ≤ 3 .* relatedView.widthAnchor
        view1.widthAnchor ≤ 3 .* relatedView.widthAnchor
        view1.widthAnchor ≤ 3 .* relatedView.widthAnchor
        view1.widthAnchor ≤ 3 .* relatedView.widthAnchor
        view1.widthAnchor ≤ 3 .* relatedView.widthAnchor
        view1.widthAnchor ≤ 3 .* relatedView.widthAnchor
        view1.widthAnchor ≤ 3 .* relatedView.widthAnchor
        view1.widthAnchor ≤ 3 .* relatedView.widthAnchor
        view1.widthAnchor ≤ 3 .* relatedView.widthAnchor
        view1.widthAnchor ≤ 3 .* relatedView.widthAnchor
        view1.widthAnchor ≤ 3 .* relatedView.widthAnchor
        view1.widthAnchor ≤ 3 .* relatedView.widthAnchor
        view1.widthAnchor ≤ 3 .* relatedView.widthAnchor
        view1.widthAnchor ≤ 3 .* relatedView.widthAnchor
        view1.widthAnchor ≤ 3 .* relatedView.widthAnchor
        view1.widthAnchor ≤ 3 .* relatedView.widthAnchor
    }

    func impliedcompileView1WidthAnchorLessThanOrEqualToWidthAnchorMultipliedByConstant() {
        view1 ≤ 3 .* relatedView.widthAnchor
        view1 ≤ 3 .* relatedView.widthAnchor
        view1 ≤ 3 .* relatedView.widthAnchor
        view1 ≤ 3 .* relatedView.widthAnchor
        view1 ≤ 3 .* relatedView.widthAnchor
        view1 ≤ 3 .* relatedView.widthAnchor
        view1 ≤ 3 .* relatedView.widthAnchor
        view1 ≤ 3 .* relatedView.widthAnchor
        view1 ≤ 3 .* relatedView.widthAnchor
        view1 ≤ 3 .* relatedView.widthAnchor
        view1 ≤ 3 .* relatedView.widthAnchor
        view1 ≤ 3 .* relatedView.widthAnchor
        view1 ≤ 3 .* relatedView.widthAnchor
        view1 ≤ 3 .* relatedView.widthAnchor
        view1 ≤ 3 .* relatedView.widthAnchor
        view1 ≤ 3 .* relatedView.widthAnchor
        view1 ≤ 3 .* relatedView.widthAnchor
        view1 ≤ 3 .* relatedView.widthAnchor
        view1 ≤ 3 .* relatedView.widthAnchor
        view1 ≤ 3 .* relatedView.widthAnchor
    }

    func compileView1WidthAnchorLessThanOrEqualToWidthAnchorDividedByConstant() {
        view1.widthAnchor ≤ relatedView.widthAnchor ./ 2
        view1.widthAnchor ≤ relatedView.widthAnchor ./ 2
        view1.widthAnchor ≤ relatedView.widthAnchor ./ 2
        view1.widthAnchor ≤ relatedView.widthAnchor ./ 2
        view1.widthAnchor ≤ relatedView.widthAnchor ./ 2
        view1.widthAnchor ≤ relatedView.widthAnchor ./ 2
        view1.widthAnchor ≤ relatedView.widthAnchor ./ 2
        view1.widthAnchor ≤ relatedView.widthAnchor ./ 2
        view1.widthAnchor ≤ relatedView.widthAnchor ./ 2
        view1.widthAnchor ≤ relatedView.widthAnchor ./ 2
        view1.widthAnchor ≤ relatedView.widthAnchor ./ 2
        view1.widthAnchor ≤ relatedView.widthAnchor ./ 2
        view1.widthAnchor ≤ relatedView.widthAnchor ./ 2
        view1.widthAnchor ≤ relatedView.widthAnchor ./ 2
        view1.widthAnchor ≤ relatedView.widthAnchor ./ 2
        view1.widthAnchor ≤ relatedView.widthAnchor ./ 2
        view1.widthAnchor ≤ relatedView.widthAnchor ./ 2
        view1.widthAnchor ≤ relatedView.widthAnchor ./ 2
        view1.widthAnchor ≤ relatedView.widthAnchor ./ 2
        view1.widthAnchor ≤ relatedView.widthAnchor ./ 2
    }

    func impliedcompileView1WidthAnchorLessThanOrEqualToWidthAnchorDividedByConstant() {
        view1 ≤ relatedView.widthAnchor ./ 2
        view1 ≤ relatedView.widthAnchor ./ 2
        view1 ≤ relatedView.widthAnchor ./ 2
        view1 ≤ relatedView.widthAnchor ./ 2
        view1 ≤ relatedView.widthAnchor ./ 2
        view1 ≤ relatedView.widthAnchor ./ 2
        view1 ≤ relatedView.widthAnchor ./ 2
        view1 ≤ relatedView.widthAnchor ./ 2
        view1 ≤ relatedView.widthAnchor ./ 2
        view1 ≤ relatedView.widthAnchor ./ 2
        view1 ≤ relatedView.widthAnchor ./ 2
        view1 ≤ relatedView.widthAnchor ./ 2
        view1 ≤ relatedView.widthAnchor ./ 2
        view1 ≤ relatedView.widthAnchor ./ 2
        view1 ≤ relatedView.widthAnchor ./ 2
        view1 ≤ relatedView.widthAnchor ./ 2
        view1 ≤ relatedView.widthAnchor ./ 2
        view1 ≤ relatedView.widthAnchor ./ 2
        view1 ≤ relatedView.widthAnchor ./ 2
        view1 ≤ relatedView.widthAnchor ./ 2
    }

    // MARK: LessThanOrEqual Prioritized
    func compileView1WidthAnchorLessThanOrEqualToWidthAnchorWithPriority() {
        view1.widthAnchor ≤ relatedView.widthAnchor ~ .low
        view1.widthAnchor ≤ relatedView.widthAnchor ~ .low
        view1.widthAnchor ≤ relatedView.widthAnchor ~ .low
        view1.widthAnchor ≤ relatedView.widthAnchor ~ .low
        view1.widthAnchor ≤ relatedView.widthAnchor ~ .low
        view1.widthAnchor ≤ relatedView.widthAnchor ~ .low
        view1.widthAnchor ≤ relatedView.widthAnchor ~ .low
        view1.widthAnchor ≤ relatedView.widthAnchor ~ .low
        view1.widthAnchor ≤ relatedView.widthAnchor ~ .low
        view1.widthAnchor ≤ relatedView.widthAnchor ~ .low
        view1.widthAnchor ≤ relatedView.widthAnchor ~ .low
        view1.widthAnchor ≤ relatedView.widthAnchor ~ .low
        view1.widthAnchor ≤ relatedView.widthAnchor ~ .low
        view1.widthAnchor ≤ relatedView.widthAnchor ~ .low
        view1.widthAnchor ≤ relatedView.widthAnchor ~ .low
        view1.widthAnchor ≤ relatedView.widthAnchor ~ .low
        view1.widthAnchor ≤ relatedView.widthAnchor ~ .low
        view1.widthAnchor ≤ relatedView.widthAnchor ~ .low
        view1.widthAnchor ≤ relatedView.widthAnchor ~ .low
        view1.widthAnchor ≤ relatedView.widthAnchor ~ .low
    }

    func impliedcompileView1WidthAnchorLessThanOrEqualToWidthAnchorWithPriority() {
        view1 ≤ relatedView.widthAnchor ~ .low
        view1 ≤ relatedView.widthAnchor ~ .low
        view1 ≤ relatedView.widthAnchor ~ .low
        view1 ≤ relatedView.widthAnchor ~ .low
        view1 ≤ relatedView.widthAnchor ~ .low
        view1 ≤ relatedView.widthAnchor ~ .low
        view1 ≤ relatedView.widthAnchor ~ .low
        view1 ≤ relatedView.widthAnchor ~ .low
        view1 ≤ relatedView.widthAnchor ~ .low
        view1 ≤ relatedView.widthAnchor ~ .low
        view1 ≤ relatedView.widthAnchor ~ .low
        view1 ≤ relatedView.widthAnchor ~ .low
        view1 ≤ relatedView.widthAnchor ~ .low
        view1 ≤ relatedView.widthAnchor ~ .low
        view1 ≤ relatedView.widthAnchor ~ .low
        view1 ≤ relatedView.widthAnchor ~ .low
        view1 ≤ relatedView.widthAnchor ~ .low
        view1 ≤ relatedView.widthAnchor ~ .low
        view1 ≤ relatedView.widthAnchor ~ .low
        view1 ≤ relatedView.widthAnchor ~ .low
    }

    func compileView1WidthAnchorLessThanOrEqualToWidthAnchorWithPriorityLiteral() {
        view1.widthAnchor ≤ relatedView.widthAnchor ~ 300
        view1.widthAnchor ≤ relatedView.widthAnchor ~ 300
        view1.widthAnchor ≤ relatedView.widthAnchor ~ 300
        view1.widthAnchor ≤ relatedView.widthAnchor ~ 300
        view1.widthAnchor ≤ relatedView.widthAnchor ~ 300
        view1.widthAnchor ≤ relatedView.widthAnchor ~ 300
        view1.widthAnchor ≤ relatedView.widthAnchor ~ 300
        view1.widthAnchor ≤ relatedView.widthAnchor ~ 300
        view1.widthAnchor ≤ relatedView.widthAnchor ~ 300
        view1.widthAnchor ≤ relatedView.widthAnchor ~ 300
        view1.widthAnchor ≤ relatedView.widthAnchor ~ 300
        view1.widthAnchor ≤ relatedView.widthAnchor ~ 300
        view1.widthAnchor ≤ relatedView.widthAnchor ~ 300
        view1.widthAnchor ≤ relatedView.widthAnchor ~ 300
        view1.widthAnchor ≤ relatedView.widthAnchor ~ 300
        view1.widthAnchor ≤ relatedView.widthAnchor ~ 300
        view1.widthAnchor ≤ relatedView.widthAnchor ~ 300
        view1.widthAnchor ≤ relatedView.widthAnchor ~ 300
        view1.widthAnchor ≤ relatedView.widthAnchor ~ 300
        view1.widthAnchor ≤ relatedView.widthAnchor ~ 300
    }

    func impliedcompileView1WidthAnchorLessThanOrEqualToWidthAnchorWithPriorityLiteral() {
        view1 ≤ relatedView.widthAnchor ~ 300
        view1 ≤ relatedView.widthAnchor ~ 300
        view1 ≤ relatedView.widthAnchor ~ 300
        view1 ≤ relatedView.widthAnchor ~ 300
        view1 ≤ relatedView.widthAnchor ~ 300
        view1 ≤ relatedView.widthAnchor ~ 300
        view1 ≤ relatedView.widthAnchor ~ 300
        view1 ≤ relatedView.widthAnchor ~ 300
        view1 ≤ relatedView.widthAnchor ~ 300
        view1 ≤ relatedView.widthAnchor ~ 300
        view1 ≤ relatedView.widthAnchor ~ 300
        view1 ≤ relatedView.widthAnchor ~ 300
        view1 ≤ relatedView.widthAnchor ~ 300
        view1 ≤ relatedView.widthAnchor ~ 300
        view1 ≤ relatedView.widthAnchor ~ 300
        view1 ≤ relatedView.widthAnchor ~ 300
        view1 ≤ relatedView.widthAnchor ~ 300
        view1 ≤ relatedView.widthAnchor ~ 300
        view1 ≤ relatedView.widthAnchor ~ 300
        view1 ≤ relatedView.widthAnchor ~ 300
    }

    func compileView1WidthAnchorLessThanOrEqualToWidthAnchorWithPriorityArithmetic() {
        view1.widthAnchor ≤ relatedView.widthAnchor ~ .high .- 1
        view1.widthAnchor ≤ relatedView.widthAnchor ~ .high .- 1
        view1.widthAnchor ≤ relatedView.widthAnchor ~ .high .- 1
        view1.widthAnchor ≤ relatedView.widthAnchor ~ .high .- 1
        view1.widthAnchor ≤ relatedView.widthAnchor ~ .high .- 1
        view1.widthAnchor ≤ relatedView.widthAnchor ~ .high .- 1
        view1.widthAnchor ≤ relatedView.widthAnchor ~ .high .- 1
        view1.widthAnchor ≤ relatedView.widthAnchor ~ .high .- 1
        view1.widthAnchor ≤ relatedView.widthAnchor ~ .high .- 1
        view1.widthAnchor ≤ relatedView.widthAnchor ~ .high .- 1
        view1.widthAnchor ≤ relatedView.widthAnchor ~ .high .- 1
        view1.widthAnchor ≤ relatedView.widthAnchor ~ .high .- 1
        view1.widthAnchor ≤ relatedView.widthAnchor ~ .high .- 1
        view1.widthAnchor ≤ relatedView.widthAnchor ~ .high .- 1
        view1.widthAnchor ≤ relatedView.widthAnchor ~ .high .- 1
        view1.widthAnchor ≤ relatedView.widthAnchor ~ .high .- 1
        view1.widthAnchor ≤ relatedView.widthAnchor ~ .high .- 1
        view1.widthAnchor ≤ relatedView.widthAnchor ~ .high .- 1
        view1.widthAnchor ≤ relatedView.widthAnchor ~ .high .- 1
        view1.widthAnchor ≤ relatedView.widthAnchor ~ .high .- 1
    }

    func impliedcompileView1WidthAnchorLessThanOrEqualToWidthAnchorWithPriorityArithmetic() {
        view1 ≤ relatedView.widthAnchor ~ .high .- 1
        view1 ≤ relatedView.widthAnchor ~ .high .- 1
        view1 ≤ relatedView.widthAnchor ~ .high .- 1
        view1 ≤ relatedView.widthAnchor ~ .high .- 1
        view1 ≤ relatedView.widthAnchor ~ .high .- 1
        view1 ≤ relatedView.widthAnchor ~ .high .- 1
        view1 ≤ relatedView.widthAnchor ~ .high .- 1
        view1 ≤ relatedView.widthAnchor ~ .high .- 1
        view1 ≤ relatedView.widthAnchor ~ .high .- 1
        view1 ≤ relatedView.widthAnchor ~ .high .- 1
        view1 ≤ relatedView.widthAnchor ~ .high .- 1
        view1 ≤ relatedView.widthAnchor ~ .high .- 1
        view1 ≤ relatedView.widthAnchor ~ .high .- 1
        view1 ≤ relatedView.widthAnchor ~ .high .- 1
        view1 ≤ relatedView.widthAnchor ~ .high .- 1
        view1 ≤ relatedView.widthAnchor ~ .high .- 1
        view1 ≤ relatedView.widthAnchor ~ .high .- 1
        view1 ≤ relatedView.widthAnchor ~ .high .- 1
        view1 ≤ relatedView.widthAnchor ~ .high .- 1
        view1 ≤ relatedView.widthAnchor ~ .high .- 1
    }

    // MARK: LessThanOrEqual with constant .+ multiplier

    func compileView1WidthAnchorLessThanOrEqualToWidthAnchorPlusConstantMultiplyingConstant() {
        view1.widthAnchor ≤ (relatedView.widthAnchor .+ 10) .* 3
        view1.widthAnchor ≤ (relatedView.widthAnchor .+ 10) .* 3
        view1.widthAnchor ≤ (relatedView.widthAnchor .+ 10) .* 3
        view1.widthAnchor ≤ (relatedView.widthAnchor .+ 10) .* 3
        view1.widthAnchor ≤ (relatedView.widthAnchor .+ 10) .* 3
        view1.widthAnchor ≤ (relatedView.widthAnchor .+ 10) .* 3
        view1.widthAnchor ≤ (relatedView.widthAnchor .+ 10) .* 3
        view1.widthAnchor ≤ (relatedView.widthAnchor .+ 10) .* 3
        view1.widthAnchor ≤ (relatedView.widthAnchor .+ 10) .* 3
        view1.widthAnchor ≤ (relatedView.widthAnchor .+ 10) .* 3
        view1.widthAnchor ≤ (relatedView.widthAnchor .+ 10) .* 3
        view1.widthAnchor ≤ (relatedView.widthAnchor .+ 10) .* 3
        view1.widthAnchor ≤ (relatedView.widthAnchor .+ 10) .* 3
        view1.widthAnchor ≤ (relatedView.widthAnchor .+ 10) .* 3
        view1.widthAnchor ≤ (relatedView.widthAnchor .+ 10) .* 3
        view1.widthAnchor ≤ (relatedView.widthAnchor .+ 10) .* 3
        view1.widthAnchor ≤ (relatedView.widthAnchor .+ 10) .* 3
        view1.widthAnchor ≤ (relatedView.widthAnchor .+ 10) .* 3
        view1.widthAnchor ≤ (relatedView.widthAnchor .+ 10) .* 3
        view1.widthAnchor ≤ (relatedView.widthAnchor .+ 10) .* 3
    }

    func impliedcompileView1WidthAnchorLessThanOrEqualToWidthAnchorPlusConstantMultiplyingConstant() {
        view1 ≤ (relatedView.widthAnchor .+ 10) .* 3
        view1 ≤ (relatedView.widthAnchor .+ 10) .* 3
        view1 ≤ (relatedView.widthAnchor .+ 10) .* 3
        view1 ≤ (relatedView.widthAnchor .+ 10) .* 3
        view1 ≤ (relatedView.widthAnchor .+ 10) .* 3
        view1 ≤ (relatedView.widthAnchor .+ 10) .* 3
        view1 ≤ (relatedView.widthAnchor .+ 10) .* 3
        view1 ≤ (relatedView.widthAnchor .+ 10) .* 3
        view1 ≤ (relatedView.widthAnchor .+ 10) .* 3
        view1 ≤ (relatedView.widthAnchor .+ 10) .* 3
        view1 ≤ (relatedView.widthAnchor .+ 10) .* 3
        view1 ≤ (relatedView.widthAnchor .+ 10) .* 3
        view1 ≤ (relatedView.widthAnchor .+ 10) .* 3
        view1 ≤ (relatedView.widthAnchor .+ 10) .* 3
        view1 ≤ (relatedView.widthAnchor .+ 10) .* 3
        view1 ≤ (relatedView.widthAnchor .+ 10) .* 3
        view1 ≤ (relatedView.widthAnchor .+ 10) .* 3
        view1 ≤ (relatedView.widthAnchor .+ 10) .* 3
        view1 ≤ (relatedView.widthAnchor .+ 10) .* 3
        view1 ≤ (relatedView.widthAnchor .+ 10) .* 3
    }

    func compileView1WidthAnchorLessThanOrEqualToWidthAnchorPlusConstantMultipliedByConstant() {
        view1.widthAnchor ≤ 3 .* (relatedView.widthAnchor .+ 10)
        view1.widthAnchor ≤ 3 .* (relatedView.widthAnchor .+ 10)
        view1.widthAnchor ≤ 3 .* (relatedView.widthAnchor .+ 10)
        view1.widthAnchor ≤ 3 .* (relatedView.widthAnchor .+ 10)
        view1.widthAnchor ≤ 3 .* (relatedView.widthAnchor .+ 10)
        view1.widthAnchor ≤ 3 .* (relatedView.widthAnchor .+ 10)
        view1.widthAnchor ≤ 3 .* (relatedView.widthAnchor .+ 10)
        view1.widthAnchor ≤ 3 .* (relatedView.widthAnchor .+ 10)
        view1.widthAnchor ≤ 3 .* (relatedView.widthAnchor .+ 10)
        view1.widthAnchor ≤ 3 .* (relatedView.widthAnchor .+ 10)
        view1.widthAnchor ≤ 3 .* (relatedView.widthAnchor .+ 10)
        view1.widthAnchor ≤ 3 .* (relatedView.widthAnchor .+ 10)
        view1.widthAnchor ≤ 3 .* (relatedView.widthAnchor .+ 10)
        view1.widthAnchor ≤ 3 .* (relatedView.widthAnchor .+ 10)
        view1.widthAnchor ≤ 3 .* (relatedView.widthAnchor .+ 10)
        view1.widthAnchor ≤ 3 .* (relatedView.widthAnchor .+ 10)
        view1.widthAnchor ≤ 3 .* (relatedView.widthAnchor .+ 10)
        view1.widthAnchor ≤ 3 .* (relatedView.widthAnchor .+ 10)
        view1.widthAnchor ≤ 3 .* (relatedView.widthAnchor .+ 10)
        view1.widthAnchor ≤ 3 .* (relatedView.widthAnchor .+ 10)
    }

    func impliedcompileView1WidthAnchorLessThanOrEqualToWidthAnchorPlusConstantMultipliedByConstant() {
        view1 ≤ 3 .* (relatedView.widthAnchor .+ 10)
        view1 ≤ 3 .* (relatedView.widthAnchor .+ 10)
        view1 ≤ 3 .* (relatedView.widthAnchor .+ 10)
        view1 ≤ 3 .* (relatedView.widthAnchor .+ 10)
        view1 ≤ 3 .* (relatedView.widthAnchor .+ 10)
        view1 ≤ 3 .* (relatedView.widthAnchor .+ 10)
        view1 ≤ 3 .* (relatedView.widthAnchor .+ 10)
        view1 ≤ 3 .* (relatedView.widthAnchor .+ 10)
        view1 ≤ 3 .* (relatedView.widthAnchor .+ 10)
        view1 ≤ 3 .* (relatedView.widthAnchor .+ 10)
        view1 ≤ 3 .* (relatedView.widthAnchor .+ 10)
        view1 ≤ 3 .* (relatedView.widthAnchor .+ 10)
        view1 ≤ 3 .* (relatedView.widthAnchor .+ 10)
        view1 ≤ 3 .* (relatedView.widthAnchor .+ 10)
        view1 ≤ 3 .* (relatedView.widthAnchor .+ 10)
        view1 ≤ 3 .* (relatedView.widthAnchor .+ 10)
        view1 ≤ 3 .* (relatedView.widthAnchor .+ 10)
        view1 ≤ 3 .* (relatedView.widthAnchor .+ 10)
        view1 ≤ 3 .* (relatedView.widthAnchor .+ 10)
        view1 ≤ 3 .* (relatedView.widthAnchor .+ 10)
    }

    func compileView1WidthAnchorLessThanOrEqualToWidthAnchorMultipliedByConstantPlusConstant() {
        view1.widthAnchor ≤ 3 .* relatedView.widthAnchor .+ 10
        view1.widthAnchor ≤ 3 .* relatedView.widthAnchor .+ 10
        view1.widthAnchor ≤ 3 .* relatedView.widthAnchor .+ 10
        view1.widthAnchor ≤ 3 .* relatedView.widthAnchor .+ 10
        view1.widthAnchor ≤ 3 .* relatedView.widthAnchor .+ 10
        view1.widthAnchor ≤ 3 .* relatedView.widthAnchor .+ 10
        view1.widthAnchor ≤ 3 .* relatedView.widthAnchor .+ 10
        view1.widthAnchor ≤ 3 .* relatedView.widthAnchor .+ 10
        view1.widthAnchor ≤ 3 .* relatedView.widthAnchor .+ 10
        view1.widthAnchor ≤ 3 .* relatedView.widthAnchor .+ 10
        view1.widthAnchor ≤ 3 .* relatedView.widthAnchor .+ 10
        view1.widthAnchor ≤ 3 .* relatedView.widthAnchor .+ 10
        view1.widthAnchor ≤ 3 .* relatedView.widthAnchor .+ 10
        view1.widthAnchor ≤ 3 .* relatedView.widthAnchor .+ 10
        view1.widthAnchor ≤ 3 .* relatedView.widthAnchor .+ 10
        view1.widthAnchor ≤ 3 .* relatedView.widthAnchor .+ 10
        view1.widthAnchor ≤ 3 .* relatedView.widthAnchor .+ 10
        view1.widthAnchor ≤ 3 .* relatedView.widthAnchor .+ 10
        view1.widthAnchor ≤ 3 .* relatedView.widthAnchor .+ 10
        view1.widthAnchor ≤ 3 .* relatedView.widthAnchor .+ 10
    }

    func impliedcompileView1WidthAnchorLessThanOrEqualToWidthAnchorMultipliedByConstantPlusConstant() {
        view1 ≤ 3 .* relatedView.widthAnchor .+ 10
        view1 ≤ 3 .* relatedView.widthAnchor .+ 10
        view1 ≤ 3 .* relatedView.widthAnchor .+ 10
        view1 ≤ 3 .* relatedView.widthAnchor .+ 10
        view1 ≤ 3 .* relatedView.widthAnchor .+ 10
        view1 ≤ 3 .* relatedView.widthAnchor .+ 10
        view1 ≤ 3 .* relatedView.widthAnchor .+ 10
        view1 ≤ 3 .* relatedView.widthAnchor .+ 10
        view1 ≤ 3 .* relatedView.widthAnchor .+ 10
        view1 ≤ 3 .* relatedView.widthAnchor .+ 10
        view1 ≤ 3 .* relatedView.widthAnchor .+ 10
        view1 ≤ 3 .* relatedView.widthAnchor .+ 10
        view1 ≤ 3 .* relatedView.widthAnchor .+ 10
        view1 ≤ 3 .* relatedView.widthAnchor .+ 10
        view1 ≤ 3 .* relatedView.widthAnchor .+ 10
        view1 ≤ 3 .* relatedView.widthAnchor .+ 10
        view1 ≤ 3 .* relatedView.widthAnchor .+ 10
        view1 ≤ 3 .* relatedView.widthAnchor .+ 10
        view1 ≤ 3 .* relatedView.widthAnchor .+ 10
        view1 ≤ 3 .* relatedView.widthAnchor .+ 10
    }

    func compileView1WidthAnchorLessThanOrEqualToWidthAnchorPlusConstantDividedByConstant() {
        view1.widthAnchor ≤ (relatedView.widthAnchor .+ 10) ./ 2
        view1.widthAnchor ≤ (relatedView.widthAnchor .+ 10) ./ 2
        view1.widthAnchor ≤ (relatedView.widthAnchor .+ 10) ./ 2
        view1.widthAnchor ≤ (relatedView.widthAnchor .+ 10) ./ 2
        view1.widthAnchor ≤ (relatedView.widthAnchor .+ 10) ./ 2
        view1.widthAnchor ≤ (relatedView.widthAnchor .+ 10) ./ 2
        view1.widthAnchor ≤ (relatedView.widthAnchor .+ 10) ./ 2
        view1.widthAnchor ≤ (relatedView.widthAnchor .+ 10) ./ 2
        view1.widthAnchor ≤ (relatedView.widthAnchor .+ 10) ./ 2
        view1.widthAnchor ≤ (relatedView.widthAnchor .+ 10) ./ 2
        view1.widthAnchor ≤ (relatedView.widthAnchor .+ 10) ./ 2
        view1.widthAnchor ≤ (relatedView.widthAnchor .+ 10) ./ 2
        view1.widthAnchor ≤ (relatedView.widthAnchor .+ 10) ./ 2
        view1.widthAnchor ≤ (relatedView.widthAnchor .+ 10) ./ 2
        view1.widthAnchor ≤ (relatedView.widthAnchor .+ 10) ./ 2
        view1.widthAnchor ≤ (relatedView.widthAnchor .+ 10) ./ 2
        view1.widthAnchor ≤ (relatedView.widthAnchor .+ 10) ./ 2
        view1.widthAnchor ≤ (relatedView.widthAnchor .+ 10) ./ 2
        view1.widthAnchor ≤ (relatedView.widthAnchor .+ 10) ./ 2
        view1.widthAnchor ≤ (relatedView.widthAnchor .+ 10) ./ 2
    }

    func impliedcompileView1WidthAnchorLessThanOrEqualToWidthAnchorPlusConstantDividedByConstant() {
        view1 ≤ (relatedView.widthAnchor .+ 10) ./ 2
        view1 ≤ (relatedView.widthAnchor .+ 10) ./ 2
        view1 ≤ (relatedView.widthAnchor .+ 10) ./ 2
        view1 ≤ (relatedView.widthAnchor .+ 10) ./ 2
        view1 ≤ (relatedView.widthAnchor .+ 10) ./ 2
        view1 ≤ (relatedView.widthAnchor .+ 10) ./ 2
        view1 ≤ (relatedView.widthAnchor .+ 10) ./ 2
        view1 ≤ (relatedView.widthAnchor .+ 10) ./ 2
        view1 ≤ (relatedView.widthAnchor .+ 10) ./ 2
        view1 ≤ (relatedView.widthAnchor .+ 10) ./ 2
        view1 ≤ (relatedView.widthAnchor .+ 10) ./ 2
        view1 ≤ (relatedView.widthAnchor .+ 10) ./ 2
        view1 ≤ (relatedView.widthAnchor .+ 10) ./ 2
        view1 ≤ (relatedView.widthAnchor .+ 10) ./ 2
        view1 ≤ (relatedView.widthAnchor .+ 10) ./ 2
        view1 ≤ (relatedView.widthAnchor .+ 10) ./ 2
        view1 ≤ (relatedView.widthAnchor .+ 10) ./ 2
        view1 ≤ (relatedView.widthAnchor .+ 10) ./ 2
        view1 ≤ (relatedView.widthAnchor .+ 10) ./ 2
        view1 ≤ (relatedView.widthAnchor .+ 10) ./ 2
    }

// MARK: LessThanOrEqual with constant .+ multiplier and priority

    func compileView1WidthAnchorLessThanOrEqualToWidthAnchorPlusConstantMultiplyingConstantWithPriority() {
        view1.widthAnchor ≤ (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1.widthAnchor ≤ (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1.widthAnchor ≤ (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1.widthAnchor ≤ (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1.widthAnchor ≤ (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1.widthAnchor ≤ (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1.widthAnchor ≤ (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1.widthAnchor ≤ (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1.widthAnchor ≤ (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1.widthAnchor ≤ (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1.widthAnchor ≤ (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1.widthAnchor ≤ (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1.widthAnchor ≤ (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1.widthAnchor ≤ (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1.widthAnchor ≤ (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1.widthAnchor ≤ (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1.widthAnchor ≤ (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1.widthAnchor ≤ (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1.widthAnchor ≤ (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1.widthAnchor ≤ (relatedView.widthAnchor .+ 10) .* 3 ~ .low
    }

    func impliedcompileView1WidthAnchorLessThanOrEqualToWidthAnchorPlusConstantMultiplyingConstantWithPriority() {
        view1 ≤ (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1 ≤ (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1 ≤ (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1 ≤ (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1 ≤ (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1 ≤ (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1 ≤ (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1 ≤ (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1 ≤ (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1 ≤ (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1 ≤ (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1 ≤ (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1 ≤ (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1 ≤ (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1 ≤ (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1 ≤ (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1 ≤ (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1 ≤ (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1 ≤ (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1 ≤ (relatedView.widthAnchor .+ 10) .* 3 ~ .low
    }

    func compileView1WidthAnchorLessThanOrEqualToWidthAnchorPlusConstantMultipliedByConstantWithPriority() {
        view1.widthAnchor ≤ 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1.widthAnchor ≤ 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1.widthAnchor ≤ 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1.widthAnchor ≤ 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1.widthAnchor ≤ 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1.widthAnchor ≤ 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1.widthAnchor ≤ 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1.widthAnchor ≤ 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1.widthAnchor ≤ 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1.widthAnchor ≤ 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1.widthAnchor ≤ 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1.widthAnchor ≤ 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1.widthAnchor ≤ 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1.widthAnchor ≤ 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1.widthAnchor ≤ 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1.widthAnchor ≤ 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1.widthAnchor ≤ 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1.widthAnchor ≤ 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1.widthAnchor ≤ 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1.widthAnchor ≤ 3 .* (relatedView.widthAnchor .+ 10) ~ .low
    }

    func impliedcompileView1WidthAnchorLessThanOrEqualToWidthAnchorPlusConstantMultipliedByConstantWithPriority() {
        view1 ≤ 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1 ≤ 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1 ≤ 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1 ≤ 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1 ≤ 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1 ≤ 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1 ≤ 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1 ≤ 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1 ≤ 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1 ≤ 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1 ≤ 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1 ≤ 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1 ≤ 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1 ≤ 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1 ≤ 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1 ≤ 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1 ≤ 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1 ≤ 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1 ≤ 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1 ≤ 3 .* (relatedView.widthAnchor .+ 10) ~ .low
    }

    func compileView1WidthAnchorLessThanOrEqualToWidthAnchorMultipliedByConstantPlusConstantWithPriority() {
        view1.widthAnchor ≤ 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1.widthAnchor ≤ 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1.widthAnchor ≤ 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1.widthAnchor ≤ 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1.widthAnchor ≤ 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1.widthAnchor ≤ 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1.widthAnchor ≤ 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1.widthAnchor ≤ 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1.widthAnchor ≤ 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1.widthAnchor ≤ 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1.widthAnchor ≤ 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1.widthAnchor ≤ 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1.widthAnchor ≤ 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1.widthAnchor ≤ 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1.widthAnchor ≤ 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1.widthAnchor ≤ 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1.widthAnchor ≤ 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1.widthAnchor ≤ 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1.widthAnchor ≤ 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1.widthAnchor ≤ 3 .* relatedView.widthAnchor .+ 10 ~ .low
    }

    func impliedcompileView1WidthAnchorLessThanOrEqualToWidthAnchorMultipliedByConstantPlusConstantWithPriority() {
        view1 ≤ 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1 ≤ 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1 ≤ 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1 ≤ 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1 ≤ 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1 ≤ 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1 ≤ 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1 ≤ 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1 ≤ 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1 ≤ 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1 ≤ 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1 ≤ 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1 ≤ 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1 ≤ 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1 ≤ 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1 ≤ 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1 ≤ 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1 ≤ 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1 ≤ 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1 ≤ 3 .* relatedView.widthAnchor .+ 10 ~ .low
    }

    func compileView1WidthAnchorLessThanOrEqualToWidthAnchorPlusConstantDividedByConstantWithPriority() {
        view1.widthAnchor ≤ (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1.widthAnchor ≤ (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1.widthAnchor ≤ (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1.widthAnchor ≤ (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1.widthAnchor ≤ (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1.widthAnchor ≤ (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1.widthAnchor ≤ (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1.widthAnchor ≤ (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1.widthAnchor ≤ (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1.widthAnchor ≤ (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1.widthAnchor ≤ (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1.widthAnchor ≤ (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1.widthAnchor ≤ (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1.widthAnchor ≤ (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1.widthAnchor ≤ (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1.widthAnchor ≤ (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1.widthAnchor ≤ (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1.widthAnchor ≤ (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1.widthAnchor ≤ (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1.widthAnchor ≤ (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
    }

    func impliedcompileView1WidthAnchorLessThanOrEqualToWidthAnchorPlusConstantDividedByConstantWithPriority() {
        view1 ≤ (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1 ≤ (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1 ≤ (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1 ≤ (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1 ≤ (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1 ≤ (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1 ≤ (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1 ≤ (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1 ≤ (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1 ≤ (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1 ≤ (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1 ≤ (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1 ≤ (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1 ≤ (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1 ≤ (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1 ≤ (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1 ≤ (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1 ≤ (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1 ≤ (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1 ≤ (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
    }

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func compileView1WidthAnchorLessThanOrEqualToWidthAnchorPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        view1.widthAnchor ≤ (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1.widthAnchor ≤ (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1.widthAnchor ≤ (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1.widthAnchor ≤ (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1.widthAnchor ≤ (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1.widthAnchor ≤ (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1.widthAnchor ≤ (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1.widthAnchor ≤ (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1.widthAnchor ≤ (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1.widthAnchor ≤ (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1.widthAnchor ≤ (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1.widthAnchor ≤ (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1.widthAnchor ≤ (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1.widthAnchor ≤ (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1.widthAnchor ≤ (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1.widthAnchor ≤ (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1.widthAnchor ≤ (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1.widthAnchor ≤ (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1.widthAnchor ≤ (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1.widthAnchor ≤ (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
    }

    func impliedcompileView1WidthAnchorLessThanOrEqualToWidthAnchorPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        view1 ≤ (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1 ≤ (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1 ≤ (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1 ≤ (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1 ≤ (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1 ≤ (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1 ≤ (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1 ≤ (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1 ≤ (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1 ≤ (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1 ≤ (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1 ≤ (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1 ≤ (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1 ≤ (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1 ≤ (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1 ≤ (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1 ≤ (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1 ≤ (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1 ≤ (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1 ≤ (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
    }

    func compileView1WidthAnchorLessThanOrEqualToWidthAnchorPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        view1.widthAnchor ≤ 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1.widthAnchor ≤ 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1.widthAnchor ≤ 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1.widthAnchor ≤ 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1.widthAnchor ≤ 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1.widthAnchor ≤ 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1.widthAnchor ≤ 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1.widthAnchor ≤ 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1.widthAnchor ≤ 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1.widthAnchor ≤ 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1.widthAnchor ≤ 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1.widthAnchor ≤ 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1.widthAnchor ≤ 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1.widthAnchor ≤ 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1.widthAnchor ≤ 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1.widthAnchor ≤ 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1.widthAnchor ≤ 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1.widthAnchor ≤ 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1.widthAnchor ≤ 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1.widthAnchor ≤ 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
    }

    func impliedcompileView1WidthAnchorLessThanOrEqualToWidthAnchorPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        view1 ≤ 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1 ≤ 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1 ≤ 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1 ≤ 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1 ≤ 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1 ≤ 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1 ≤ 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1 ≤ 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1 ≤ 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1 ≤ 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1 ≤ 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1 ≤ 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1 ≤ 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1 ≤ 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1 ≤ 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1 ≤ 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1 ≤ 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1 ≤ 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1 ≤ 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1 ≤ 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
    }

    func compileView1WidthAnchorLessThanOrEqualToWidthAnchorMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        view1.widthAnchor ≤ 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1.widthAnchor ≤ 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1.widthAnchor ≤ 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1.widthAnchor ≤ 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1.widthAnchor ≤ 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1.widthAnchor ≤ 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1.widthAnchor ≤ 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1.widthAnchor ≤ 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1.widthAnchor ≤ 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1.widthAnchor ≤ 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1.widthAnchor ≤ 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1.widthAnchor ≤ 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1.widthAnchor ≤ 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1.widthAnchor ≤ 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1.widthAnchor ≤ 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1.widthAnchor ≤ 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1.widthAnchor ≤ 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1.widthAnchor ≤ 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1.widthAnchor ≤ 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1.widthAnchor ≤ 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
    }

    func impliedcompileView1WidthAnchorLessThanOrEqualToWidthAnchorMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        view1 ≤ 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1 ≤ 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1 ≤ 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1 ≤ 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1 ≤ 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1 ≤ 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1 ≤ 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1 ≤ 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1 ≤ 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1 ≤ 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1 ≤ 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1 ≤ 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1 ≤ 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1 ≤ 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1 ≤ 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1 ≤ 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1 ≤ 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1 ≤ 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1 ≤ 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1 ≤ 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
    }

    func compileView1WidthAnchorLessThanOrEqualToWidthAnchorPlusConstantDividedByConstantWithPriorityArithmetic() {
        view1.widthAnchor ≤ (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1.widthAnchor ≤ (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1.widthAnchor ≤ (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1.widthAnchor ≤ (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1.widthAnchor ≤ (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1.widthAnchor ≤ (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1.widthAnchor ≤ (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1.widthAnchor ≤ (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1.widthAnchor ≤ (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1.widthAnchor ≤ (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1.widthAnchor ≤ (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1.widthAnchor ≤ (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1.widthAnchor ≤ (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1.widthAnchor ≤ (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1.widthAnchor ≤ (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1.widthAnchor ≤ (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1.widthAnchor ≤ (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1.widthAnchor ≤ (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1.widthAnchor ≤ (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1.widthAnchor ≤ (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
    }

    func impliedcompileView1WidthAnchorLessThanOrEqualToWidthAnchorPlusConstantDividedByConstantWithPriorityArithmetic() {
        view1 ≤ (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1 ≤ (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1 ≤ (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1 ≤ (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1 ≤ (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1 ≤ (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1 ≤ (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1 ≤ (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1 ≤ (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1 ≤ (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1 ≤ (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1 ≤ (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1 ≤ (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1 ≤ (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1 ≤ (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1 ≤ (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1 ≤ (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1 ≤ (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1 ≤ (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1 ≤ (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
    }

    // MARK: GreaterThanOrEqual

    func compileView1WidthAnchorGreaterThanOrEqualToWidthAnchor() {
        view1.widthAnchor ≥ relatedView.widthAnchor
        view1.widthAnchor ≥ relatedView.widthAnchor
        view1.widthAnchor ≥ relatedView.widthAnchor
        view1.widthAnchor ≥ relatedView.widthAnchor
        view1.widthAnchor ≥ relatedView.widthAnchor
        view1.widthAnchor ≥ relatedView.widthAnchor
        view1.widthAnchor ≥ relatedView.widthAnchor
        view1.widthAnchor ≥ relatedView.widthAnchor
        view1.widthAnchor ≥ relatedView.widthAnchor
        view1.widthAnchor ≥ relatedView.widthAnchor
        view1.widthAnchor ≥ relatedView.widthAnchor
        view1.widthAnchor ≥ relatedView.widthAnchor
        view1.widthAnchor ≥ relatedView.widthAnchor
        view1.widthAnchor ≥ relatedView.widthAnchor
        view1.widthAnchor ≥ relatedView.widthAnchor
        view1.widthAnchor ≥ relatedView.widthAnchor
        view1.widthAnchor ≥ relatedView.widthAnchor
        view1.widthAnchor ≥ relatedView.widthAnchor
        view1.widthAnchor ≥ relatedView.widthAnchor
        view1.widthAnchor ≥ relatedView.widthAnchor
    }

    func impliedcompileView1WidthAnchorGreaterThanOrEqualToWidthAnchor() {
        view1 ≥ relatedView.widthAnchor
        view1 ≥ relatedView.widthAnchor
        view1 ≥ relatedView.widthAnchor
        view1 ≥ relatedView.widthAnchor
        view1 ≥ relatedView.widthAnchor
        view1 ≥ relatedView.widthAnchor
        view1 ≥ relatedView.widthAnchor
        view1 ≥ relatedView.widthAnchor
        view1 ≥ relatedView.widthAnchor
        view1 ≥ relatedView.widthAnchor
        view1 ≥ relatedView.widthAnchor
        view1 ≥ relatedView.widthAnchor
        view1 ≥ relatedView.widthAnchor
        view1 ≥ relatedView.widthAnchor
        view1 ≥ relatedView.widthAnchor
        view1 ≥ relatedView.widthAnchor
        view1 ≥ relatedView.widthAnchor
        view1 ≥ relatedView.widthAnchor
        view1 ≥ relatedView.widthAnchor
        view1 ≥ relatedView.widthAnchor
    }

    // MARK: GreaterThanOrEqual with constant
    func compileView1WidthAnchorGreaterThanOrEqualToWidthAnchorPlusConstant() {
        view1.widthAnchor ≥ relatedView.widthAnchor .+ 10
        view1.widthAnchor ≥ relatedView.widthAnchor .+ 10
        view1.widthAnchor ≥ relatedView.widthAnchor .+ 10
        view1.widthAnchor ≥ relatedView.widthAnchor .+ 10
        view1.widthAnchor ≥ relatedView.widthAnchor .+ 10
        view1.widthAnchor ≥ relatedView.widthAnchor .+ 10
        view1.widthAnchor ≥ relatedView.widthAnchor .+ 10
        view1.widthAnchor ≥ relatedView.widthAnchor .+ 10
        view1.widthAnchor ≥ relatedView.widthAnchor .+ 10
        view1.widthAnchor ≥ relatedView.widthAnchor .+ 10
        view1.widthAnchor ≥ relatedView.widthAnchor .+ 10
        view1.widthAnchor ≥ relatedView.widthAnchor .+ 10
        view1.widthAnchor ≥ relatedView.widthAnchor .+ 10
        view1.widthAnchor ≥ relatedView.widthAnchor .+ 10
        view1.widthAnchor ≥ relatedView.widthAnchor .+ 10
        view1.widthAnchor ≥ relatedView.widthAnchor .+ 10
        view1.widthAnchor ≥ relatedView.widthAnchor .+ 10
        view1.widthAnchor ≥ relatedView.widthAnchor .+ 10
        view1.widthAnchor ≥ relatedView.widthAnchor .+ 10
        view1.widthAnchor ≥ relatedView.widthAnchor .+ 10
    }

    func impliedcompileView1WidthAnchorGreaterThanOrEqualToWidthAnchorPlusConstant() {
        view1 ≥ relatedView.widthAnchor .+ 10
        view1 ≥ relatedView.widthAnchor .+ 10
        view1 ≥ relatedView.widthAnchor .+ 10
        view1 ≥ relatedView.widthAnchor .+ 10
        view1 ≥ relatedView.widthAnchor .+ 10
        view1 ≥ relatedView.widthAnchor .+ 10
        view1 ≥ relatedView.widthAnchor .+ 10
        view1 ≥ relatedView.widthAnchor .+ 10
        view1 ≥ relatedView.widthAnchor .+ 10
        view1 ≥ relatedView.widthAnchor .+ 10
        view1 ≥ relatedView.widthAnchor .+ 10
        view1 ≥ relatedView.widthAnchor .+ 10
        view1 ≥ relatedView.widthAnchor .+ 10
        view1 ≥ relatedView.widthAnchor .+ 10
        view1 ≥ relatedView.widthAnchor .+ 10
        view1 ≥ relatedView.widthAnchor .+ 10
        view1 ≥ relatedView.widthAnchor .+ 10
        view1 ≥ relatedView.widthAnchor .+ 10
        view1 ≥ relatedView.widthAnchor .+ 10
        view1 ≥ relatedView.widthAnchor .+ 10
    }

    func compileView1WidthAnchorGreaterThanOrEqualToWidthAnchorMinusConstant() {
        view1.widthAnchor ≥ relatedView.widthAnchor .- 10
        view1.widthAnchor ≥ relatedView.widthAnchor .- 10
        view1.widthAnchor ≥ relatedView.widthAnchor .- 10
        view1.widthAnchor ≥ relatedView.widthAnchor .- 10
        view1.widthAnchor ≥ relatedView.widthAnchor .- 10
        view1.widthAnchor ≥ relatedView.widthAnchor .- 10
        view1.widthAnchor ≥ relatedView.widthAnchor .- 10
        view1.widthAnchor ≥ relatedView.widthAnchor .- 10
        view1.widthAnchor ≥ relatedView.widthAnchor .- 10
        view1.widthAnchor ≥ relatedView.widthAnchor .- 10
        view1.widthAnchor ≥ relatedView.widthAnchor .- 10
        view1.widthAnchor ≥ relatedView.widthAnchor .- 10
        view1.widthAnchor ≥ relatedView.widthAnchor .- 10
        view1.widthAnchor ≥ relatedView.widthAnchor .- 10
        view1.widthAnchor ≥ relatedView.widthAnchor .- 10
        view1.widthAnchor ≥ relatedView.widthAnchor .- 10
        view1.widthAnchor ≥ relatedView.widthAnchor .- 10
        view1.widthAnchor ≥ relatedView.widthAnchor .- 10
        view1.widthAnchor ≥ relatedView.widthAnchor .- 10
        view1.widthAnchor ≥ relatedView.widthAnchor .- 10
    }

    func impliedcompileView1WidthAnchorGreaterThanOrEqualToWidthAnchorMinusConstant() {
        view1 ≥ relatedView.widthAnchor .- 10
        view1 ≥ relatedView.widthAnchor .- 10
        view1 ≥ relatedView.widthAnchor .- 10
        view1 ≥ relatedView.widthAnchor .- 10
        view1 ≥ relatedView.widthAnchor .- 10
        view1 ≥ relatedView.widthAnchor .- 10
        view1 ≥ relatedView.widthAnchor .- 10
        view1 ≥ relatedView.widthAnchor .- 10
        view1 ≥ relatedView.widthAnchor .- 10
        view1 ≥ relatedView.widthAnchor .- 10
        view1 ≥ relatedView.widthAnchor .- 10
        view1 ≥ relatedView.widthAnchor .- 10
        view1 ≥ relatedView.widthAnchor .- 10
        view1 ≥ relatedView.widthAnchor .- 10
        view1 ≥ relatedView.widthAnchor .- 10
        view1 ≥ relatedView.widthAnchor .- 10
        view1 ≥ relatedView.widthAnchor .- 10
        view1 ≥ relatedView.widthAnchor .- 10
        view1 ≥ relatedView.widthAnchor .- 10
        view1 ≥ relatedView.widthAnchor .- 10
    }

    // MARK: GreaterThanOrEqual with multiplier
    func compileView1WidthAnchorGreaterThanOrEqualToWidthAnchorMultiplyingConstant() {
        view1.widthAnchor ≥ relatedView.widthAnchor .* 3
        view1.widthAnchor ≥ relatedView.widthAnchor .* 3
        view1.widthAnchor ≥ relatedView.widthAnchor .* 3
        view1.widthAnchor ≥ relatedView.widthAnchor .* 3
        view1.widthAnchor ≥ relatedView.widthAnchor .* 3
        view1.widthAnchor ≥ relatedView.widthAnchor .* 3
        view1.widthAnchor ≥ relatedView.widthAnchor .* 3
        view1.widthAnchor ≥ relatedView.widthAnchor .* 3
        view1.widthAnchor ≥ relatedView.widthAnchor .* 3
        view1.widthAnchor ≥ relatedView.widthAnchor .* 3
        view1.widthAnchor ≥ relatedView.widthAnchor .* 3
        view1.widthAnchor ≥ relatedView.widthAnchor .* 3
        view1.widthAnchor ≥ relatedView.widthAnchor .* 3
        view1.widthAnchor ≥ relatedView.widthAnchor .* 3
        view1.widthAnchor ≥ relatedView.widthAnchor .* 3
        view1.widthAnchor ≥ relatedView.widthAnchor .* 3
        view1.widthAnchor ≥ relatedView.widthAnchor .* 3
        view1.widthAnchor ≥ relatedView.widthAnchor .* 3
        view1.widthAnchor ≥ relatedView.widthAnchor .* 3
        view1.widthAnchor ≥ relatedView.widthAnchor .* 3
    }

    func impliedcompileView1WidthAnchorGreaterThanOrEqualToWidthAnchorMultiplyingConstant() {
        view1 ≥ relatedView.widthAnchor .* 3
        view1 ≥ relatedView.widthAnchor .* 3
        view1 ≥ relatedView.widthAnchor .* 3
        view1 ≥ relatedView.widthAnchor .* 3
        view1 ≥ relatedView.widthAnchor .* 3
        view1 ≥ relatedView.widthAnchor .* 3
        view1 ≥ relatedView.widthAnchor .* 3
        view1 ≥ relatedView.widthAnchor .* 3
        view1 ≥ relatedView.widthAnchor .* 3
        view1 ≥ relatedView.widthAnchor .* 3
        view1 ≥ relatedView.widthAnchor .* 3
        view1 ≥ relatedView.widthAnchor .* 3
        view1 ≥ relatedView.widthAnchor .* 3
        view1 ≥ relatedView.widthAnchor .* 3
        view1 ≥ relatedView.widthAnchor .* 3
        view1 ≥ relatedView.widthAnchor .* 3
        view1 ≥ relatedView.widthAnchor .* 3
        view1 ≥ relatedView.widthAnchor .* 3
        view1 ≥ relatedView.widthAnchor .* 3
        view1 ≥ relatedView.widthAnchor .* 3
    }

    func compileView1WidthAnchorGreaterThanOrEqualToWidthAnchorMultipliedByConstant() {
        view1.widthAnchor ≥ 3 .* relatedView.widthAnchor
        view1.widthAnchor ≥ 3 .* relatedView.widthAnchor
        view1.widthAnchor ≥ 3 .* relatedView.widthAnchor
        view1.widthAnchor ≥ 3 .* relatedView.widthAnchor
        view1.widthAnchor ≥ 3 .* relatedView.widthAnchor
        view1.widthAnchor ≥ 3 .* relatedView.widthAnchor
        view1.widthAnchor ≥ 3 .* relatedView.widthAnchor
        view1.widthAnchor ≥ 3 .* relatedView.widthAnchor
        view1.widthAnchor ≥ 3 .* relatedView.widthAnchor
        view1.widthAnchor ≥ 3 .* relatedView.widthAnchor
        view1.widthAnchor ≥ 3 .* relatedView.widthAnchor
        view1.widthAnchor ≥ 3 .* relatedView.widthAnchor
        view1.widthAnchor ≥ 3 .* relatedView.widthAnchor
        view1.widthAnchor ≥ 3 .* relatedView.widthAnchor
        view1.widthAnchor ≥ 3 .* relatedView.widthAnchor
        view1.widthAnchor ≥ 3 .* relatedView.widthAnchor
        view1.widthAnchor ≥ 3 .* relatedView.widthAnchor
        view1.widthAnchor ≥ 3 .* relatedView.widthAnchor
        view1.widthAnchor ≥ 3 .* relatedView.widthAnchor
        view1.widthAnchor ≥ 3 .* relatedView.widthAnchor
    }

    func impliedcompileView1WidthAnchorGreaterThanOrEqualToWidthAnchorMultipliedByConstant() {
        view1 ≥ 3 .* relatedView.widthAnchor
        view1 ≥ 3 .* relatedView.widthAnchor
        view1 ≥ 3 .* relatedView.widthAnchor
        view1 ≥ 3 .* relatedView.widthAnchor
        view1 ≥ 3 .* relatedView.widthAnchor
        view1 ≥ 3 .* relatedView.widthAnchor
        view1 ≥ 3 .* relatedView.widthAnchor
        view1 ≥ 3 .* relatedView.widthAnchor
        view1 ≥ 3 .* relatedView.widthAnchor
        view1 ≥ 3 .* relatedView.widthAnchor
        view1 ≥ 3 .* relatedView.widthAnchor
        view1 ≥ 3 .* relatedView.widthAnchor
        view1 ≥ 3 .* relatedView.widthAnchor
        view1 ≥ 3 .* relatedView.widthAnchor
        view1 ≥ 3 .* relatedView.widthAnchor
        view1 ≥ 3 .* relatedView.widthAnchor
        view1 ≥ 3 .* relatedView.widthAnchor
        view1 ≥ 3 .* relatedView.widthAnchor
        view1 ≥ 3 .* relatedView.widthAnchor
        view1 ≥ 3 .* relatedView.widthAnchor
    }

    func compileView1WidthAnchorGreaterThanOrEqualToWidthAnchorDividedByConstant() {
        view1.widthAnchor ≥ relatedView.widthAnchor ./ 2
        view1.widthAnchor ≥ relatedView.widthAnchor ./ 2
        view1.widthAnchor ≥ relatedView.widthAnchor ./ 2
        view1.widthAnchor ≥ relatedView.widthAnchor ./ 2
        view1.widthAnchor ≥ relatedView.widthAnchor ./ 2
        view1.widthAnchor ≥ relatedView.widthAnchor ./ 2
        view1.widthAnchor ≥ relatedView.widthAnchor ./ 2
        view1.widthAnchor ≥ relatedView.widthAnchor ./ 2
        view1.widthAnchor ≥ relatedView.widthAnchor ./ 2
        view1.widthAnchor ≥ relatedView.widthAnchor ./ 2
        view1.widthAnchor ≥ relatedView.widthAnchor ./ 2
        view1.widthAnchor ≥ relatedView.widthAnchor ./ 2
        view1.widthAnchor ≥ relatedView.widthAnchor ./ 2
        view1.widthAnchor ≥ relatedView.widthAnchor ./ 2
        view1.widthAnchor ≥ relatedView.widthAnchor ./ 2
        view1.widthAnchor ≥ relatedView.widthAnchor ./ 2
        view1.widthAnchor ≥ relatedView.widthAnchor ./ 2
        view1.widthAnchor ≥ relatedView.widthAnchor ./ 2
        view1.widthAnchor ≥ relatedView.widthAnchor ./ 2
        view1.widthAnchor ≥ relatedView.widthAnchor ./ 2
    }

    func impliedcompileView1WidthAnchorGreaterThanOrEqualToWidthAnchorDividedByConstant() {
        view1 ≥ relatedView.widthAnchor ./ 2
        view1 ≥ relatedView.widthAnchor ./ 2
        view1 ≥ relatedView.widthAnchor ./ 2
        view1 ≥ relatedView.widthAnchor ./ 2
        view1 ≥ relatedView.widthAnchor ./ 2
        view1 ≥ relatedView.widthAnchor ./ 2
        view1 ≥ relatedView.widthAnchor ./ 2
        view1 ≥ relatedView.widthAnchor ./ 2
        view1 ≥ relatedView.widthAnchor ./ 2
        view1 ≥ relatedView.widthAnchor ./ 2
        view1 ≥ relatedView.widthAnchor ./ 2
        view1 ≥ relatedView.widthAnchor ./ 2
        view1 ≥ relatedView.widthAnchor ./ 2
        view1 ≥ relatedView.widthAnchor ./ 2
        view1 ≥ relatedView.widthAnchor ./ 2
        view1 ≥ relatedView.widthAnchor ./ 2
        view1 ≥ relatedView.widthAnchor ./ 2
        view1 ≥ relatedView.widthAnchor ./ 2
        view1 ≥ relatedView.widthAnchor ./ 2
        view1 ≥ relatedView.widthAnchor ./ 2
    }

    // MARK: GreaterThanOrEqual Prioritized
    func compileView1WidthAnchorGreaterThanOrEqualToWidthAnchorWithPriority() {
        view1.widthAnchor ≥ relatedView.widthAnchor ~ .low
        view1.widthAnchor ≥ relatedView.widthAnchor ~ .low
        view1.widthAnchor ≥ relatedView.widthAnchor ~ .low
        view1.widthAnchor ≥ relatedView.widthAnchor ~ .low
        view1.widthAnchor ≥ relatedView.widthAnchor ~ .low
        view1.widthAnchor ≥ relatedView.widthAnchor ~ .low
        view1.widthAnchor ≥ relatedView.widthAnchor ~ .low
        view1.widthAnchor ≥ relatedView.widthAnchor ~ .low
        view1.widthAnchor ≥ relatedView.widthAnchor ~ .low
        view1.widthAnchor ≥ relatedView.widthAnchor ~ .low
        view1.widthAnchor ≥ relatedView.widthAnchor ~ .low
        view1.widthAnchor ≥ relatedView.widthAnchor ~ .low
        view1.widthAnchor ≥ relatedView.widthAnchor ~ .low
        view1.widthAnchor ≥ relatedView.widthAnchor ~ .low
        view1.widthAnchor ≥ relatedView.widthAnchor ~ .low
        view1.widthAnchor ≥ relatedView.widthAnchor ~ .low
        view1.widthAnchor ≥ relatedView.widthAnchor ~ .low
        view1.widthAnchor ≥ relatedView.widthAnchor ~ .low
        view1.widthAnchor ≥ relatedView.widthAnchor ~ .low
        view1.widthAnchor ≥ relatedView.widthAnchor ~ .low
    }

    func impliedcompileView1WidthAnchorGreaterThanOrEqualToWidthAnchorWithPriority() {
        view1 ≥ relatedView.widthAnchor ~ .low
        view1 ≥ relatedView.widthAnchor ~ .low
        view1 ≥ relatedView.widthAnchor ~ .low
        view1 ≥ relatedView.widthAnchor ~ .low
        view1 ≥ relatedView.widthAnchor ~ .low
        view1 ≥ relatedView.widthAnchor ~ .low
        view1 ≥ relatedView.widthAnchor ~ .low
        view1 ≥ relatedView.widthAnchor ~ .low
        view1 ≥ relatedView.widthAnchor ~ .low
        view1 ≥ relatedView.widthAnchor ~ .low
        view1 ≥ relatedView.widthAnchor ~ .low
        view1 ≥ relatedView.widthAnchor ~ .low
        view1 ≥ relatedView.widthAnchor ~ .low
        view1 ≥ relatedView.widthAnchor ~ .low
        view1 ≥ relatedView.widthAnchor ~ .low
        view1 ≥ relatedView.widthAnchor ~ .low
        view1 ≥ relatedView.widthAnchor ~ .low
        view1 ≥ relatedView.widthAnchor ~ .low
        view1 ≥ relatedView.widthAnchor ~ .low
        view1 ≥ relatedView.widthAnchor ~ .low
    }

    func compileView1WidthAnchorGreaterThanOrEqualToWidthAnchorWithPriorityLiteral() {
        view1.widthAnchor ≥ relatedView.widthAnchor ~ 300
        view1.widthAnchor ≥ relatedView.widthAnchor ~ 300
        view1.widthAnchor ≥ relatedView.widthAnchor ~ 300
        view1.widthAnchor ≥ relatedView.widthAnchor ~ 300
        view1.widthAnchor ≥ relatedView.widthAnchor ~ 300
        view1.widthAnchor ≥ relatedView.widthAnchor ~ 300
        view1.widthAnchor ≥ relatedView.widthAnchor ~ 300
        view1.widthAnchor ≥ relatedView.widthAnchor ~ 300
        view1.widthAnchor ≥ relatedView.widthAnchor ~ 300
        view1.widthAnchor ≥ relatedView.widthAnchor ~ 300
        view1.widthAnchor ≥ relatedView.widthAnchor ~ 300
        view1.widthAnchor ≥ relatedView.widthAnchor ~ 300
        view1.widthAnchor ≥ relatedView.widthAnchor ~ 300
        view1.widthAnchor ≥ relatedView.widthAnchor ~ 300
        view1.widthAnchor ≥ relatedView.widthAnchor ~ 300
        view1.widthAnchor ≥ relatedView.widthAnchor ~ 300
        view1.widthAnchor ≥ relatedView.widthAnchor ~ 300
        view1.widthAnchor ≥ relatedView.widthAnchor ~ 300
        view1.widthAnchor ≥ relatedView.widthAnchor ~ 300
        view1.widthAnchor ≥ relatedView.widthAnchor ~ 300
    }

    func impliedcompileView1WidthAnchorGreaterThanOrEqualToWidthAnchorWithPriorityLiteral() {
        view1 ≥ relatedView.widthAnchor ~ 300
        view1 ≥ relatedView.widthAnchor ~ 300
        view1 ≥ relatedView.widthAnchor ~ 300
        view1 ≥ relatedView.widthAnchor ~ 300
        view1 ≥ relatedView.widthAnchor ~ 300
        view1 ≥ relatedView.widthAnchor ~ 300
        view1 ≥ relatedView.widthAnchor ~ 300
        view1 ≥ relatedView.widthAnchor ~ 300
        view1 ≥ relatedView.widthAnchor ~ 300
        view1 ≥ relatedView.widthAnchor ~ 300
        view1 ≥ relatedView.widthAnchor ~ 300
        view1 ≥ relatedView.widthAnchor ~ 300
        view1 ≥ relatedView.widthAnchor ~ 300
        view1 ≥ relatedView.widthAnchor ~ 300
        view1 ≥ relatedView.widthAnchor ~ 300
        view1 ≥ relatedView.widthAnchor ~ 300
        view1 ≥ relatedView.widthAnchor ~ 300
        view1 ≥ relatedView.widthAnchor ~ 300
        view1 ≥ relatedView.widthAnchor ~ 300
        view1 ≥ relatedView.widthAnchor ~ 300
    }

    func compileView1WidthAnchorGreaterThanOrEqualToWidthAnchorWithPriorityArithmetic() {
        view1.widthAnchor ≥ relatedView.widthAnchor ~ .high .- 1
        view1.widthAnchor ≥ relatedView.widthAnchor ~ .high .- 1
        view1.widthAnchor ≥ relatedView.widthAnchor ~ .high .- 1
        view1.widthAnchor ≥ relatedView.widthAnchor ~ .high .- 1
        view1.widthAnchor ≥ relatedView.widthAnchor ~ .high .- 1
        view1.widthAnchor ≥ relatedView.widthAnchor ~ .high .- 1
        view1.widthAnchor ≥ relatedView.widthAnchor ~ .high .- 1
        view1.widthAnchor ≥ relatedView.widthAnchor ~ .high .- 1
        view1.widthAnchor ≥ relatedView.widthAnchor ~ .high .- 1
        view1.widthAnchor ≥ relatedView.widthAnchor ~ .high .- 1
        view1.widthAnchor ≥ relatedView.widthAnchor ~ .high .- 1
        view1.widthAnchor ≥ relatedView.widthAnchor ~ .high .- 1
        view1.widthAnchor ≥ relatedView.widthAnchor ~ .high .- 1
        view1.widthAnchor ≥ relatedView.widthAnchor ~ .high .- 1
        view1.widthAnchor ≥ relatedView.widthAnchor ~ .high .- 1
        view1.widthAnchor ≥ relatedView.widthAnchor ~ .high .- 1
        view1.widthAnchor ≥ relatedView.widthAnchor ~ .high .- 1
        view1.widthAnchor ≥ relatedView.widthAnchor ~ .high .- 1
        view1.widthAnchor ≥ relatedView.widthAnchor ~ .high .- 1
        view1.widthAnchor ≥ relatedView.widthAnchor ~ .high .- 1
    }

    func impliedcompileView1WidthAnchorGreaterThanOrEqualToWidthAnchorWithPriorityArithmetic() {
        view1 ≥ relatedView.widthAnchor ~ .high .- 1
        view1 ≥ relatedView.widthAnchor ~ .high .- 1
        view1 ≥ relatedView.widthAnchor ~ .high .- 1
        view1 ≥ relatedView.widthAnchor ~ .high .- 1
        view1 ≥ relatedView.widthAnchor ~ .high .- 1
        view1 ≥ relatedView.widthAnchor ~ .high .- 1
        view1 ≥ relatedView.widthAnchor ~ .high .- 1
        view1 ≥ relatedView.widthAnchor ~ .high .- 1
        view1 ≥ relatedView.widthAnchor ~ .high .- 1
        view1 ≥ relatedView.widthAnchor ~ .high .- 1
        view1 ≥ relatedView.widthAnchor ~ .high .- 1
        view1 ≥ relatedView.widthAnchor ~ .high .- 1
        view1 ≥ relatedView.widthAnchor ~ .high .- 1
        view1 ≥ relatedView.widthAnchor ~ .high .- 1
        view1 ≥ relatedView.widthAnchor ~ .high .- 1
        view1 ≥ relatedView.widthAnchor ~ .high .- 1
        view1 ≥ relatedView.widthAnchor ~ .high .- 1
        view1 ≥ relatedView.widthAnchor ~ .high .- 1
        view1 ≥ relatedView.widthAnchor ~ .high .- 1
        view1 ≥ relatedView.widthAnchor ~ .high .- 1
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func compileView1WidthAnchorGreaterThanOrEqualToWidthAnchorPlusConstantMultiplyingConstant() {
        view1.widthAnchor ≥ (relatedView.widthAnchor .+ 10) .* 3
        view1.widthAnchor ≥ (relatedView.widthAnchor .+ 10) .* 3
        view1.widthAnchor ≥ (relatedView.widthAnchor .+ 10) .* 3
        view1.widthAnchor ≥ (relatedView.widthAnchor .+ 10) .* 3
        view1.widthAnchor ≥ (relatedView.widthAnchor .+ 10) .* 3
        view1.widthAnchor ≥ (relatedView.widthAnchor .+ 10) .* 3
        view1.widthAnchor ≥ (relatedView.widthAnchor .+ 10) .* 3
        view1.widthAnchor ≥ (relatedView.widthAnchor .+ 10) .* 3
        view1.widthAnchor ≥ (relatedView.widthAnchor .+ 10) .* 3
        view1.widthAnchor ≥ (relatedView.widthAnchor .+ 10) .* 3
        view1.widthAnchor ≥ (relatedView.widthAnchor .+ 10) .* 3
        view1.widthAnchor ≥ (relatedView.widthAnchor .+ 10) .* 3
        view1.widthAnchor ≥ (relatedView.widthAnchor .+ 10) .* 3
        view1.widthAnchor ≥ (relatedView.widthAnchor .+ 10) .* 3
        view1.widthAnchor ≥ (relatedView.widthAnchor .+ 10) .* 3
        view1.widthAnchor ≥ (relatedView.widthAnchor .+ 10) .* 3
        view1.widthAnchor ≥ (relatedView.widthAnchor .+ 10) .* 3
        view1.widthAnchor ≥ (relatedView.widthAnchor .+ 10) .* 3
        view1.widthAnchor ≥ (relatedView.widthAnchor .+ 10) .* 3
        view1.widthAnchor ≥ (relatedView.widthAnchor .+ 10) .* 3
    }

    func impliedcompileView1WidthAnchorGreaterThanOrEqualToWidthAnchorPlusConstantMultiplyingConstant() {
        view1 ≥ (relatedView.widthAnchor .+ 10) .* 3
        view1 ≥ (relatedView.widthAnchor .+ 10) .* 3
        view1 ≥ (relatedView.widthAnchor .+ 10) .* 3
        view1 ≥ (relatedView.widthAnchor .+ 10) .* 3
        view1 ≥ (relatedView.widthAnchor .+ 10) .* 3
        view1 ≥ (relatedView.widthAnchor .+ 10) .* 3
        view1 ≥ (relatedView.widthAnchor .+ 10) .* 3
        view1 ≥ (relatedView.widthAnchor .+ 10) .* 3
        view1 ≥ (relatedView.widthAnchor .+ 10) .* 3
        view1 ≥ (relatedView.widthAnchor .+ 10) .* 3
        view1 ≥ (relatedView.widthAnchor .+ 10) .* 3
        view1 ≥ (relatedView.widthAnchor .+ 10) .* 3
        view1 ≥ (relatedView.widthAnchor .+ 10) .* 3
        view1 ≥ (relatedView.widthAnchor .+ 10) .* 3
        view1 ≥ (relatedView.widthAnchor .+ 10) .* 3
        view1 ≥ (relatedView.widthAnchor .+ 10) .* 3
        view1 ≥ (relatedView.widthAnchor .+ 10) .* 3
        view1 ≥ (relatedView.widthAnchor .+ 10) .* 3
        view1 ≥ (relatedView.widthAnchor .+ 10) .* 3
        view1 ≥ (relatedView.widthAnchor .+ 10) .* 3
    }

    func compileView1WidthAnchorGreaterThanOrEqualToWidthAnchorPlusConstantMultipliedByConstant() {
        view1.widthAnchor ≥ 3 .* (relatedView.widthAnchor .+ 10)
        view1.widthAnchor ≥ 3 .* (relatedView.widthAnchor .+ 10)
        view1.widthAnchor ≥ 3 .* (relatedView.widthAnchor .+ 10)
        view1.widthAnchor ≥ 3 .* (relatedView.widthAnchor .+ 10)
        view1.widthAnchor ≥ 3 .* (relatedView.widthAnchor .+ 10)
        view1.widthAnchor ≥ 3 .* (relatedView.widthAnchor .+ 10)
        view1.widthAnchor ≥ 3 .* (relatedView.widthAnchor .+ 10)
        view1.widthAnchor ≥ 3 .* (relatedView.widthAnchor .+ 10)
        view1.widthAnchor ≥ 3 .* (relatedView.widthAnchor .+ 10)
        view1.widthAnchor ≥ 3 .* (relatedView.widthAnchor .+ 10)
        view1.widthAnchor ≥ 3 .* (relatedView.widthAnchor .+ 10)
        view1.widthAnchor ≥ 3 .* (relatedView.widthAnchor .+ 10)
        view1.widthAnchor ≥ 3 .* (relatedView.widthAnchor .+ 10)
        view1.widthAnchor ≥ 3 .* (relatedView.widthAnchor .+ 10)
        view1.widthAnchor ≥ 3 .* (relatedView.widthAnchor .+ 10)
        view1.widthAnchor ≥ 3 .* (relatedView.widthAnchor .+ 10)
        view1.widthAnchor ≥ 3 .* (relatedView.widthAnchor .+ 10)
        view1.widthAnchor ≥ 3 .* (relatedView.widthAnchor .+ 10)
        view1.widthAnchor ≥ 3 .* (relatedView.widthAnchor .+ 10)
        view1.widthAnchor ≥ 3 .* (relatedView.widthAnchor .+ 10)
    }

    func impliedcompileView1WidthAnchorGreaterThanOrEqualToWidthAnchorPlusConstantMultipliedByConstant() {
        view1 ≥ 3 .* (relatedView.widthAnchor .+ 10)
        view1 ≥ 3 .* (relatedView.widthAnchor .+ 10)
        view1 ≥ 3 .* (relatedView.widthAnchor .+ 10)
        view1 ≥ 3 .* (relatedView.widthAnchor .+ 10)
        view1 ≥ 3 .* (relatedView.widthAnchor .+ 10)
        view1 ≥ 3 .* (relatedView.widthAnchor .+ 10)
        view1 ≥ 3 .* (relatedView.widthAnchor .+ 10)
        view1 ≥ 3 .* (relatedView.widthAnchor .+ 10)
        view1 ≥ 3 .* (relatedView.widthAnchor .+ 10)
        view1 ≥ 3 .* (relatedView.widthAnchor .+ 10)
        view1 ≥ 3 .* (relatedView.widthAnchor .+ 10)
        view1 ≥ 3 .* (relatedView.widthAnchor .+ 10)
        view1 ≥ 3 .* (relatedView.widthAnchor .+ 10)
        view1 ≥ 3 .* (relatedView.widthAnchor .+ 10)
        view1 ≥ 3 .* (relatedView.widthAnchor .+ 10)
        view1 ≥ 3 .* (relatedView.widthAnchor .+ 10)
        view1 ≥ 3 .* (relatedView.widthAnchor .+ 10)
        view1 ≥ 3 .* (relatedView.widthAnchor .+ 10)
        view1 ≥ 3 .* (relatedView.widthAnchor .+ 10)
        view1 ≥ 3 .* (relatedView.widthAnchor .+ 10)
    }

    func compileView1WidthAnchorGreaterThanOrEqualToWidthAnchorMultipliedByConstantPlusConstant() {
        view1.widthAnchor ≥ 3 .* relatedView.widthAnchor .+ 10
        view1.widthAnchor ≥ 3 .* relatedView.widthAnchor .+ 10
        view1.widthAnchor ≥ 3 .* relatedView.widthAnchor .+ 10
        view1.widthAnchor ≥ 3 .* relatedView.widthAnchor .+ 10
        view1.widthAnchor ≥ 3 .* relatedView.widthAnchor .+ 10
        view1.widthAnchor ≥ 3 .* relatedView.widthAnchor .+ 10
        view1.widthAnchor ≥ 3 .* relatedView.widthAnchor .+ 10
        view1.widthAnchor ≥ 3 .* relatedView.widthAnchor .+ 10
        view1.widthAnchor ≥ 3 .* relatedView.widthAnchor .+ 10
        view1.widthAnchor ≥ 3 .* relatedView.widthAnchor .+ 10
        view1.widthAnchor ≥ 3 .* relatedView.widthAnchor .+ 10
        view1.widthAnchor ≥ 3 .* relatedView.widthAnchor .+ 10
        view1.widthAnchor ≥ 3 .* relatedView.widthAnchor .+ 10
        view1.widthAnchor ≥ 3 .* relatedView.widthAnchor .+ 10
        view1.widthAnchor ≥ 3 .* relatedView.widthAnchor .+ 10
        view1.widthAnchor ≥ 3 .* relatedView.widthAnchor .+ 10
        view1.widthAnchor ≥ 3 .* relatedView.widthAnchor .+ 10
        view1.widthAnchor ≥ 3 .* relatedView.widthAnchor .+ 10
        view1.widthAnchor ≥ 3 .* relatedView.widthAnchor .+ 10
        view1.widthAnchor ≥ 3 .* relatedView.widthAnchor .+ 10
    }

    func impliedcompileView1WidthAnchorGreaterThanOrEqualToWidthAnchorMultipliedByConstantPlusConstant() {
        view1 ≥ 3 .* relatedView.widthAnchor .+ 10
        view1 ≥ 3 .* relatedView.widthAnchor .+ 10
        view1 ≥ 3 .* relatedView.widthAnchor .+ 10
        view1 ≥ 3 .* relatedView.widthAnchor .+ 10
        view1 ≥ 3 .* relatedView.widthAnchor .+ 10
        view1 ≥ 3 .* relatedView.widthAnchor .+ 10
        view1 ≥ 3 .* relatedView.widthAnchor .+ 10
        view1 ≥ 3 .* relatedView.widthAnchor .+ 10
        view1 ≥ 3 .* relatedView.widthAnchor .+ 10
        view1 ≥ 3 .* relatedView.widthAnchor .+ 10
        view1 ≥ 3 .* relatedView.widthAnchor .+ 10
        view1 ≥ 3 .* relatedView.widthAnchor .+ 10
        view1 ≥ 3 .* relatedView.widthAnchor .+ 10
        view1 ≥ 3 .* relatedView.widthAnchor .+ 10
        view1 ≥ 3 .* relatedView.widthAnchor .+ 10
        view1 ≥ 3 .* relatedView.widthAnchor .+ 10
        view1 ≥ 3 .* relatedView.widthAnchor .+ 10
        view1 ≥ 3 .* relatedView.widthAnchor .+ 10
        view1 ≥ 3 .* relatedView.widthAnchor .+ 10
        view1 ≥ 3 .* relatedView.widthAnchor .+ 10
    }

    func compileView1WidthAnchorGreaterThanOrEqualToWidthAnchorPlusConstantDividedByConstant() {
        view1.widthAnchor ≥ (relatedView.widthAnchor .+ 10) ./ 2
        view1.widthAnchor ≥ (relatedView.widthAnchor .+ 10) ./ 2
        view1.widthAnchor ≥ (relatedView.widthAnchor .+ 10) ./ 2
        view1.widthAnchor ≥ (relatedView.widthAnchor .+ 10) ./ 2
        view1.widthAnchor ≥ (relatedView.widthAnchor .+ 10) ./ 2
        view1.widthAnchor ≥ (relatedView.widthAnchor .+ 10) ./ 2
        view1.widthAnchor ≥ (relatedView.widthAnchor .+ 10) ./ 2
        view1.widthAnchor ≥ (relatedView.widthAnchor .+ 10) ./ 2
        view1.widthAnchor ≥ (relatedView.widthAnchor .+ 10) ./ 2
        view1.widthAnchor ≥ (relatedView.widthAnchor .+ 10) ./ 2
        view1.widthAnchor ≥ (relatedView.widthAnchor .+ 10) ./ 2
        view1.widthAnchor ≥ (relatedView.widthAnchor .+ 10) ./ 2
        view1.widthAnchor ≥ (relatedView.widthAnchor .+ 10) ./ 2
        view1.widthAnchor ≥ (relatedView.widthAnchor .+ 10) ./ 2
        view1.widthAnchor ≥ (relatedView.widthAnchor .+ 10) ./ 2
        view1.widthAnchor ≥ (relatedView.widthAnchor .+ 10) ./ 2
        view1.widthAnchor ≥ (relatedView.widthAnchor .+ 10) ./ 2
        view1.widthAnchor ≥ (relatedView.widthAnchor .+ 10) ./ 2
        view1.widthAnchor ≥ (relatedView.widthAnchor .+ 10) ./ 2
        view1.widthAnchor ≥ (relatedView.widthAnchor .+ 10) ./ 2
    }

    func impliedcompileView1WidthAnchorGreaterThanOrEqualToWidthAnchorPlusConstantDividedByConstant() {
        view1 ≥ (relatedView.widthAnchor .+ 10) ./ 2
        view1 ≥ (relatedView.widthAnchor .+ 10) ./ 2
        view1 ≥ (relatedView.widthAnchor .+ 10) ./ 2
        view1 ≥ (relatedView.widthAnchor .+ 10) ./ 2
        view1 ≥ (relatedView.widthAnchor .+ 10) ./ 2
        view1 ≥ (relatedView.widthAnchor .+ 10) ./ 2
        view1 ≥ (relatedView.widthAnchor .+ 10) ./ 2
        view1 ≥ (relatedView.widthAnchor .+ 10) ./ 2
        view1 ≥ (relatedView.widthAnchor .+ 10) ./ 2
        view1 ≥ (relatedView.widthAnchor .+ 10) ./ 2
        view1 ≥ (relatedView.widthAnchor .+ 10) ./ 2
        view1 ≥ (relatedView.widthAnchor .+ 10) ./ 2
        view1 ≥ (relatedView.widthAnchor .+ 10) ./ 2
        view1 ≥ (relatedView.widthAnchor .+ 10) ./ 2
        view1 ≥ (relatedView.widthAnchor .+ 10) ./ 2
        view1 ≥ (relatedView.widthAnchor .+ 10) ./ 2
        view1 ≥ (relatedView.widthAnchor .+ 10) ./ 2
        view1 ≥ (relatedView.widthAnchor .+ 10) ./ 2
        view1 ≥ (relatedView.widthAnchor .+ 10) ./ 2
        view1 ≥ (relatedView.widthAnchor .+ 10) ./ 2
    }

// MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func compileView1WidthAnchorGreaterThanOrEqualToWidthAnchorPlusConstantMultiplyingConstantWithPriority() {
        view1.widthAnchor ≥ (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1.widthAnchor ≥ (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1.widthAnchor ≥ (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1.widthAnchor ≥ (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1.widthAnchor ≥ (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1.widthAnchor ≥ (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1.widthAnchor ≥ (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1.widthAnchor ≥ (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1.widthAnchor ≥ (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1.widthAnchor ≥ (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1.widthAnchor ≥ (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1.widthAnchor ≥ (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1.widthAnchor ≥ (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1.widthAnchor ≥ (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1.widthAnchor ≥ (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1.widthAnchor ≥ (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1.widthAnchor ≥ (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1.widthAnchor ≥ (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1.widthAnchor ≥ (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1.widthAnchor ≥ (relatedView.widthAnchor .+ 10) .* 3 ~ .low
    }

    func impliedcompileView1WidthAnchorGreaterThanOrEqualToWidthAnchorPlusConstantMultiplyingConstantWithPriority() {
        view1 ≥ (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1 ≥ (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1 ≥ (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1 ≥ (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1 ≥ (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1 ≥ (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1 ≥ (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1 ≥ (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1 ≥ (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1 ≥ (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1 ≥ (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1 ≥ (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1 ≥ (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1 ≥ (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1 ≥ (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1 ≥ (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1 ≥ (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1 ≥ (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1 ≥ (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1 ≥ (relatedView.widthAnchor .+ 10) .* 3 ~ .low
    }

    func compileView1WidthAnchorGreaterThanOrEqualToWidthAnchorPlusConstantMultipliedByConstantWithPriority() {
        view1.widthAnchor ≥ 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1.widthAnchor ≥ 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1.widthAnchor ≥ 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1.widthAnchor ≥ 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1.widthAnchor ≥ 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1.widthAnchor ≥ 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1.widthAnchor ≥ 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1.widthAnchor ≥ 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1.widthAnchor ≥ 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1.widthAnchor ≥ 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1.widthAnchor ≥ 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1.widthAnchor ≥ 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1.widthAnchor ≥ 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1.widthAnchor ≥ 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1.widthAnchor ≥ 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1.widthAnchor ≥ 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1.widthAnchor ≥ 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1.widthAnchor ≥ 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1.widthAnchor ≥ 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1.widthAnchor ≥ 3 .* (relatedView.widthAnchor .+ 10) ~ .low
    }

    func impliedcompileView1WidthAnchorGreaterThanOrEqualToWidthAnchorPlusConstantMultipliedByConstantWithPriority() {
        view1 ≥ 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1 ≥ 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1 ≥ 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1 ≥ 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1 ≥ 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1 ≥ 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1 ≥ 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1 ≥ 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1 ≥ 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1 ≥ 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1 ≥ 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1 ≥ 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1 ≥ 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1 ≥ 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1 ≥ 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1 ≥ 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1 ≥ 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1 ≥ 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1 ≥ 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1 ≥ 3 .* (relatedView.widthAnchor .+ 10) ~ .low
    }

    func compileView1WidthAnchorGreaterThanOrEqualToWidthAnchorMultipliedByConstantPlusConstantWithPriority() {
        view1.widthAnchor ≥ 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1.widthAnchor ≥ 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1.widthAnchor ≥ 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1.widthAnchor ≥ 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1.widthAnchor ≥ 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1.widthAnchor ≥ 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1.widthAnchor ≥ 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1.widthAnchor ≥ 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1.widthAnchor ≥ 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1.widthAnchor ≥ 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1.widthAnchor ≥ 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1.widthAnchor ≥ 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1.widthAnchor ≥ 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1.widthAnchor ≥ 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1.widthAnchor ≥ 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1.widthAnchor ≥ 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1.widthAnchor ≥ 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1.widthAnchor ≥ 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1.widthAnchor ≥ 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1.widthAnchor ≥ 3 .* relatedView.widthAnchor .+ 10 ~ .low
    }

    func impliedcompileView1WidthAnchorGreaterThanOrEqualToWidthAnchorMultipliedByConstantPlusConstantWithPriority() {
        view1 ≥ 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1 ≥ 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1 ≥ 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1 ≥ 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1 ≥ 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1 ≥ 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1 ≥ 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1 ≥ 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1 ≥ 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1 ≥ 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1 ≥ 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1 ≥ 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1 ≥ 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1 ≥ 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1 ≥ 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1 ≥ 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1 ≥ 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1 ≥ 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1 ≥ 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1 ≥ 3 .* relatedView.widthAnchor .+ 10 ~ .low
    }

    func compileView1WidthAnchorGreaterThanOrEqualToWidthAnchorPlusConstantDividedByConstantWithPriority() {
        view1.widthAnchor ≥ (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1.widthAnchor ≥ (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1.widthAnchor ≥ (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1.widthAnchor ≥ (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1.widthAnchor ≥ (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1.widthAnchor ≥ (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1.widthAnchor ≥ (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1.widthAnchor ≥ (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1.widthAnchor ≥ (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1.widthAnchor ≥ (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1.widthAnchor ≥ (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1.widthAnchor ≥ (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1.widthAnchor ≥ (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1.widthAnchor ≥ (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1.widthAnchor ≥ (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1.widthAnchor ≥ (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1.widthAnchor ≥ (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1.widthAnchor ≥ (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1.widthAnchor ≥ (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1.widthAnchor ≥ (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
    }

    func impliedcompileView1WidthAnchorGreaterThanOrEqualToWidthAnchorPlusConstantDividedByConstantWithPriority() {
        view1 ≥ (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1 ≥ (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1 ≥ (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1 ≥ (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1 ≥ (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1 ≥ (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1 ≥ (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1 ≥ (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1 ≥ (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1 ≥ (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1 ≥ (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1 ≥ (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1 ≥ (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1 ≥ (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1 ≥ (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1 ≥ (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1 ≥ (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1 ≥ (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1 ≥ (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1 ≥ (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
    }

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func compileView1WidthAnchorGreaterThanOrEqualToWidthAnchorPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        view1.widthAnchor ≥ (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1.widthAnchor ≥ (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1.widthAnchor ≥ (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1.widthAnchor ≥ (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1.widthAnchor ≥ (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1.widthAnchor ≥ (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1.widthAnchor ≥ (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1.widthAnchor ≥ (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1.widthAnchor ≥ (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1.widthAnchor ≥ (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1.widthAnchor ≥ (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1.widthAnchor ≥ (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1.widthAnchor ≥ (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1.widthAnchor ≥ (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1.widthAnchor ≥ (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1.widthAnchor ≥ (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1.widthAnchor ≥ (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1.widthAnchor ≥ (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1.widthAnchor ≥ (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1.widthAnchor ≥ (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
    }

    func impliedcompileView1WidthAnchorGreaterThanOrEqualToWidthAnchorPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        view1 ≥ (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1 ≥ (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1 ≥ (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1 ≥ (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1 ≥ (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1 ≥ (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1 ≥ (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1 ≥ (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1 ≥ (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1 ≥ (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1 ≥ (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1 ≥ (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1 ≥ (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1 ≥ (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1 ≥ (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1 ≥ (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1 ≥ (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1 ≥ (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1 ≥ (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1 ≥ (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
    }

    func compileView1WidthAnchorGreaterThanOrEqualToWidthAnchorPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        view1.widthAnchor ≥ 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1.widthAnchor ≥ 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1.widthAnchor ≥ 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1.widthAnchor ≥ 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1.widthAnchor ≥ 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1.widthAnchor ≥ 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1.widthAnchor ≥ 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1.widthAnchor ≥ 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1.widthAnchor ≥ 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1.widthAnchor ≥ 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1.widthAnchor ≥ 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1.widthAnchor ≥ 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1.widthAnchor ≥ 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1.widthAnchor ≥ 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1.widthAnchor ≥ 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1.widthAnchor ≥ 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1.widthAnchor ≥ 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1.widthAnchor ≥ 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1.widthAnchor ≥ 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1.widthAnchor ≥ 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
    }

    func impliedcompileView1WidthAnchorGreaterThanOrEqualToWidthAnchorPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        view1 ≥ 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1 ≥ 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1 ≥ 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1 ≥ 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1 ≥ 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1 ≥ 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1 ≥ 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1 ≥ 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1 ≥ 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1 ≥ 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1 ≥ 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1 ≥ 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1 ≥ 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1 ≥ 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1 ≥ 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1 ≥ 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1 ≥ 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1 ≥ 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1 ≥ 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1 ≥ 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
    }

    func compileView1WidthAnchorGreaterThanOrEqualToWidthAnchorMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        view1.widthAnchor ≥ 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1.widthAnchor ≥ 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1.widthAnchor ≥ 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1.widthAnchor ≥ 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1.widthAnchor ≥ 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1.widthAnchor ≥ 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1.widthAnchor ≥ 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1.widthAnchor ≥ 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1.widthAnchor ≥ 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1.widthAnchor ≥ 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1.widthAnchor ≥ 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1.widthAnchor ≥ 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1.widthAnchor ≥ 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1.widthAnchor ≥ 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1.widthAnchor ≥ 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1.widthAnchor ≥ 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1.widthAnchor ≥ 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1.widthAnchor ≥ 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1.widthAnchor ≥ 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1.widthAnchor ≥ 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
    }

    func impliedcompileView1WidthAnchorGreaterThanOrEqualToWidthAnchorMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        view1 ≥ 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1 ≥ 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1 ≥ 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1 ≥ 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1 ≥ 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1 ≥ 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1 ≥ 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1 ≥ 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1 ≥ 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1 ≥ 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1 ≥ 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1 ≥ 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1 ≥ 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1 ≥ 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1 ≥ 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1 ≥ 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1 ≥ 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1 ≥ 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1 ≥ 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1 ≥ 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
    }

    func compileView1WidthAnchorGreaterThanOrEqualToWidthAnchorPlusConstantDividedByConstantWithPriorityArithmetic() {
        view1.widthAnchor ≥ (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1.widthAnchor ≥ (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1.widthAnchor ≥ (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1.widthAnchor ≥ (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1.widthAnchor ≥ (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1.widthAnchor ≥ (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1.widthAnchor ≥ (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1.widthAnchor ≥ (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1.widthAnchor ≥ (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1.widthAnchor ≥ (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1.widthAnchor ≥ (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1.widthAnchor ≥ (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1.widthAnchor ≥ (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1.widthAnchor ≥ (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1.widthAnchor ≥ (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1.widthAnchor ≥ (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1.widthAnchor ≥ (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1.widthAnchor ≥ (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1.widthAnchor ≥ (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1.widthAnchor ≥ (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
    }

    func impliedcompileView1WidthAnchorGreaterThanOrEqualToWidthAnchorPlusConstantDividedByConstantWithPriorityArithmetic() {
        view1 ≥ (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1 ≥ (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1 ≥ (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1 ≥ (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1 ≥ (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1 ≥ (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1 ≥ (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1 ≥ (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1 ≥ (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1 ≥ (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1 ≥ (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1 ≥ (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1 ≥ (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1 ≥ (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1 ≥ (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1 ≥ (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1 ≥ (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1 ≥ (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1 ≥ (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1 ≥ (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
    }

    // MARK: Equal

    func compileView1WidthAnchorEqualToWidthAnchor() {
        view1.widthAnchor .= relatedView.widthAnchor
        view1.widthAnchor .= relatedView.widthAnchor
        view1.widthAnchor .= relatedView.widthAnchor
        view1.widthAnchor .= relatedView.widthAnchor
        view1.widthAnchor .= relatedView.widthAnchor
        view1.widthAnchor .= relatedView.widthAnchor
        view1.widthAnchor .= relatedView.widthAnchor
        view1.widthAnchor .= relatedView.widthAnchor
        view1.widthAnchor .= relatedView.widthAnchor
        view1.widthAnchor .= relatedView.widthAnchor
        view1.widthAnchor .= relatedView.widthAnchor
        view1.widthAnchor .= relatedView.widthAnchor
        view1.widthAnchor .= relatedView.widthAnchor
        view1.widthAnchor .= relatedView.widthAnchor
        view1.widthAnchor .= relatedView.widthAnchor
        view1.widthAnchor .= relatedView.widthAnchor
        view1.widthAnchor .= relatedView.widthAnchor
        view1.widthAnchor .= relatedView.widthAnchor
        view1.widthAnchor .= relatedView.widthAnchor
        view1.widthAnchor .= relatedView.widthAnchor
    }

    func impliedcompileView1WidthAnchorEqualToWidthAnchor() {
        view1 .= relatedView.widthAnchor
        view1 .= relatedView.widthAnchor
        view1 .= relatedView.widthAnchor
        view1 .= relatedView.widthAnchor
        view1 .= relatedView.widthAnchor
        view1 .= relatedView.widthAnchor
        view1 .= relatedView.widthAnchor
        view1 .= relatedView.widthAnchor
        view1 .= relatedView.widthAnchor
        view1 .= relatedView.widthAnchor
        view1 .= relatedView.widthAnchor
        view1 .= relatedView.widthAnchor
        view1 .= relatedView.widthAnchor
        view1 .= relatedView.widthAnchor
        view1 .= relatedView.widthAnchor
        view1 .= relatedView.widthAnchor
        view1 .= relatedView.widthAnchor
        view1 .= relatedView.widthAnchor
        view1 .= relatedView.widthAnchor
        view1 .= relatedView.widthAnchor
    }

    // MARK: Equal with constant
    func compileView1WidthAnchorEqualToWidthAnchorPlusConstant() {
        view1.widthAnchor .= relatedView.widthAnchor .+ 10
        view1.widthAnchor .= relatedView.widthAnchor .+ 10
        view1.widthAnchor .= relatedView.widthAnchor .+ 10
        view1.widthAnchor .= relatedView.widthAnchor .+ 10
        view1.widthAnchor .= relatedView.widthAnchor .+ 10
        view1.widthAnchor .= relatedView.widthAnchor .+ 10
        view1.widthAnchor .= relatedView.widthAnchor .+ 10
        view1.widthAnchor .= relatedView.widthAnchor .+ 10
        view1.widthAnchor .= relatedView.widthAnchor .+ 10
        view1.widthAnchor .= relatedView.widthAnchor .+ 10
        view1.widthAnchor .= relatedView.widthAnchor .+ 10
        view1.widthAnchor .= relatedView.widthAnchor .+ 10
        view1.widthAnchor .= relatedView.widthAnchor .+ 10
        view1.widthAnchor .= relatedView.widthAnchor .+ 10
        view1.widthAnchor .= relatedView.widthAnchor .+ 10
        view1.widthAnchor .= relatedView.widthAnchor .+ 10
        view1.widthAnchor .= relatedView.widthAnchor .+ 10
        view1.widthAnchor .= relatedView.widthAnchor .+ 10
        view1.widthAnchor .= relatedView.widthAnchor .+ 10
        view1.widthAnchor .= relatedView.widthAnchor .+ 10
    }

    func impliedcompileView1WidthAnchorEqualToWidthAnchorPlusConstant() {
        view1 .= relatedView.widthAnchor .+ 10
        view1 .= relatedView.widthAnchor .+ 10
        view1 .= relatedView.widthAnchor .+ 10
        view1 .= relatedView.widthAnchor .+ 10
        view1 .= relatedView.widthAnchor .+ 10
        view1 .= relatedView.widthAnchor .+ 10
        view1 .= relatedView.widthAnchor .+ 10
        view1 .= relatedView.widthAnchor .+ 10
        view1 .= relatedView.widthAnchor .+ 10
        view1 .= relatedView.widthAnchor .+ 10
        view1 .= relatedView.widthAnchor .+ 10
        view1 .= relatedView.widthAnchor .+ 10
        view1 .= relatedView.widthAnchor .+ 10
        view1 .= relatedView.widthAnchor .+ 10
        view1 .= relatedView.widthAnchor .+ 10
        view1 .= relatedView.widthAnchor .+ 10
        view1 .= relatedView.widthAnchor .+ 10
        view1 .= relatedView.widthAnchor .+ 10
        view1 .= relatedView.widthAnchor .+ 10
        view1 .= relatedView.widthAnchor .+ 10
    }

    func compileView1WidthAnchorEqualToWidthAnchorMinusConstant() {
        view1.widthAnchor .= relatedView.widthAnchor .- 10
        view1.widthAnchor .= relatedView.widthAnchor .- 10
        view1.widthAnchor .= relatedView.widthAnchor .- 10
        view1.widthAnchor .= relatedView.widthAnchor .- 10
        view1.widthAnchor .= relatedView.widthAnchor .- 10
        view1.widthAnchor .= relatedView.widthAnchor .- 10
        view1.widthAnchor .= relatedView.widthAnchor .- 10
        view1.widthAnchor .= relatedView.widthAnchor .- 10
        view1.widthAnchor .= relatedView.widthAnchor .- 10
        view1.widthAnchor .= relatedView.widthAnchor .- 10
        view1.widthAnchor .= relatedView.widthAnchor .- 10
        view1.widthAnchor .= relatedView.widthAnchor .- 10
        view1.widthAnchor .= relatedView.widthAnchor .- 10
        view1.widthAnchor .= relatedView.widthAnchor .- 10
        view1.widthAnchor .= relatedView.widthAnchor .- 10
        view1.widthAnchor .= relatedView.widthAnchor .- 10
        view1.widthAnchor .= relatedView.widthAnchor .- 10
        view1.widthAnchor .= relatedView.widthAnchor .- 10
        view1.widthAnchor .= relatedView.widthAnchor .- 10
        view1.widthAnchor .= relatedView.widthAnchor .- 10
    }

    func impliedcompileView1WidthAnchorEqualToWidthAnchorMinusConstant() {
        view1 .= relatedView.widthAnchor .- 10
        view1 .= relatedView.widthAnchor .- 10
        view1 .= relatedView.widthAnchor .- 10
        view1 .= relatedView.widthAnchor .- 10
        view1 .= relatedView.widthAnchor .- 10
        view1 .= relatedView.widthAnchor .- 10
        view1 .= relatedView.widthAnchor .- 10
        view1 .= relatedView.widthAnchor .- 10
        view1 .= relatedView.widthAnchor .- 10
        view1 .= relatedView.widthAnchor .- 10
        view1 .= relatedView.widthAnchor .- 10
        view1 .= relatedView.widthAnchor .- 10
        view1 .= relatedView.widthAnchor .- 10
        view1 .= relatedView.widthAnchor .- 10
        view1 .= relatedView.widthAnchor .- 10
        view1 .= relatedView.widthAnchor .- 10
        view1 .= relatedView.widthAnchor .- 10
        view1 .= relatedView.widthAnchor .- 10
        view1 .= relatedView.widthAnchor .- 10
        view1 .= relatedView.widthAnchor .- 10
    }

    // MARK: Equal with multiplier
    func compileView1WidthAnchorEqualToWidthAnchorMultiplyingConstant() {
        view1.widthAnchor .= relatedView.widthAnchor .* 3
        view1.widthAnchor .= relatedView.widthAnchor .* 3
        view1.widthAnchor .= relatedView.widthAnchor .* 3
        view1.widthAnchor .= relatedView.widthAnchor .* 3
        view1.widthAnchor .= relatedView.widthAnchor .* 3
        view1.widthAnchor .= relatedView.widthAnchor .* 3
        view1.widthAnchor .= relatedView.widthAnchor .* 3
        view1.widthAnchor .= relatedView.widthAnchor .* 3
        view1.widthAnchor .= relatedView.widthAnchor .* 3
        view1.widthAnchor .= relatedView.widthAnchor .* 3
        view1.widthAnchor .= relatedView.widthAnchor .* 3
        view1.widthAnchor .= relatedView.widthAnchor .* 3
        view1.widthAnchor .= relatedView.widthAnchor .* 3
        view1.widthAnchor .= relatedView.widthAnchor .* 3
        view1.widthAnchor .= relatedView.widthAnchor .* 3
        view1.widthAnchor .= relatedView.widthAnchor .* 3
        view1.widthAnchor .= relatedView.widthAnchor .* 3
        view1.widthAnchor .= relatedView.widthAnchor .* 3
        view1.widthAnchor .= relatedView.widthAnchor .* 3
        view1.widthAnchor .= relatedView.widthAnchor .* 3
    }

    func impliedcompileView1WidthAnchorEqualToWidthAnchorMultiplyingConstant() {
        view1 .= relatedView.widthAnchor .* 3
        view1 .= relatedView.widthAnchor .* 3
        view1 .= relatedView.widthAnchor .* 3
        view1 .= relatedView.widthAnchor .* 3
        view1 .= relatedView.widthAnchor .* 3
        view1 .= relatedView.widthAnchor .* 3
        view1 .= relatedView.widthAnchor .* 3
        view1 .= relatedView.widthAnchor .* 3
        view1 .= relatedView.widthAnchor .* 3
        view1 .= relatedView.widthAnchor .* 3
        view1 .= relatedView.widthAnchor .* 3
        view1 .= relatedView.widthAnchor .* 3
        view1 .= relatedView.widthAnchor .* 3
        view1 .= relatedView.widthAnchor .* 3
        view1 .= relatedView.widthAnchor .* 3
        view1 .= relatedView.widthAnchor .* 3
        view1 .= relatedView.widthAnchor .* 3
        view1 .= relatedView.widthAnchor .* 3
        view1 .= relatedView.widthAnchor .* 3
        view1 .= relatedView.widthAnchor .* 3
    }

    func compileView1WidthAnchorEqualToWidthAnchorMultipliedByConstant() {
        view1.widthAnchor .= 3 .* relatedView.widthAnchor
        view1.widthAnchor .= 3 .* relatedView.widthAnchor
        view1.widthAnchor .= 3 .* relatedView.widthAnchor
        view1.widthAnchor .= 3 .* relatedView.widthAnchor
        view1.widthAnchor .= 3 .* relatedView.widthAnchor
        view1.widthAnchor .= 3 .* relatedView.widthAnchor
        view1.widthAnchor .= 3 .* relatedView.widthAnchor
        view1.widthAnchor .= 3 .* relatedView.widthAnchor
        view1.widthAnchor .= 3 .* relatedView.widthAnchor
        view1.widthAnchor .= 3 .* relatedView.widthAnchor
        view1.widthAnchor .= 3 .* relatedView.widthAnchor
        view1.widthAnchor .= 3 .* relatedView.widthAnchor
        view1.widthAnchor .= 3 .* relatedView.widthAnchor
        view1.widthAnchor .= 3 .* relatedView.widthAnchor
        view1.widthAnchor .= 3 .* relatedView.widthAnchor
        view1.widthAnchor .= 3 .* relatedView.widthAnchor
        view1.widthAnchor .= 3 .* relatedView.widthAnchor
        view1.widthAnchor .= 3 .* relatedView.widthAnchor
        view1.widthAnchor .= 3 .* relatedView.widthAnchor
        view1.widthAnchor .= 3 .* relatedView.widthAnchor
    }

    func impliedcompileView1WidthAnchorEqualToWidthAnchorMultipliedByConstant() {
        view1 .= 3 .* relatedView.widthAnchor
        view1 .= 3 .* relatedView.widthAnchor
        view1 .= 3 .* relatedView.widthAnchor
        view1 .= 3 .* relatedView.widthAnchor
        view1 .= 3 .* relatedView.widthAnchor
        view1 .= 3 .* relatedView.widthAnchor
        view1 .= 3 .* relatedView.widthAnchor
        view1 .= 3 .* relatedView.widthAnchor
        view1 .= 3 .* relatedView.widthAnchor
        view1 .= 3 .* relatedView.widthAnchor
        view1 .= 3 .* relatedView.widthAnchor
        view1 .= 3 .* relatedView.widthAnchor
        view1 .= 3 .* relatedView.widthAnchor
        view1 .= 3 .* relatedView.widthAnchor
        view1 .= 3 .* relatedView.widthAnchor
        view1 .= 3 .* relatedView.widthAnchor
        view1 .= 3 .* relatedView.widthAnchor
        view1 .= 3 .* relatedView.widthAnchor
        view1 .= 3 .* relatedView.widthAnchor
        view1 .= 3 .* relatedView.widthAnchor
    }

    func compileView1WidthAnchorEqualToWidthAnchorDividedByConstant() {
        view1.widthAnchor .= relatedView.widthAnchor ./ 2
        view1.widthAnchor .= relatedView.widthAnchor ./ 2
        view1.widthAnchor .= relatedView.widthAnchor ./ 2
        view1.widthAnchor .= relatedView.widthAnchor ./ 2
        view1.widthAnchor .= relatedView.widthAnchor ./ 2
        view1.widthAnchor .= relatedView.widthAnchor ./ 2
        view1.widthAnchor .= relatedView.widthAnchor ./ 2
        view1.widthAnchor .= relatedView.widthAnchor ./ 2
        view1.widthAnchor .= relatedView.widthAnchor ./ 2
        view1.widthAnchor .= relatedView.widthAnchor ./ 2
        view1.widthAnchor .= relatedView.widthAnchor ./ 2
        view1.widthAnchor .= relatedView.widthAnchor ./ 2
        view1.widthAnchor .= relatedView.widthAnchor ./ 2
        view1.widthAnchor .= relatedView.widthAnchor ./ 2
        view1.widthAnchor .= relatedView.widthAnchor ./ 2
        view1.widthAnchor .= relatedView.widthAnchor ./ 2
        view1.widthAnchor .= relatedView.widthAnchor ./ 2
        view1.widthAnchor .= relatedView.widthAnchor ./ 2
        view1.widthAnchor .= relatedView.widthAnchor ./ 2
        view1.widthAnchor .= relatedView.widthAnchor ./ 2
    }

    func impliedcompileView1WidthAnchorEqualToWidthAnchorDividedByConstant() {
        view1 .= relatedView.widthAnchor ./ 2
        view1 .= relatedView.widthAnchor ./ 2
        view1 .= relatedView.widthAnchor ./ 2
        view1 .= relatedView.widthAnchor ./ 2
        view1 .= relatedView.widthAnchor ./ 2
        view1 .= relatedView.widthAnchor ./ 2
        view1 .= relatedView.widthAnchor ./ 2
        view1 .= relatedView.widthAnchor ./ 2
        view1 .= relatedView.widthAnchor ./ 2
        view1 .= relatedView.widthAnchor ./ 2
        view1 .= relatedView.widthAnchor ./ 2
        view1 .= relatedView.widthAnchor ./ 2
        view1 .= relatedView.widthAnchor ./ 2
        view1 .= relatedView.widthAnchor ./ 2
        view1 .= relatedView.widthAnchor ./ 2
        view1 .= relatedView.widthAnchor ./ 2
        view1 .= relatedView.widthAnchor ./ 2
        view1 .= relatedView.widthAnchor ./ 2
        view1 .= relatedView.widthAnchor ./ 2
        view1 .= relatedView.widthAnchor ./ 2
    }

    // MARK: Equal Prioritized
    func compileView1WidthAnchorEqualToWidthAnchorWithPriority() {
        view1.widthAnchor .= relatedView.widthAnchor ~ .low
        view1.widthAnchor .= relatedView.widthAnchor ~ .low
        view1.widthAnchor .= relatedView.widthAnchor ~ .low
        view1.widthAnchor .= relatedView.widthAnchor ~ .low
        view1.widthAnchor .= relatedView.widthAnchor ~ .low
        view1.widthAnchor .= relatedView.widthAnchor ~ .low
        view1.widthAnchor .= relatedView.widthAnchor ~ .low
        view1.widthAnchor .= relatedView.widthAnchor ~ .low
        view1.widthAnchor .= relatedView.widthAnchor ~ .low
        view1.widthAnchor .= relatedView.widthAnchor ~ .low
        view1.widthAnchor .= relatedView.widthAnchor ~ .low
        view1.widthAnchor .= relatedView.widthAnchor ~ .low
        view1.widthAnchor .= relatedView.widthAnchor ~ .low
        view1.widthAnchor .= relatedView.widthAnchor ~ .low
        view1.widthAnchor .= relatedView.widthAnchor ~ .low
        view1.widthAnchor .= relatedView.widthAnchor ~ .low
        view1.widthAnchor .= relatedView.widthAnchor ~ .low
        view1.widthAnchor .= relatedView.widthAnchor ~ .low
        view1.widthAnchor .= relatedView.widthAnchor ~ .low
        view1.widthAnchor .= relatedView.widthAnchor ~ .low
    }

    func impliedcompileView1WidthAnchorEqualToWidthAnchorWithPriority() {
        view1 .= relatedView.widthAnchor ~ .low
        view1 .= relatedView.widthAnchor ~ .low
        view1 .= relatedView.widthAnchor ~ .low
        view1 .= relatedView.widthAnchor ~ .low
        view1 .= relatedView.widthAnchor ~ .low
        view1 .= relatedView.widthAnchor ~ .low
        view1 .= relatedView.widthAnchor ~ .low
        view1 .= relatedView.widthAnchor ~ .low
        view1 .= relatedView.widthAnchor ~ .low
        view1 .= relatedView.widthAnchor ~ .low
        view1 .= relatedView.widthAnchor ~ .low
        view1 .= relatedView.widthAnchor ~ .low
        view1 .= relatedView.widthAnchor ~ .low
        view1 .= relatedView.widthAnchor ~ .low
        view1 .= relatedView.widthAnchor ~ .low
        view1 .= relatedView.widthAnchor ~ .low
        view1 .= relatedView.widthAnchor ~ .low
        view1 .= relatedView.widthAnchor ~ .low
        view1 .= relatedView.widthAnchor ~ .low
        view1 .= relatedView.widthAnchor ~ .low
    }

    func compileView1WidthAnchorEqualToWidthAnchorWithPriorityLiteral() {
        view1.widthAnchor .= relatedView.widthAnchor ~ 300
        view1.widthAnchor .= relatedView.widthAnchor ~ 300
        view1.widthAnchor .= relatedView.widthAnchor ~ 300
        view1.widthAnchor .= relatedView.widthAnchor ~ 300
        view1.widthAnchor .= relatedView.widthAnchor ~ 300
        view1.widthAnchor .= relatedView.widthAnchor ~ 300
        view1.widthAnchor .= relatedView.widthAnchor ~ 300
        view1.widthAnchor .= relatedView.widthAnchor ~ 300
        view1.widthAnchor .= relatedView.widthAnchor ~ 300
        view1.widthAnchor .= relatedView.widthAnchor ~ 300
        view1.widthAnchor .= relatedView.widthAnchor ~ 300
        view1.widthAnchor .= relatedView.widthAnchor ~ 300
        view1.widthAnchor .= relatedView.widthAnchor ~ 300
        view1.widthAnchor .= relatedView.widthAnchor ~ 300
        view1.widthAnchor .= relatedView.widthAnchor ~ 300
        view1.widthAnchor .= relatedView.widthAnchor ~ 300
        view1.widthAnchor .= relatedView.widthAnchor ~ 300
        view1.widthAnchor .= relatedView.widthAnchor ~ 300
        view1.widthAnchor .= relatedView.widthAnchor ~ 300
        view1.widthAnchor .= relatedView.widthAnchor ~ 300
    }

    func impliedcompileView1WidthAnchorEqualToWidthAnchorWithPriorityLiteral() {
        view1 .= relatedView.widthAnchor ~ 300
        view1 .= relatedView.widthAnchor ~ 300
        view1 .= relatedView.widthAnchor ~ 300
        view1 .= relatedView.widthAnchor ~ 300
        view1 .= relatedView.widthAnchor ~ 300
        view1 .= relatedView.widthAnchor ~ 300
        view1 .= relatedView.widthAnchor ~ 300
        view1 .= relatedView.widthAnchor ~ 300
        view1 .= relatedView.widthAnchor ~ 300
        view1 .= relatedView.widthAnchor ~ 300
        view1 .= relatedView.widthAnchor ~ 300
        view1 .= relatedView.widthAnchor ~ 300
        view1 .= relatedView.widthAnchor ~ 300
        view1 .= relatedView.widthAnchor ~ 300
        view1 .= relatedView.widthAnchor ~ 300
        view1 .= relatedView.widthAnchor ~ 300
        view1 .= relatedView.widthAnchor ~ 300
        view1 .= relatedView.widthAnchor ~ 300
        view1 .= relatedView.widthAnchor ~ 300
        view1 .= relatedView.widthAnchor ~ 300
    }

    func compileView1WidthAnchorEqualToWidthAnchorWithPriorityArithmetic() {
        view1.widthAnchor .= relatedView.widthAnchor ~ .high .- 1
        view1.widthAnchor .= relatedView.widthAnchor ~ .high .- 1
        view1.widthAnchor .= relatedView.widthAnchor ~ .high .- 1
        view1.widthAnchor .= relatedView.widthAnchor ~ .high .- 1
        view1.widthAnchor .= relatedView.widthAnchor ~ .high .- 1
        view1.widthAnchor .= relatedView.widthAnchor ~ .high .- 1
        view1.widthAnchor .= relatedView.widthAnchor ~ .high .- 1
        view1.widthAnchor .= relatedView.widthAnchor ~ .high .- 1
        view1.widthAnchor .= relatedView.widthAnchor ~ .high .- 1
        view1.widthAnchor .= relatedView.widthAnchor ~ .high .- 1
        view1.widthAnchor .= relatedView.widthAnchor ~ .high .- 1
        view1.widthAnchor .= relatedView.widthAnchor ~ .high .- 1
        view1.widthAnchor .= relatedView.widthAnchor ~ .high .- 1
        view1.widthAnchor .= relatedView.widthAnchor ~ .high .- 1
        view1.widthAnchor .= relatedView.widthAnchor ~ .high .- 1
        view1.widthAnchor .= relatedView.widthAnchor ~ .high .- 1
        view1.widthAnchor .= relatedView.widthAnchor ~ .high .- 1
        view1.widthAnchor .= relatedView.widthAnchor ~ .high .- 1
        view1.widthAnchor .= relatedView.widthAnchor ~ .high .- 1
        view1.widthAnchor .= relatedView.widthAnchor ~ .high .- 1
    }

    func impliedcompileView1WidthAnchorEqualToWidthAnchorWithPriorityArithmetic() {
        view1 .= relatedView.widthAnchor ~ .high .- 1
        view1 .= relatedView.widthAnchor ~ .high .- 1
        view1 .= relatedView.widthAnchor ~ .high .- 1
        view1 .= relatedView.widthAnchor ~ .high .- 1
        view1 .= relatedView.widthAnchor ~ .high .- 1
        view1 .= relatedView.widthAnchor ~ .high .- 1
        view1 .= relatedView.widthAnchor ~ .high .- 1
        view1 .= relatedView.widthAnchor ~ .high .- 1
        view1 .= relatedView.widthAnchor ~ .high .- 1
        view1 .= relatedView.widthAnchor ~ .high .- 1
        view1 .= relatedView.widthAnchor ~ .high .- 1
        view1 .= relatedView.widthAnchor ~ .high .- 1
        view1 .= relatedView.widthAnchor ~ .high .- 1
        view1 .= relatedView.widthAnchor ~ .high .- 1
        view1 .= relatedView.widthAnchor ~ .high .- 1
        view1 .= relatedView.widthAnchor ~ .high .- 1
        view1 .= relatedView.widthAnchor ~ .high .- 1
        view1 .= relatedView.widthAnchor ~ .high .- 1
        view1 .= relatedView.widthAnchor ~ .high .- 1
        view1 .= relatedView.widthAnchor ~ .high .- 1
    }

    // MARK: Equal with constant .+ multiplier

    func compileView1WidthAnchorEqualToWidthAnchorPlusConstantMultiplyingConstant() {
        view1.widthAnchor .= (relatedView.widthAnchor .+ 10) .* 3
        view1.widthAnchor .= (relatedView.widthAnchor .+ 10) .* 3
        view1.widthAnchor .= (relatedView.widthAnchor .+ 10) .* 3
        view1.widthAnchor .= (relatedView.widthAnchor .+ 10) .* 3
        view1.widthAnchor .= (relatedView.widthAnchor .+ 10) .* 3
        view1.widthAnchor .= (relatedView.widthAnchor .+ 10) .* 3
        view1.widthAnchor .= (relatedView.widthAnchor .+ 10) .* 3
        view1.widthAnchor .= (relatedView.widthAnchor .+ 10) .* 3
        view1.widthAnchor .= (relatedView.widthAnchor .+ 10) .* 3
        view1.widthAnchor .= (relatedView.widthAnchor .+ 10) .* 3
        view1.widthAnchor .= (relatedView.widthAnchor .+ 10) .* 3
        view1.widthAnchor .= (relatedView.widthAnchor .+ 10) .* 3
        view1.widthAnchor .= (relatedView.widthAnchor .+ 10) .* 3
        view1.widthAnchor .= (relatedView.widthAnchor .+ 10) .* 3
        view1.widthAnchor .= (relatedView.widthAnchor .+ 10) .* 3
        view1.widthAnchor .= (relatedView.widthAnchor .+ 10) .* 3
        view1.widthAnchor .= (relatedView.widthAnchor .+ 10) .* 3
        view1.widthAnchor .= (relatedView.widthAnchor .+ 10) .* 3
        view1.widthAnchor .= (relatedView.widthAnchor .+ 10) .* 3
        view1.widthAnchor .= (relatedView.widthAnchor .+ 10) .* 3
    }

    func impliedcompileView1WidthAnchorEqualToWidthAnchorPlusConstantMultiplyingConstant() {
        view1 .= (relatedView.widthAnchor .+ 10) .* 3
        view1 .= (relatedView.widthAnchor .+ 10) .* 3
        view1 .= (relatedView.widthAnchor .+ 10) .* 3
        view1 .= (relatedView.widthAnchor .+ 10) .* 3
        view1 .= (relatedView.widthAnchor .+ 10) .* 3
        view1 .= (relatedView.widthAnchor .+ 10) .* 3
        view1 .= (relatedView.widthAnchor .+ 10) .* 3
        view1 .= (relatedView.widthAnchor .+ 10) .* 3
        view1 .= (relatedView.widthAnchor .+ 10) .* 3
        view1 .= (relatedView.widthAnchor .+ 10) .* 3
        view1 .= (relatedView.widthAnchor .+ 10) .* 3
        view1 .= (relatedView.widthAnchor .+ 10) .* 3
        view1 .= (relatedView.widthAnchor .+ 10) .* 3
        view1 .= (relatedView.widthAnchor .+ 10) .* 3
        view1 .= (relatedView.widthAnchor .+ 10) .* 3
        view1 .= (relatedView.widthAnchor .+ 10) .* 3
        view1 .= (relatedView.widthAnchor .+ 10) .* 3
        view1 .= (relatedView.widthAnchor .+ 10) .* 3
        view1 .= (relatedView.widthAnchor .+ 10) .* 3
        view1 .= (relatedView.widthAnchor .+ 10) .* 3
    }

    func compileView1WidthAnchorEqualToWidthAnchorPlusConstantMultipliedByConstant() {
        view1.widthAnchor .= 3 .* (relatedView.widthAnchor .+ 10)
        view1.widthAnchor .= 3 .* (relatedView.widthAnchor .+ 10)
        view1.widthAnchor .= 3 .* (relatedView.widthAnchor .+ 10)
        view1.widthAnchor .= 3 .* (relatedView.widthAnchor .+ 10)
        view1.widthAnchor .= 3 .* (relatedView.widthAnchor .+ 10)
        view1.widthAnchor .= 3 .* (relatedView.widthAnchor .+ 10)
        view1.widthAnchor .= 3 .* (relatedView.widthAnchor .+ 10)
        view1.widthAnchor .= 3 .* (relatedView.widthAnchor .+ 10)
        view1.widthAnchor .= 3 .* (relatedView.widthAnchor .+ 10)
        view1.widthAnchor .= 3 .* (relatedView.widthAnchor .+ 10)
        view1.widthAnchor .= 3 .* (relatedView.widthAnchor .+ 10)
        view1.widthAnchor .= 3 .* (relatedView.widthAnchor .+ 10)
        view1.widthAnchor .= 3 .* (relatedView.widthAnchor .+ 10)
        view1.widthAnchor .= 3 .* (relatedView.widthAnchor .+ 10)
        view1.widthAnchor .= 3 .* (relatedView.widthAnchor .+ 10)
        view1.widthAnchor .= 3 .* (relatedView.widthAnchor .+ 10)
        view1.widthAnchor .= 3 .* (relatedView.widthAnchor .+ 10)
        view1.widthAnchor .= 3 .* (relatedView.widthAnchor .+ 10)
        view1.widthAnchor .= 3 .* (relatedView.widthAnchor .+ 10)
        view1.widthAnchor .= 3 .* (relatedView.widthAnchor .+ 10)
    }

    func impliedcompileView1WidthAnchorEqualToWidthAnchorPlusConstantMultipliedByConstant() {
        view1 .= 3 .* (relatedView.widthAnchor .+ 10)
        view1 .= 3 .* (relatedView.widthAnchor .+ 10)
        view1 .= 3 .* (relatedView.widthAnchor .+ 10)
        view1 .= 3 .* (relatedView.widthAnchor .+ 10)
        view1 .= 3 .* (relatedView.widthAnchor .+ 10)
        view1 .= 3 .* (relatedView.widthAnchor .+ 10)
        view1 .= 3 .* (relatedView.widthAnchor .+ 10)
        view1 .= 3 .* (relatedView.widthAnchor .+ 10)
        view1 .= 3 .* (relatedView.widthAnchor .+ 10)
        view1 .= 3 .* (relatedView.widthAnchor .+ 10)
        view1 .= 3 .* (relatedView.widthAnchor .+ 10)
        view1 .= 3 .* (relatedView.widthAnchor .+ 10)
        view1 .= 3 .* (relatedView.widthAnchor .+ 10)
        view1 .= 3 .* (relatedView.widthAnchor .+ 10)
        view1 .= 3 .* (relatedView.widthAnchor .+ 10)
        view1 .= 3 .* (relatedView.widthAnchor .+ 10)
        view1 .= 3 .* (relatedView.widthAnchor .+ 10)
        view1 .= 3 .* (relatedView.widthAnchor .+ 10)
        view1 .= 3 .* (relatedView.widthAnchor .+ 10)
        view1 .= 3 .* (relatedView.widthAnchor .+ 10)
    }

    func compileView1WidthAnchorEqualToWidthAnchorMultipliedByConstantPlusConstant() {
        view1.widthAnchor .= 3 .* relatedView.widthAnchor .+ 10
        view1.widthAnchor .= 3 .* relatedView.widthAnchor .+ 10
        view1.widthAnchor .= 3 .* relatedView.widthAnchor .+ 10
        view1.widthAnchor .= 3 .* relatedView.widthAnchor .+ 10
        view1.widthAnchor .= 3 .* relatedView.widthAnchor .+ 10
        view1.widthAnchor .= 3 .* relatedView.widthAnchor .+ 10
        view1.widthAnchor .= 3 .* relatedView.widthAnchor .+ 10
        view1.widthAnchor .= 3 .* relatedView.widthAnchor .+ 10
        view1.widthAnchor .= 3 .* relatedView.widthAnchor .+ 10
        view1.widthAnchor .= 3 .* relatedView.widthAnchor .+ 10
        view1.widthAnchor .= 3 .* relatedView.widthAnchor .+ 10
        view1.widthAnchor .= 3 .* relatedView.widthAnchor .+ 10
        view1.widthAnchor .= 3 .* relatedView.widthAnchor .+ 10
        view1.widthAnchor .= 3 .* relatedView.widthAnchor .+ 10
        view1.widthAnchor .= 3 .* relatedView.widthAnchor .+ 10
        view1.widthAnchor .= 3 .* relatedView.widthAnchor .+ 10
        view1.widthAnchor .= 3 .* relatedView.widthAnchor .+ 10
        view1.widthAnchor .= 3 .* relatedView.widthAnchor .+ 10
        view1.widthAnchor .= 3 .* relatedView.widthAnchor .+ 10
        view1.widthAnchor .= 3 .* relatedView.widthAnchor .+ 10
    }

    func impliedcompileView1WidthAnchorEqualToWidthAnchorMultipliedByConstantPlusConstant() {
        view1 .= 3 .* relatedView.widthAnchor .+ 10
        view1 .= 3 .* relatedView.widthAnchor .+ 10
        view1 .= 3 .* relatedView.widthAnchor .+ 10
        view1 .= 3 .* relatedView.widthAnchor .+ 10
        view1 .= 3 .* relatedView.widthAnchor .+ 10
        view1 .= 3 .* relatedView.widthAnchor .+ 10
        view1 .= 3 .* relatedView.widthAnchor .+ 10
        view1 .= 3 .* relatedView.widthAnchor .+ 10
        view1 .= 3 .* relatedView.widthAnchor .+ 10
        view1 .= 3 .* relatedView.widthAnchor .+ 10
        view1 .= 3 .* relatedView.widthAnchor .+ 10
        view1 .= 3 .* relatedView.widthAnchor .+ 10
        view1 .= 3 .* relatedView.widthAnchor .+ 10
        view1 .= 3 .* relatedView.widthAnchor .+ 10
        view1 .= 3 .* relatedView.widthAnchor .+ 10
        view1 .= 3 .* relatedView.widthAnchor .+ 10
        view1 .= 3 .* relatedView.widthAnchor .+ 10
        view1 .= 3 .* relatedView.widthAnchor .+ 10
        view1 .= 3 .* relatedView.widthAnchor .+ 10
        view1 .= 3 .* relatedView.widthAnchor .+ 10
    }

    func compileView1WidthAnchorEqualToWidthAnchorPlusConstantDividedByConstant() {
        view1.widthAnchor .= (relatedView.widthAnchor .+ 10) ./ 2
        view1.widthAnchor .= (relatedView.widthAnchor .+ 10) ./ 2
        view1.widthAnchor .= (relatedView.widthAnchor .+ 10) ./ 2
        view1.widthAnchor .= (relatedView.widthAnchor .+ 10) ./ 2
        view1.widthAnchor .= (relatedView.widthAnchor .+ 10) ./ 2
        view1.widthAnchor .= (relatedView.widthAnchor .+ 10) ./ 2
        view1.widthAnchor .= (relatedView.widthAnchor .+ 10) ./ 2
        view1.widthAnchor .= (relatedView.widthAnchor .+ 10) ./ 2
        view1.widthAnchor .= (relatedView.widthAnchor .+ 10) ./ 2
        view1.widthAnchor .= (relatedView.widthAnchor .+ 10) ./ 2
        view1.widthAnchor .= (relatedView.widthAnchor .+ 10) ./ 2
        view1.widthAnchor .= (relatedView.widthAnchor .+ 10) ./ 2
        view1.widthAnchor .= (relatedView.widthAnchor .+ 10) ./ 2
        view1.widthAnchor .= (relatedView.widthAnchor .+ 10) ./ 2
        view1.widthAnchor .= (relatedView.widthAnchor .+ 10) ./ 2
        view1.widthAnchor .= (relatedView.widthAnchor .+ 10) ./ 2
        view1.widthAnchor .= (relatedView.widthAnchor .+ 10) ./ 2
        view1.widthAnchor .= (relatedView.widthAnchor .+ 10) ./ 2
        view1.widthAnchor .= (relatedView.widthAnchor .+ 10) ./ 2
        view1.widthAnchor .= (relatedView.widthAnchor .+ 10) ./ 2
    }

    func impliedcompileView1WidthAnchorEqualToWidthAnchorPlusConstantDividedByConstant() {
        view1 .= (relatedView.widthAnchor .+ 10) ./ 2
        view1 .= (relatedView.widthAnchor .+ 10) ./ 2
        view1 .= (relatedView.widthAnchor .+ 10) ./ 2
        view1 .= (relatedView.widthAnchor .+ 10) ./ 2
        view1 .= (relatedView.widthAnchor .+ 10) ./ 2
        view1 .= (relatedView.widthAnchor .+ 10) ./ 2
        view1 .= (relatedView.widthAnchor .+ 10) ./ 2
        view1 .= (relatedView.widthAnchor .+ 10) ./ 2
        view1 .= (relatedView.widthAnchor .+ 10) ./ 2
        view1 .= (relatedView.widthAnchor .+ 10) ./ 2
        view1 .= (relatedView.widthAnchor .+ 10) ./ 2
        view1 .= (relatedView.widthAnchor .+ 10) ./ 2
        view1 .= (relatedView.widthAnchor .+ 10) ./ 2
        view1 .= (relatedView.widthAnchor .+ 10) ./ 2
        view1 .= (relatedView.widthAnchor .+ 10) ./ 2
        view1 .= (relatedView.widthAnchor .+ 10) ./ 2
        view1 .= (relatedView.widthAnchor .+ 10) ./ 2
        view1 .= (relatedView.widthAnchor .+ 10) ./ 2
        view1 .= (relatedView.widthAnchor .+ 10) ./ 2
        view1 .= (relatedView.widthAnchor .+ 10) ./ 2
    }

// MARK: Equal with constant .+ multiplier and priority

    func compileView1WidthAnchorEqualToWidthAnchorPlusConstantMultiplyingConstantWithPriority() {
        view1.widthAnchor .= (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1.widthAnchor .= (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1.widthAnchor .= (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1.widthAnchor .= (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1.widthAnchor .= (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1.widthAnchor .= (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1.widthAnchor .= (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1.widthAnchor .= (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1.widthAnchor .= (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1.widthAnchor .= (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1.widthAnchor .= (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1.widthAnchor .= (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1.widthAnchor .= (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1.widthAnchor .= (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1.widthAnchor .= (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1.widthAnchor .= (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1.widthAnchor .= (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1.widthAnchor .= (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1.widthAnchor .= (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1.widthAnchor .= (relatedView.widthAnchor .+ 10) .* 3 ~ .low
    }

    func impliedcompileView1WidthAnchorEqualToWidthAnchorPlusConstantMultiplyingConstantWithPriority() {
        view1 .= (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1 .= (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1 .= (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1 .= (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1 .= (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1 .= (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1 .= (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1 .= (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1 .= (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1 .= (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1 .= (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1 .= (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1 .= (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1 .= (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1 .= (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1 .= (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1 .= (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1 .= (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1 .= (relatedView.widthAnchor .+ 10) .* 3 ~ .low
        view1 .= (relatedView.widthAnchor .+ 10) .* 3 ~ .low
    }

    func compileView1WidthAnchorEqualToWidthAnchorPlusConstantMultipliedByConstantWithPriority() {
        view1.widthAnchor .= 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1.widthAnchor .= 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1.widthAnchor .= 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1.widthAnchor .= 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1.widthAnchor .= 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1.widthAnchor .= 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1.widthAnchor .= 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1.widthAnchor .= 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1.widthAnchor .= 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1.widthAnchor .= 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1.widthAnchor .= 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1.widthAnchor .= 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1.widthAnchor .= 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1.widthAnchor .= 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1.widthAnchor .= 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1.widthAnchor .= 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1.widthAnchor .= 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1.widthAnchor .= 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1.widthAnchor .= 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1.widthAnchor .= 3 .* (relatedView.widthAnchor .+ 10) ~ .low
    }

    func impliedcompileView1WidthAnchorEqualToWidthAnchorPlusConstantMultipliedByConstantWithPriority() {
        view1 .= 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1 .= 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1 .= 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1 .= 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1 .= 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1 .= 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1 .= 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1 .= 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1 .= 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1 .= 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1 .= 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1 .= 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1 .= 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1 .= 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1 .= 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1 .= 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1 .= 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1 .= 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1 .= 3 .* (relatedView.widthAnchor .+ 10) ~ .low
        view1 .= 3 .* (relatedView.widthAnchor .+ 10) ~ .low
    }

    func compileView1WidthAnchorEqualToWidthAnchorMultipliedByConstantPlusConstantWithPriority() {
        view1.widthAnchor .= 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1.widthAnchor .= 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1.widthAnchor .= 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1.widthAnchor .= 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1.widthAnchor .= 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1.widthAnchor .= 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1.widthAnchor .= 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1.widthAnchor .= 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1.widthAnchor .= 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1.widthAnchor .= 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1.widthAnchor .= 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1.widthAnchor .= 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1.widthAnchor .= 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1.widthAnchor .= 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1.widthAnchor .= 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1.widthAnchor .= 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1.widthAnchor .= 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1.widthAnchor .= 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1.widthAnchor .= 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1.widthAnchor .= 3 .* relatedView.widthAnchor .+ 10 ~ .low
    }

    func impliedcompileView1WidthAnchorEqualToWidthAnchorMultipliedByConstantPlusConstantWithPriority() {
        view1 .= 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1 .= 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1 .= 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1 .= 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1 .= 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1 .= 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1 .= 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1 .= 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1 .= 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1 .= 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1 .= 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1 .= 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1 .= 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1 .= 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1 .= 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1 .= 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1 .= 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1 .= 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1 .= 3 .* relatedView.widthAnchor .+ 10 ~ .low
        view1 .= 3 .* relatedView.widthAnchor .+ 10 ~ .low
    }

    func compileView1WidthAnchorEqualToWidthAnchorPlusConstantDividedByConstantWithPriority() {
        view1.widthAnchor .= (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1.widthAnchor .= (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1.widthAnchor .= (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1.widthAnchor .= (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1.widthAnchor .= (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1.widthAnchor .= (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1.widthAnchor .= (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1.widthAnchor .= (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1.widthAnchor .= (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1.widthAnchor .= (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1.widthAnchor .= (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1.widthAnchor .= (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1.widthAnchor .= (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1.widthAnchor .= (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1.widthAnchor .= (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1.widthAnchor .= (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1.widthAnchor .= (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1.widthAnchor .= (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1.widthAnchor .= (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1.widthAnchor .= (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
    }

    func impliedcompileView1WidthAnchorEqualToWidthAnchorPlusConstantDividedByConstantWithPriority() {
        view1 .= (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1 .= (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1 .= (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1 .= (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1 .= (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1 .= (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1 .= (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1 .= (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1 .= (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1 .= (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1 .= (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1 .= (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1 .= (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1 .= (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1 .= (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1 .= (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1 .= (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1 .= (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1 .= (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
        view1 .= (relatedView.widthAnchor .+ 10) ./ 2 ~ .low
    }

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func compileView1WidthAnchorEqualToWidthAnchorPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        view1.widthAnchor .= (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1.widthAnchor .= (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1.widthAnchor .= (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1.widthAnchor .= (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1.widthAnchor .= (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1.widthAnchor .= (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1.widthAnchor .= (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1.widthAnchor .= (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1.widthAnchor .= (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1.widthAnchor .= (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1.widthAnchor .= (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1.widthAnchor .= (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1.widthAnchor .= (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1.widthAnchor .= (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1.widthAnchor .= (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1.widthAnchor .= (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1.widthAnchor .= (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1.widthAnchor .= (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1.widthAnchor .= (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1.widthAnchor .= (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
    }

    func impliedcompileView1WidthAnchorEqualToWidthAnchorPlusConstantMultiplyingConstantWithPriorityArithmetic() {
        view1 .= (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1 .= (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1 .= (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1 .= (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1 .= (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1 .= (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1 .= (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1 .= (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1 .= (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1 .= (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1 .= (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1 .= (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1 .= (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1 .= (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1 .= (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1 .= (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1 .= (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1 .= (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1 .= (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
        view1 .= (relatedView.widthAnchor .+ 10) .* 3  ~ .high .- 1
    }

    func compileView1WidthAnchorEqualToWidthAnchorPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        view1.widthAnchor .= 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1.widthAnchor .= 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1.widthAnchor .= 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1.widthAnchor .= 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1.widthAnchor .= 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1.widthAnchor .= 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1.widthAnchor .= 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1.widthAnchor .= 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1.widthAnchor .= 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1.widthAnchor .= 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1.widthAnchor .= 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1.widthAnchor .= 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1.widthAnchor .= 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1.widthAnchor .= 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1.widthAnchor .= 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1.widthAnchor .= 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1.widthAnchor .= 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1.widthAnchor .= 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1.widthAnchor .= 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1.widthAnchor .= 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
    }

    func impliedcompileView1WidthAnchorEqualToWidthAnchorPlusConstantMultipliedByConstantWithPriorityArithmetic() {
        view1 .= 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1 .= 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1 .= 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1 .= 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1 .= 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1 .= 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1 .= 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1 .= 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1 .= 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1 .= 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1 .= 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1 .= 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1 .= 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1 .= 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1 .= 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1 .= 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1 .= 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1 .= 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1 .= 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
        view1 .= 3 .* (relatedView.widthAnchor .+ 10)  ~ .high .- 1
    }

    func compileView1WidthAnchorEqualToWidthAnchorMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        view1.widthAnchor .= 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1.widthAnchor .= 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1.widthAnchor .= 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1.widthAnchor .= 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1.widthAnchor .= 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1.widthAnchor .= 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1.widthAnchor .= 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1.widthAnchor .= 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1.widthAnchor .= 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1.widthAnchor .= 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1.widthAnchor .= 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1.widthAnchor .= 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1.widthAnchor .= 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1.widthAnchor .= 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1.widthAnchor .= 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1.widthAnchor .= 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1.widthAnchor .= 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1.widthAnchor .= 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1.widthAnchor .= 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1.widthAnchor .= 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
    }

    func impliedcompileView1WidthAnchorEqualToWidthAnchorMultipliedByConstantPlusConstantWithPriorityArithmetic() {
        view1 .= 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1 .= 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1 .= 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1 .= 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1 .= 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1 .= 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1 .= 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1 .= 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1 .= 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1 .= 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1 .= 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1 .= 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1 .= 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1 .= 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1 .= 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1 .= 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1 .= 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1 .= 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1 .= 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
        view1 .= 3 .* relatedView.widthAnchor .+ 10  ~ .high .- 1
    }

    func compileView1WidthAnchorEqualToWidthAnchorPlusConstantDividedByConstantWithPriorityArithmetic() {
        view1.widthAnchor .= (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1.widthAnchor .= (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1.widthAnchor .= (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1.widthAnchor .= (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1.widthAnchor .= (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1.widthAnchor .= (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1.widthAnchor .= (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1.widthAnchor .= (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1.widthAnchor .= (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1.widthAnchor .= (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1.widthAnchor .= (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1.widthAnchor .= (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1.widthAnchor .= (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1.widthAnchor .= (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1.widthAnchor .= (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1.widthAnchor .= (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1.widthAnchor .= (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1.widthAnchor .= (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1.widthAnchor .= (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1.widthAnchor .= (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
    }

    func impliedcompileView1WidthAnchorEqualToWidthAnchorPlusConstantDividedByConstantWithPriorityArithmetic() {
        view1 .= (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1 .= (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1 .= (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1 .= (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1 .= (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1 .= (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1 .= (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1 .= (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1 .= (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1 .= (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1 .= (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1 .= (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1 .= (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1 .= (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1 .= (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1 .= (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1 .= (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1 .= (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1 .= (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
        view1 .= (relatedView.widthAnchor .+ 10) ./ 2  ~ .high .- 1
    }
// sourcery:end
}
