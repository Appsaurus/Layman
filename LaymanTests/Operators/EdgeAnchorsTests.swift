//
//  EdgeAnchorsTests.swift
//  Layman
//
//  Created by Brian Strobach on 1/3/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

@testable import Layman
import XCTest

class EdgeAnchorsTests: LaymanTestCase {

    func testEdgeAnchors() {        
        let constraints = view1.edgeAnchors .= parentView.edgeAnchors .+ 10 ~ .high .- 1
        constraints.top.assert(view1, .top, .equal, parentView, .top, constant: 10, priority: 749)
        constraints.leading.assert(view1, .leading, .equal, parentView, .leading, constant: 10, priority: 749)
        constraints.bottom.assert(view1, .bottom, .equal, parentView, .bottom, constant: 10, priority: 749)
        constraints.trailing.assert(view1, .trailing, .equal, parentView, .trailing, constant: 10, priority: 749)
    }

    func testArrayEdgeAnchors() {
        let constraints = viewArray.edgeAnchors .= parentView.edgeAnchors .+ 10 ~ .high .- 1
        constraints.map {$0.top}.assert(viewArray, .top, .equal, parentView, .top, constant: 10, priority: 749)
        constraints.map {$0.leading}.assert(viewArray, .leading, .equal, parentView, .leading, constant: 10, priority: 749)
        constraints.map {$0.bottom}.assert(viewArray, .bottom, .equal, parentView, .bottom, constant: 10, priority: 749)
        constraints.map {$0.trailing}.assert(viewArray, .trailing, .equal, parentView, .trailing, constant: 10, priority: 749)
    }

    func testEdgeAnchorsWithInset() {
        let insets: RelativeLayoutPadding = .inset(top: 10, leading: 5, bottom: 15, trailing: 20)
        let constraints = view1.edgeAnchors .= parentView.edgeAnchors .+ insets ~ .high .- 1
        constraints.top.assert(view1, .top, .equal, parentView, .top, constant: 10, priority: 749)
        constraints.leading.assert(view1, .leading, .equal, parentView, .leading, constant: 5, priority: 749)
        constraints.bottom.assert(view1, .bottom, .equal, parentView, .bottom, constant: -15, priority: 749)
        constraints.trailing.assert(view1, .trailing, .equal, parentView, .trailing, constant: -20, priority: 749)
    }

    func testArrayEdgeAnchorsWithInset() {
        let insets: RelativeLayoutPadding = .inset(top: 10, leading: 5, bottom: 15, trailing: 20)

        let constraints = viewArray.edgeAnchors .= parentView.edgeAnchors .+ insets ~ .high .- 1
        constraints.map {$0.top}.assert(viewArray, .top, .equal, parentView, .top, constant: 10, priority: 749)
        constraints.map {$0.leading}.assert(viewArray, .leading, .equal, parentView, .leading, constant: 5, priority: 749)
        constraints.map {$0.bottom}.assert(viewArray, .bottom, .equal, parentView, .bottom, constant: -15, priority: 749)
        constraints.map {$0.trailing}.assert(viewArray, .trailing, .equal, parentView, .trailing, constant: -20, priority: 749)
    }

    func testEdgeAnchorsWithOutset() {
        let insets: RelativeLayoutPadding = .outset(top: 10, leading: 5, bottom: 15, trailing: 20)
        let constraints = view1.edgeAnchors .= parentView.edgeAnchors .+ insets ~ .high .- 1
        constraints.top.assert(view1, .top, .equal, parentView, .top, constant: -10, priority: 749)
        constraints.leading.assert(view1, .leading, .equal, parentView, .leading, constant: -5, priority: 749)
        constraints.bottom.assert(view1, .bottom, .equal, parentView, .bottom, constant: 15, priority: 749)
        constraints.trailing.assert(view1, .trailing, .equal, parentView, .trailing, constant: 20, priority: 749)
    }

