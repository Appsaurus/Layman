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
// sourcery: lhsAttribute = width
// sourcery: rhsAttribute = width
// sourcery: lhsItem = view1
class LayoutDimensionCompilationBenchmark: UILayoutKitTestCase {
    
// sourcery:inline:auto:LayoutDimensionCompilationBenchmark.AnchorEquationCompilationBenchmark

    // MARK: view1Width <=> relatedViewWidth

    // MARK: LessThanOrEqual

    func compileView1WidthLessThanOrEqualToWidth() {
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

    // MARK: LessThanOrEqual with constant
    func compileView1WidthLessThanOrEqualToWidthPlusConstant() {
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

    func compileView1WidthLessThanOrEqualToWidthMinusConstant() {
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

    // MARK: LessThanOrEqual with multiplier
    func compileView1WidthLessThanOrEqualToWidthMultiplyingConstant() {
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

    func compileView1WidthLessThanOrEqualToWidthMultipliedByConstant() {
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

    func compileView1WidthLessThanOrEqualToWidthDividedByConstant() {
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

    // MARK: LessThanOrEqual Prioritized
    func compileView1WidthLessThanOrEqualToWidthWithPriority() {
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

    func compileView1WidthLessThanOrEqualToWidthWithPriorityLiteral() {
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

    func compileView1WidthLessThanOrEqualToWidthWithPriorityArithmetic() {
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

    // MARK: LessThanOrEqual with constant .+ multiplier

    func compileView1WidthLessThanOrEqualToWidthPlusConstantMultiplyingConstant() {
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

    func compileView1WidthLessThanOrEqualToWidthPlusConstantMultipliedByConstant() {
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

    func compileView1WidthLessThanOrEqualToWidthMultipliedByConstantPlusConstant() {
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

    func compileView1WidthLessThanOrEqualToWidthPlusConstantDividedByConstant() {
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

// MARK: LessThanOrEqual with constant .+ multiplier and priority

    func compileView1WidthLessThanOrEqualToWidthPlusConstantMultiplyingConstantWithPriority() {
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

    func compileView1WidthLessThanOrEqualToWidthPlusConstantMultipliedByConstantWithPriority() {
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

    func compileView1WidthLessThanOrEqualToWidthMultipliedByConstantPlusConstantWithPriority() {
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

    func compileView1WidthLessThanOrEqualToWidthPlusConstantDividedByConstantWithPriority() {
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

    // MARK: LessThanOrEqual with constant .+ multiplier and priority arithmetic

    func compileView1WidthLessThanOrEqualToWidthPlusConstantMultiplyingConstantWithPriorityArithmetic() {
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

    func compileView1WidthLessThanOrEqualToWidthPlusConstantMultipliedByConstantWithPriorityArithmetic() {
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

    func compileView1WidthLessThanOrEqualToWidthMultipliedByConstantPlusConstantWithPriorityArithmetic() {
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

    func compileView1WidthLessThanOrEqualToWidthPlusConstantDividedByConstantWithPriorityArithmetic() {
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

    // MARK: Equal

    func compileView1WidthEqualToWidth() {
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

    // MARK: Equal with constant
    func compileView1WidthEqualToWidthPlusConstant() {
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

    func compileView1WidthEqualToWidthMinusConstant() {
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

    // MARK: Equal with multiplier
    func compileView1WidthEqualToWidthMultiplyingConstant() {
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

    func compileView1WidthEqualToWidthMultipliedByConstant() {
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

    func compileView1WidthEqualToWidthDividedByConstant() {
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

    // MARK: Equal Prioritized
    func compileView1WidthEqualToWidthWithPriority() {
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

    func compileView1WidthEqualToWidthWithPriorityLiteral() {
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

    func compileView1WidthEqualToWidthWithPriorityArithmetic() {
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

    // MARK: Equal with constant .+ multiplier

    func compileView1WidthEqualToWidthPlusConstantMultiplyingConstant() {
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

    func compileView1WidthEqualToWidthPlusConstantMultipliedByConstant() {
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

    func compileView1WidthEqualToWidthMultipliedByConstantPlusConstant() {
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

    func compileView1WidthEqualToWidthPlusConstantDividedByConstant() {
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

// MARK: Equal with constant .+ multiplier and priority

    func compileView1WidthEqualToWidthPlusConstantMultiplyingConstantWithPriority() {
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

    func compileView1WidthEqualToWidthPlusConstantMultipliedByConstantWithPriority() {
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

    func compileView1WidthEqualToWidthMultipliedByConstantPlusConstantWithPriority() {
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

    func compileView1WidthEqualToWidthPlusConstantDividedByConstantWithPriority() {
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

    // MARK: Equal with constant .+ multiplier and priority arithmetic

    func compileView1WidthEqualToWidthPlusConstantMultiplyingConstantWithPriorityArithmetic() {
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

    func compileView1WidthEqualToWidthPlusConstantMultipliedByConstantWithPriorityArithmetic() {
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

    func compileView1WidthEqualToWidthMultipliedByConstantPlusConstantWithPriorityArithmetic() {
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

    func compileView1WidthEqualToWidthPlusConstantDividedByConstantWithPriorityArithmetic() {
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

    // MARK: GreaterThanOrEqual

    func compileView1WidthGreaterThanOrEqualToWidth() {
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

    // MARK: GreaterThanOrEqual with constant
    func compileView1WidthGreaterThanOrEqualToWidthPlusConstant() {
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

    func compileView1WidthGreaterThanOrEqualToWidthMinusConstant() {
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

    // MARK: GreaterThanOrEqual with multiplier
    func compileView1WidthGreaterThanOrEqualToWidthMultiplyingConstant() {
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

    func compileView1WidthGreaterThanOrEqualToWidthMultipliedByConstant() {
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

    func compileView1WidthGreaterThanOrEqualToWidthDividedByConstant() {
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

    // MARK: GreaterThanOrEqual Prioritized
    func compileView1WidthGreaterThanOrEqualToWidthWithPriority() {
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

    func compileView1WidthGreaterThanOrEqualToWidthWithPriorityLiteral() {
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

    func compileView1WidthGreaterThanOrEqualToWidthWithPriorityArithmetic() {
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

    // MARK: GreaterThanOrEqual with constant .+ multiplier

    func compileView1WidthGreaterThanOrEqualToWidthPlusConstantMultiplyingConstant() {
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

    func compileView1WidthGreaterThanOrEqualToWidthPlusConstantMultipliedByConstant() {
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

    func compileView1WidthGreaterThanOrEqualToWidthMultipliedByConstantPlusConstant() {
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

    func compileView1WidthGreaterThanOrEqualToWidthPlusConstantDividedByConstant() {
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

// MARK: GreaterThanOrEqual with constant .+ multiplier and priority

    func compileView1WidthGreaterThanOrEqualToWidthPlusConstantMultiplyingConstantWithPriority() {
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

    func compileView1WidthGreaterThanOrEqualToWidthPlusConstantMultipliedByConstantWithPriority() {
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

    func compileView1WidthGreaterThanOrEqualToWidthMultipliedByConstantPlusConstantWithPriority() {
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

    func compileView1WidthGreaterThanOrEqualToWidthPlusConstantDividedByConstantWithPriority() {
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

    // MARK: GreaterThanOrEqual with constant .+ multiplier and priority arithmetic

    func compileView1WidthGreaterThanOrEqualToWidthPlusConstantMultiplyingConstantWithPriorityArithmetic() {
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

    func compileView1WidthGreaterThanOrEqualToWidthPlusConstantMultipliedByConstantWithPriorityArithmetic() {
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

    func compileView1WidthGreaterThanOrEqualToWidthMultipliedByConstantPlusConstantWithPriorityArithmetic() {
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

    func compileView1WidthGreaterThanOrEqualToWidthPlusConstantDividedByConstantWithPriorityArithmetic() {
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
// sourcery:end
}