    func testArrayEdgeAnchorsWithOutset() {
        let constraints = viewArray.edgeAnchors .= parentView.edgeAnchors .+ .outset(top: 10, leading: 5, bottom: 15, trailing: 20) ~ .high .- 1
        constraints.map {$0.top}.assert(viewArray, .top, .equal, parentView, .top, constant: -10, priority: 749)
        constraints.map {$0.leading}.assert(viewArray, .leading, .equal, parentView, .leading, constant: -5, priority: 749)
        constraints.map {$0.bottom}.assert(viewArray, .bottom, .equal, parentView, .bottom, constant: 15, priority: 749)
        constraints.map {$0.trailing}.assert(viewArray, .trailing, .equal, parentView, .trailing, constant: 20, priority: 749)
    }

    func testLessThanEdgeAnchors() {
        let constraints = view1.edgeAnchors ≤ parentView.edgeAnchors .+ 10 ~ .high .- 1
        constraints.top.assert(view1, .top, .lessThanOrEqual, parentView, .top, constant: 10, priority: 749)
        constraints.leading.assert(view1, .leading, .lessThanOrEqual, parentView, .leading, constant: 10, priority: 749)
        constraints.bottom.assert(view1, .bottom, .lessThanOrEqual, parentView, .bottom, constant: 10, priority: 749)
        constraints.trailing.assert(view1, .trailing, .lessThanOrEqual, parentView, .trailing, constant: 10, priority: 749)
    }

    func testLessThanArrayEdgeAnchors() {
        let constraints = viewArray.edgeAnchors ≤ parentView.edgeAnchors .+ 10 ~ .high .- 1
        constraints.map {$0.top}.assert(viewArray, .top, .lessThanOrEqual, parentView, .top, constant: 10, priority: 749)
        constraints.map {$0.leading}.assert(viewArray, .leading, .lessThanOrEqual, parentView, .leading, constant: 10, priority: 749)
        constraints.map {$0.bottom}.assert(viewArray, .bottom, .lessThanOrEqual, parentView, .bottom, constant: 10, priority: 749)
        constraints.map {$0.trailing}.assert(viewArray, .trailing, .lessThanOrEqual, parentView, .trailing, constant: 10, priority: 749)
    }

    func testLessThanEdgeAnchorsWithInset() {
        let insets: RelativeLayoutPadding = .inset(top: 10, leading: 5, bottom: 15, trailing: 20)
        let constraints = view1.edgeAnchors ≤ parentView.edgeAnchors .+ insets ~ .high .- 1
        constraints.top.assert(view1, .top, .lessThanOrEqual, parentView, .top, constant: 10, priority: 749)
        constraints.leading.assert(view1, .leading, .lessThanOrEqual, parentView, .leading, constant: 5, priority: 749)
        constraints.bottom.assert(view1, .bottom, .lessThanOrEqual, parentView, .bottom, constant: -15, priority: 749)
        constraints.trailing.assert(view1, .trailing, .lessThanOrEqual, parentView, .trailing, constant: -20, priority: 749)
    }

    func testLessThanArrayEdgeAnchorsWithInset() {
        let insets: RelativeLayoutPadding = .inset(top: 10, leading: 5, bottom: 15, trailing: 20)

        let constraints = viewArray.edgeAnchors ≤ parentView.edgeAnchors .+ insets ~ .high .- 1
        constraints.map {$0.top}.assert(viewArray, .top, .lessThanOrEqual, parentView, .top, constant: 10, priority: 749)
        constraints.map {$0.leading}.assert(viewArray, .leading, .lessThanOrEqual, parentView, .leading, constant: 5, priority: 749)
        constraints.map {$0.bottom}.assert(viewArray, .bottom, .lessThanOrEqual, parentView, .bottom, constant: -15, priority: 749)
        constraints.map {$0.trailing}.assert(viewArray, .trailing, .lessThanOrEqual, parentView, .trailing, constant: -20, priority: 749)
    }

    func testLessThanEdgeAnchorsWithOutset() {
        let insets: RelativeLayoutPadding = .outset(top: 10, leading: 5, bottom: 15, trailing: 20)
        let constraints = view1.edgeAnchors ≤ parentView.edgeAnchors .+ insets ~ .high .- 1
        constraints.top.assert(view1, .top, .lessThanOrEqual, parentView, .top, constant: -10, priority: 749)
        constraints.leading.assert(view1, .leading, .lessThanOrEqual, parentView, .leading, constant: -5, priority: 749)
        constraints.bottom.assert(view1, .bottom, .lessThanOrEqual, parentView, .bottom, constant: 15, priority: 749)
        constraints.trailing.assert(view1, .trailing, .lessThanOrEqual, parentView, .trailing, constant: 20, priority: 749)
    }

    func testLessThanArrayEdgeAnchorsWithOutset() {
        let constraints = viewArray.edgeAnchors ≤ parentView.edgeAnchors .+ .outset(top: 10, leading: 5, bottom: 15, trailing: 20) ~ .high .- 1
        constraints.map {$0.top}.assert(viewArray, .top, .lessThanOrEqual, parentView, .top, constant: -10, priority: 749)
        constraints.map {$0.leading}.assert(viewArray, .leading, .lessThanOrEqual, parentView, .leading, constant: -5, priority: 749)
        constraints.map {$0.bottom}.assert(viewArray, .bottom, .lessThanOrEqual, parentView, .bottom, constant: 15, priority: 749)
        constraints.map {$0.trailing}.assert(viewArray, .trailing, .lessThanOrEqual, parentView, .trailing, constant: 20, priority: 749)
    }

    func testGreaterThanEdgeAnchors() {
        let constraints = view1.edgeAnchors ≥ parentView.edgeAnchors .+ 10 ~ .high .- 1
        constraints.top.assert(view1, .top, .greaterThanOrEqual, parentView, .top, constant: 10, priority: 749)
        constraints.leading.assert(view1, .leading, .greaterThanOrEqual, parentView, .leading, constant: 10, priority: 749)
        constraints.bottom.assert(view1, .bottom, .greaterThanOrEqual, parentView, .bottom, constant: 10, priority: 749)
        constraints.trailing.assert(view1, .trailing, .greaterThanOrEqual, parentView, .trailing, constant: 10, priority: 749)
    }

    func testGreaterThanArrayEdgeAnchors() {
        let constraints = viewArray.edgeAnchors ≥ parentView.edgeAnchors .+ 10 ~ .high .- 1
        constraints.map {$0.top}.assert(viewArray, .top, .greaterThanOrEqual, parentView, .top, constant: 10, priority: 749)
        constraints.map {$0.leading}.assert(viewArray, .leading, .greaterThanOrEqual, parentView, .leading, constant: 10, priority: 749)
        constraints.map {$0.bottom}.assert(viewArray, .bottom, .greaterThanOrEqual, parentView, .bottom, constant: 10, priority: 749)
        constraints.map {$0.trailing}.assert(viewArray, .trailing, .greaterThanOrEqual, parentView, .trailing, constant: 10, priority: 749)
    }

    func testGreaterThanEdgeAnchorsWithInset() {
        let insets: RelativeLayoutPadding = .inset(top: 10, leading: 5, bottom: 15, trailing: 20)
        let constraints = view1.edgeAnchors ≥ parentView.edgeAnchors .+ insets ~ .high .- 1
        constraints.top.assert(view1, .top, .greaterThanOrEqual, parentView, .top, constant: 10, priority: 749)
        constraints.leading.assert(view1, .leading, .greaterThanOrEqual, parentView, .leading, constant: 5, priority: 749)
        constraints.bottom.assert(view1, .bottom, .greaterThanOrEqual, parentView, .bottom, constant: -15, priority: 749)
        constraints.trailing.assert(view1, .trailing, .greaterThanOrEqual, parentView, .trailing, constant: -20, priority: 749)
    }

    func testGreaterThanArrayEdgeAnchorsWithInset() {
        let insets: RelativeLayoutPadding = .inset(top: 10, leading: 5, bottom: 15, trailing: 20)

        let constraints = viewArray.edgeAnchors ≥ parentView.edgeAnchors .+ insets ~ .high .- 1
        constraints.map {$0.top}.assert(viewArray, .top, .greaterThanOrEqual, parentView, .top, constant: 10, priority: 749)
        constraints.map {$0.leading}.assert(viewArray, .leading, .greaterThanOrEqual, parentView, .leading, constant: 5, priority: 749)
        constraints.map {$0.bottom}.assert(viewArray, .bottom, .greaterThanOrEqual, parentView, .bottom, constant: -15, priority: 749)
        constraints.map {$0.trailing}.assert(viewArray, .trailing, .greaterThanOrEqual, parentView, .trailing, constant: -20, priority: 749)
    }

    func testGreaterThanEdgeAnchorsWithOutset() {
        let insets: RelativeLayoutPadding = .outset(top: 10, leading: 5, bottom: 15, trailing: 20)
        let constraints = view1.edgeAnchors ≥ parentView.edgeAnchors .+ insets ~ .high .- 1
        constraints.top.assert(view1, .top, .greaterThanOrEqual, parentView, .top, constant: -10, priority: 749)
        constraints.leading.assert(view1, .leading, .greaterThanOrEqual, parentView, .leading, constant: -5, priority: 749)
        constraints.bottom.assert(view1, .bottom, .greaterThanOrEqual, parentView, .bottom, constant: 15, priority: 749)
        constraints.trailing.assert(view1, .trailing, .greaterThanOrEqual, parentView, .trailing, constant: 20, priority: 749)
    }

    func testGreaterThanArrayEdgeAnchorsWithOutset() {
        let constraints = viewArray.edgeAnchors ≥ parentView.edgeAnchors .+ .outset(top: 10, leading: 5, bottom: 15, trailing: 20) ~ .high .- 1
        constraints.map {$0.top}.assert(viewArray, .top, .greaterThanOrEqual, parentView, .top, constant: -10, priority: 749)
        constraints.map {$0.leading}.assert(viewArray, .leading, .greaterThanOrEqual, parentView, .leading, constant: -5, priority: 749)
        constraints.map {$0.bottom}.assert(viewArray, .bottom, .greaterThanOrEqual, parentView, .bottom, constant: 15, priority: 749)
        constraints.map {$0.trailing}.assert(viewArray, .trailing, .greaterThanOrEqual, parentView, .trailing, constant: 20, priority: 749)
    }

    func testInsetFromEdgeAnchors() {
        let constraints = view1.edgeAnchors ≥≤ parentView.edgeAnchors .+ 10 ~ .high .- 1
        constraints.top.assert(view1, .top, .greaterThanOrEqual, parentView, .top, constant: 10, priority: 749)
        constraints.leading.assert(view1, .leading, .greaterThanOrEqual, parentView, .leading, constant: 10, priority: 749)
        constraints.bottom.assert(view1, .bottom, .lessThanOrEqual, parentView, .bottom, constant: 10, priority: 749)
        constraints.trailing.assert(view1, .trailing, .lessThanOrEqual, parentView, .trailing, constant: 10, priority: 749)
    }

    func testInsetFromArrayEdgeAnchors() {
        let constraints = viewArray.edgeAnchors ≥≤ parentView.edgeAnchors .+ 10 ~ .high .- 1
        constraints.map {$0.top}.assert(viewArray, .top, .greaterThanOrEqual, parentView, .top, constant: 10, priority: 749)
        constraints.map {$0.leading}.assert(viewArray, .leading, .greaterThanOrEqual, parentView, .leading, constant: 10, priority: 749)
        constraints.map {$0.bottom}.assert(viewArray, .bottom, .lessThanOrEqual, parentView, .bottom, constant: 10, priority: 749)
        constraints.map {$0.trailing}.assert(viewArray, .trailing, .lessThanOrEqual, parentView, .trailing, constant: 10, priority: 749)
    }

    func testInsetFromEdgeAnchorsWithInset() {
        let insets: RelativeLayoutPadding = .inset(top: 10, leading: 5, bottom: 15, trailing: 20)
        let constraints = view1.edgeAnchors ≥≤ parentView.edgeAnchors .+ insets ~ .high .- 1
        constraints.top.assert(view1, .top, .greaterThanOrEqual, parentView, .top, constant: 10, priority: 749)
        constraints.leading.assert(view1, .leading, .greaterThanOrEqual, parentView, .leading, constant: 5, priority: 749)
        constraints.bottom.assert(view1, .bottom, .lessThanOrEqual, parentView, .bottom, constant: -15, priority: 749)
        constraints.trailing.assert(view1, .trailing, .lessThanOrEqual, parentView, .trailing, constant: -20, priority: 749)
    }

    func testInsetFromArrayEdgeAnchorsWithInset() {
        let insets: RelativeLayoutPadding = .inset(top: 10, leading: 5, bottom: 15, trailing: 20)

        let constraints = viewArray.edgeAnchors ≥≤ parentView.edgeAnchors .+ insets ~ .high .- 1
        constraints.map {$0.top}.assert(viewArray, .top, .greaterThanOrEqual, parentView, .top, constant: 10, priority: 749)
        constraints.map {$0.leading}.assert(viewArray, .leading, .greaterThanOrEqual, parentView, .leading, constant: 5, priority: 749)
        constraints.map {$0.bottom}.assert(viewArray, .bottom, .lessThanOrEqual, parentView, .bottom, constant: -15, priority: 749)
        constraints.map {$0.trailing}.assert(viewArray, .trailing, .lessThanOrEqual, parentView, .trailing, constant: -20, priority: 749)
    }

    func testInsetFromEdgeAnchorsWithOutset() {
        let insets: RelativeLayoutPadding = .outset(top: 10, leading: 5, bottom: 15, trailing: 20)
        let constraints = view1.edgeAnchors ≥≤ parentView.edgeAnchors .+ insets ~ .high .- 1
        constraints.top.assert(view1, .top, .greaterThanOrEqual, parentView, .top, constant: -10, priority: 749)
        constraints.leading.assert(view1, .leading, .greaterThanOrEqual, parentView, .leading, constant: -5, priority: 749)
        constraints.bottom.assert(view1, .bottom, .lessThanOrEqual, parentView, .bottom, constant: 15, priority: 749)
        constraints.trailing.assert(view1, .trailing, .lessThanOrEqual, parentView, .trailing, constant: 20, priority: 749)
    }

    func testInsetFromArrayEdgeAnchorsWithOutset() {
        let constraints = viewArray.edgeAnchors ≥≤ parentView.edgeAnchors .+ .outset(top: 10, leading: 5, bottom: 15, trailing: 20) ~ .high .- 1
        constraints.map {$0.top}.assert(viewArray, .top, .greaterThanOrEqual, parentView, .top, constant: -10, priority: 749)
        constraints.map {$0.leading}.assert(viewArray, .leading, .greaterThanOrEqual, parentView, .leading, constant: -5, priority: 749)
        constraints.map {$0.bottom}.assert(viewArray, .bottom, .lessThanOrEqual, parentView, .bottom, constant: 15, priority: 749)
        constraints.map {$0.trailing}.assert(viewArray, .trailing, .lessThanOrEqual, parentView, .trailing, constant: 20, priority: 749)
    }

    func testOutsetFromEdgeAnchors() {
        let constraints = view1.edgeAnchors ≤≥ parentView.edgeAnchors .+ 10 ~ .high .- 1
        constraints.top.assert(view1, .top, .lessThanOrEqual, parentView, .top, constant: 10, priority: 749)
        constraints.leading.assert(view1, .leading, .lessThanOrEqual, parentView, .leading, constant: 10, priority: 749)
        constraints.bottom.assert(view1, .bottom, .greaterThanOrEqual, parentView, .bottom, constant: 10, priority: 749)
        constraints.trailing.assert(view1, .trailing, .greaterThanOrEqual, parentView, .trailing, constant: 10, priority: 749)
    }

    func testOutsetFromArrayEdgeAnchors() {
        let constraints = viewArray.edgeAnchors ≤≥ parentView.edgeAnchors .+ 10 ~ .high .- 1
        constraints.map {$0.top}.assert(viewArray, .top, .lessThanOrEqual, parentView, .top, constant: 10, priority: 749)
        constraints.map {$0.leading}.assert(viewArray, .leading, .lessThanOrEqual, parentView, .leading, constant: 10, priority: 749)
        constraints.map {$0.bottom}.assert(viewArray, .bottom, .greaterThanOrEqual, parentView, .bottom, constant: 10, priority: 749)
        constraints.map {$0.trailing}.assert(viewArray, .trailing, .greaterThanOrEqual, parentView, .trailing, constant: 10, priority: 749)
    }

    func testOutsetFromEdgeAnchorsWithInset() {
        let insets: RelativeLayoutPadding = .inset(top: 10, leading: 5, bottom: 15, trailing: 20)
        let constraints = view1.edgeAnchors ≤≥ parentView.edgeAnchors .+ insets ~ .high .- 1
        constraints.top.assert(view1, .top, .lessThanOrEqual, parentView, .top, constant: 10, priority: 749)
        constraints.leading.assert(view1, .leading, .lessThanOrEqual, parentView, .leading, constant: 5, priority: 749)
        constraints.bottom.assert(view1, .bottom, .greaterThanOrEqual, parentView, .bottom, constant: -15, priority: 749)
        constraints.trailing.assert(view1, .trailing, .greaterThanOrEqual, parentView, .trailing, constant: -20, priority: 749)
    }

    func testOutsetFromArrayEdgeAnchorsWithInset() {
        let insets: RelativeLayoutPadding = .inset(top: 10, leading: 5, bottom: 15, trailing: 20)

        let constraints = viewArray.edgeAnchors ≤≥ parentView.edgeAnchors .+ insets ~ .high .- 1
        constraints.map {$0.top}.assert(viewArray, .top, .lessThanOrEqual, parentView, .top, constant: 10, priority: 749)
        constraints.map {$0.leading}.assert(viewArray, .leading, .lessThanOrEqual, parentView, .leading, constant: 5, priority: 749)
        constraints.map {$0.bottom}.assert(viewArray, .bottom, .greaterThanOrEqual, parentView, .bottom, constant: -15, priority: 749)
        constraints.map {$0.trailing}.assert(viewArray, .trailing, .greaterThanOrEqual, parentView, .trailing, constant: -20, priority: 749)
    }

    func testOutsetFromEdgeAnchorsWithOutset() {
        let insets: RelativeLayoutPadding = .outset(top: 10, leading: 5, bottom: 15, trailing: 20)
        let constraints = view1.edgeAnchors ≤≥ parentView.edgeAnchors .+ insets ~ .high .- 1
        constraints.top.assert(view1, .top, .lessThanOrEqual, parentView, .top, constant: -10, priority: 749)
        constraints.leading.assert(view1, .leading, .lessThanOrEqual, parentView, .leading, constant: -5, priority: 749)
        constraints.bottom.assert(view1, .bottom, .greaterThanOrEqual, parentView, .bottom, constant: 15, priority: 749)
        constraints.trailing.assert(view1, .trailing, .greaterThanOrEqual, parentView, .trailing, constant: 20, priority: 749)
    }

    func testOutsetFromArrayEdgeAnchorsWithOutset() {
        let constraints = viewArray.edgeAnchors ≤≥ parentView.edgeAnchors .+ .outset(top: 10, leading: 5, bottom: 15, trailing: 20) ~ .high .- 1
        constraints.map {$0.top}.assert(viewArray, .top, .lessThanOrEqual, parentView, .top, constant: -10, priority: 749)
        constraints.map {$0.leading}.assert(viewArray, .leading, .lessThanOrEqual, parentView, .leading, constant: -5, priority: 749)
        constraints.map {$0.bottom}.assert(viewArray, .bottom, .greaterThanOrEqual, parentView, .bottom, constant: 15, priority: 749)
        constraints.map {$0.trailing}.assert(viewArray, .trailing, .greaterThanOrEqual, parentView, .trailing, constant: 20, priority: 749)
    }


    //MARK: Misc

    func testEdgeAnchorsWithTupleInset() {
        let constraints = view1.edgeAnchors .= parentView.edgeAnchors.inset(10, 5) ~ .high .- 1
        constraints.top.assert(view1, .top, .equal, parentView, .top, constant: 5, priority: 749)
        constraints.leading.assert(view1, .leading, .equal, parentView, .leading, constant: 10, priority: 749)
        constraints.bottom.assert(view1, .bottom, .equal, parentView, .bottom, constant: -5, priority: 749)
        constraints.trailing.assert(view1, .trailing, .equal, parentView, .trailing, constant: -10, priority: 749)
    }

    func testArrayEdgeAnchorsWithTupleInset() {
        let constraints = viewArray.edgeAnchors .= parentView.edgeAnchors.inset(10, 5) ~ .high .- 1
        constraints.map {$0.top}.assert(viewArray, .top, .equal, parentView, .top, constant: 5, priority: 749)
        constraints.map {$0.leading}.assert(viewArray, .leading, .equal, parentView, .leading, constant: 10, priority: 749)
        constraints.map {$0.bottom}.assert(viewArray, .bottom, .equal, parentView, .bottom, constant: -5, priority: 749)
        constraints.map {$0.trailing}.assert(viewArray, .trailing, .equal, parentView, .trailing, constant: -10, priority: 749)
    }

    // MARK: Excluding edges
    func testEdgeAnchorsExcludingTop() {
        let constraints = view1.edges .= parentView.edges.excluding(.top) .+ 10 ~ .high .- 1
        constraints.leading.assert(view1, .leading, .equal, parentView, .leading, constant: 10, priority: 749)
        constraints.bottom.assert(view1, .bottom, .equal, parentView, .bottom, constant: 10, priority: 749)
        constraints.trailing.assert(view1, .trailing, .equal, parentView, .trailing, constant: 10, priority: 749)
        XCTAssertFalse(constraints.top.isActive)
    }

    func testArrayEdgeAnchorsExcludingTop() {
        let constraints = viewArray.edges .= parentView.edges.excluding(.top) .+ 10 ~ .high .- 1
        constraints.map {$0.leading}.assert(viewArray, .leading, .equal, parentView, .leading, constant: 10, priority: 749)
        constraints.map {$0.bottom}.assert(viewArray, .bottom, .equal, parentView, .bottom, constant: 10, priority: 749)
        constraints.map {$0.trailing}.assert(viewArray, .trailing, .equal, parentView, .trailing, constant: 10, priority: 749)
        constraints.forEach { XCTAssertFalse($0.top.isActive) }
    }

    func testEdgeAnchorsExcludingTopInferredParentView() {
        let constraints = view1.edges.excluding(.top) .= 10 ~ .high .- 1    
        constraints.leading.assert(view1, .leading, .equal, parentView, .leading, constant: 10, priority: 749)
        constraints.bottom.assert(view1, .bottom, .equal, parentView, .bottom, constant: 10, priority: 749)
        constraints.trailing.assert(view1, .trailing, .equal, parentView, .trailing, constant: 10, priority: 749)
        XCTAssertFalse(constraints.top.isActive)
    }

    func testArrayEdgeAnchorsExcludingTopInferredParentView() {
        let constraints = viewArray.edges.excluding(.top) .= 10 ~ .high .- 1
        constraints.map {$0.leading}.assert(viewArray, .leading, .equal, parentView, .leading, constant: 10, priority: 749)
        constraints.map {$0.bottom}.assert(viewArray, .bottom, .equal, parentView, .bottom, constant: 10, priority: 749)
        constraints.map {$0.trailing}.assert(viewArray, .trailing, .equal, parentView, .trailing, constant: 10, priority: 749)
        constraints.forEach { XCTAssertFalse($0.top.isActive) }
    }
}
