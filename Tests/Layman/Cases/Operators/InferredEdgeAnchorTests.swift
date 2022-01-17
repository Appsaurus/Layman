//
//  InferredEdgeAnchorTests.swift
//  Layman
//
//  Created by Brian Strobach on 3/5/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

@testable import Layman
import XCTest

class InferredEdgeAnchorsTests: LaymanTestCase {

    func testInferredEdgeAnchors() {
        let constraints = view1.edgeAnchors .= 10 ~ .high .- 1
        constraints.top.assert(view1, .top, .equal, parentView, .top, constant: 10, priority: 749)
        constraints.leading.assert(view1, .leading, .equal, parentView, .leading, constant: 10, priority: 749)
        constraints.bottom.assert(view1, .bottom, .equal, parentView, .bottom, constant: 10, priority: 749)
        constraints.trailing.assert(view1, .trailing, .equal, parentView, .trailing, constant: 10, priority: 749)
    }

    func testInferredArrayEdgeAnchors() {
        let constraints = viewArray.edgeAnchors .= 10 ~ .high .- 1
        constraints.map {$0.top}.assert(viewArray, .top, .equal, parentView, .top, constant: 10, priority: 749)
        constraints.map {$0.leading}.assert(viewArray, .leading, .equal, parentView, .leading, constant: 10, priority: 749)
        constraints.map {$0.bottom}.assert(viewArray, .bottom, .equal, parentView, .bottom, constant: 10, priority: 749)
        constraints.map {$0.trailing}.assert(viewArray, .trailing, .equal, parentView, .trailing, constant: 10, priority: 749)
    }

    func testInferredEdgeAnchorsWithInset() {
        let insets: RelativeLayoutPadding = .inset(top: 10, leading: 5, bottom: 15, trailing: 20)
        let constraints = view1.edgeAnchors .= insets ~ .high .- 1
        constraints.top.assert(view1, .top, .equal, parentView, .top, constant: 10, priority: 749)
        constraints.leading.assert(view1, .leading, .equal, parentView, .leading, constant: 5, priority: 749)
        constraints.bottom.assert(view1, .bottom, .equal, parentView, .bottom, constant: -15, priority: 749)
        constraints.trailing.assert(view1, .trailing, .equal, parentView, .trailing, constant: -20, priority: 749)
    }

    func testInferredArrayEdgeAnchorsWithInset() {
        let insets: RelativeLayoutPadding = .inset(top: 10, leading: 5, bottom: 15, trailing: 20)

        let constraints = viewArray.edgeAnchors .= insets ~ .high .- 1
        constraints.map {$0.top}.assert(viewArray, .top, .equal, parentView, .top, constant: 10, priority: 749)
        constraints.map {$0.leading}.assert(viewArray, .leading, .equal, parentView, .leading, constant: 5, priority: 749)
        constraints.map {$0.bottom}.assert(viewArray, .bottom, .equal, parentView, .bottom, constant: -15, priority: 749)
        constraints.map {$0.trailing}.assert(viewArray, .trailing, .equal, parentView, .trailing, constant: -20, priority: 749)
    }

    func testInferredEdgeAnchorsWithOutset() {
        let insets: RelativeLayoutPadding = .outset(top: 10, leading: 5, bottom: 15, trailing: 20)
        let constraints = view1.edgeAnchors .= insets ~ .high .- 1
        constraints.top.assert(view1, .top, .equal, parentView, .top, constant: -10, priority: 749)
        constraints.leading.assert(view1, .leading, .equal, parentView, .leading, constant: -5, priority: 749)
        constraints.bottom.assert(view1, .bottom, .equal, parentView, .bottom, constant: 15, priority: 749)
        constraints.trailing.assert(view1, .trailing, .equal, parentView, .trailing, constant: 20, priority: 749)
    }

    func testInferredArrayEdgeAnchorsWithOutset() {
        let constraints = viewArray.edgeAnchors .= .outset(top: 10, leading: 5, bottom: 15, trailing: 20) ~ .high .- 1
        constraints.map {$0.top}.assert(viewArray, .top, .equal, parentView, .top, constant: -10, priority: 749)
        constraints.map {$0.leading}.assert(viewArray, .leading, .equal, parentView, .leading, constant: -5, priority: 749)
        constraints.map {$0.bottom}.assert(viewArray, .bottom, .equal, parentView, .bottom, constant: 15, priority: 749)
        constraints.map {$0.trailing}.assert(viewArray, .trailing, .equal, parentView, .trailing, constant: 20, priority: 749)
    }

    func testInferredLessThanEdgeAnchors() {
        let constraints = view1.edgeAnchors ≤ 10 ~ .high .- 1
        constraints.top.assert(view1, .top, .lessThanOrEqual, parentView, .top, constant: 10, priority: 749)
        constraints.leading.assert(view1, .leading, .lessThanOrEqual, parentView, .leading, constant: 10, priority: 749)
        constraints.bottom.assert(view1, .bottom, .lessThanOrEqual, parentView, .bottom, constant: 10, priority: 749)
        constraints.trailing.assert(view1, .trailing, .lessThanOrEqual, parentView, .trailing, constant: 10, priority: 749)
    }

    func testInferredLessThanArrayEdgeAnchors() {
        let constraints = viewArray.edgeAnchors ≤ 10 ~ .high .- 1
        constraints.map {$0.top}.assert(viewArray, .top, .lessThanOrEqual, parentView, .top, constant: 10, priority: 749)
        constraints.map {$0.leading}.assert(viewArray, .leading, .lessThanOrEqual, parentView, .leading, constant: 10, priority: 749)
        constraints.map {$0.bottom}.assert(viewArray, .bottom, .lessThanOrEqual, parentView, .bottom, constant: 10, priority: 749)
        constraints.map {$0.trailing}.assert(viewArray, .trailing, .lessThanOrEqual, parentView, .trailing, constant: 10, priority: 749)
    }

    func testInferredLessThanEdgeAnchorsWithInset() {
        let insets: RelativeLayoutPadding = .inset(top: 10, leading: 5, bottom: 15, trailing: 20)        
        let constraints = view1.edgeAnchors ≤ insets ~ .high .- 1
        constraints.top.assert(view1, .top, .lessThanOrEqual, parentView, .top, constant: 10, priority: 749)
        constraints.leading.assert(view1, .leading, .lessThanOrEqual, parentView, .leading, constant: 5, priority: 749)
        constraints.bottom.assert(view1, .bottom, .lessThanOrEqual, parentView, .bottom, constant: -15, priority: 749)
        constraints.trailing.assert(view1, .trailing, .lessThanOrEqual, parentView, .trailing, constant: -20, priority: 749)
    }

    func testInferredLessThanArrayEdgeAnchorsWithInset() {
        let insets: RelativeLayoutPadding = .inset(top: 10, leading: 5, bottom: 15, trailing: 20)
        let constraints = viewArray.edgeAnchors ≤ insets ~ .high .- 1
        constraints.map {$0.top}.assert(viewArray, .top, .lessThanOrEqual, parentView, .top, constant: 10, priority: 749)
        constraints.map {$0.leading}.assert(viewArray, .leading, .lessThanOrEqual, parentView, .leading, constant: 5, priority: 749)
        constraints.map {$0.bottom}.assert(viewArray, .bottom, .lessThanOrEqual, parentView, .bottom, constant: -15, priority: 749)
        constraints.map {$0.trailing}.assert(viewArray, .trailing, .lessThanOrEqual, parentView, .trailing, constant: -20, priority: 749)
    }

    func testInferredLessThanEdgeAnchorsWithOutset() {
        let insets: RelativeLayoutPadding = .outset(top: 10, leading: 5, bottom: 15, trailing: 20)
        let constraints = view1.edgeAnchors ≤ insets ~ .high .- 1
        constraints.top.assert(view1, .top, .lessThanOrEqual, parentView, .top, constant: -10, priority: 749)
        constraints.leading.assert(view1, .leading, .lessThanOrEqual, parentView, .leading, constant: -5, priority: 749)
        constraints.bottom.assert(view1, .bottom, .lessThanOrEqual, parentView, .bottom, constant: 15, priority: 749)
        constraints.trailing.assert(view1, .trailing, .lessThanOrEqual, parentView, .trailing, constant: 20, priority: 749)
    }

    func testInferredLessThanArrayEdgeAnchorsWithOutset() {
        let constraints = viewArray.edgeAnchors ≤ .outset(top: 10, leading: 5, bottom: 15, trailing: 20) ~ .high .- 1
        constraints.map {$0.top}.assert(viewArray, .top, .lessThanOrEqual, parentView, .top, constant: -10, priority: 749)
        constraints.map {$0.leading}.assert(viewArray, .leading, .lessThanOrEqual, parentView, .leading, constant: -5, priority: 749)
        constraints.map {$0.bottom}.assert(viewArray, .bottom, .lessThanOrEqual, parentView, .bottom, constant: 15, priority: 749)
        constraints.map {$0.trailing}.assert(viewArray, .trailing, .lessThanOrEqual, parentView, .trailing, constant: 20, priority: 749)
    }

    func testInferredGreaterThanEdgeAnchors() {
        let constraints = view1.edgeAnchors ≥ 10 ~ .high .- 1
        constraints.top.assert(view1, .top, .greaterThanOrEqual, parentView, .top, constant: 10, priority: 749)
        constraints.leading.assert(view1, .leading, .greaterThanOrEqual, parentView, .leading, constant: 10, priority: 749)
        constraints.bottom.assert(view1, .bottom, .greaterThanOrEqual, parentView, .bottom, constant: 10, priority: 749)
        constraints.trailing.assert(view1, .trailing, .greaterThanOrEqual, parentView, .trailing, constant: 10, priority: 749)
    }

    func testInferredGreaterThanArrayEdgeAnchors() {
        let constraints = viewArray.edgeAnchors ≥ 10 ~ .high .- 1
        constraints.map {$0.top}.assert(viewArray, .top, .greaterThanOrEqual, parentView, .top, constant: 10, priority: 749)
        constraints.map {$0.leading}.assert(viewArray, .leading, .greaterThanOrEqual, parentView, .leading, constant: 10, priority: 749)
        constraints.map {$0.bottom}.assert(viewArray, .bottom, .greaterThanOrEqual, parentView, .bottom, constant: 10, priority: 749)
        constraints.map {$0.trailing}.assert(viewArray, .trailing, .greaterThanOrEqual, parentView, .trailing, constant: 10, priority: 749)
    }

    func testInferredGreaterThanEdgeAnchorsWithInset() {
        let insets: RelativeLayoutPadding = .inset(top: 10, leading: 5, bottom: 15, trailing: 20)
        let constraints = view1.edgeAnchors ≥ insets ~ .high .- 1
        constraints.top.assert(view1, .top, .greaterThanOrEqual, parentView, .top, constant: 10, priority: 749)
        constraints.leading.assert(view1, .leading, .greaterThanOrEqual, parentView, .leading, constant: 5, priority: 749)
        constraints.bottom.assert(view1, .bottom, .greaterThanOrEqual, parentView, .bottom, constant: -15, priority: 749)
        constraints.trailing.assert(view1, .trailing, .greaterThanOrEqual, parentView, .trailing, constant: -20, priority: 749)
    }

    func testInferredGreaterThanArrayEdgeAnchorsWithInset() {
        let insets: RelativeLayoutPadding = .inset(top: 10, leading: 5, bottom: 15, trailing: 20)

        let constraints = viewArray.edgeAnchors ≥ insets ~ .high .- 1
        constraints.map {$0.top}.assert(viewArray, .top, .greaterThanOrEqual, parentView, .top, constant: 10, priority: 749)
        constraints.map {$0.leading}.assert(viewArray, .leading, .greaterThanOrEqual, parentView, .leading, constant: 5, priority: 749)
        constraints.map {$0.bottom}.assert(viewArray, .bottom, .greaterThanOrEqual, parentView, .bottom, constant: -15, priority: 749)
        constraints.map {$0.trailing}.assert(viewArray, .trailing, .greaterThanOrEqual, parentView, .trailing, constant: -20, priority: 749)
    }

    func testInferredGreaterThanEdgeAnchorsWithOutset() {
        let insets: RelativeLayoutPadding = .outset(top: 10, leading: 5, bottom: 15, trailing: 20)
        let constraints = view1.edgeAnchors ≥ insets ~ .high .- 1
        constraints.top.assert(view1, .top, .greaterThanOrEqual, parentView, .top, constant: -10, priority: 749)
        constraints.leading.assert(view1, .leading, .greaterThanOrEqual, parentView, .leading, constant: -5, priority: 749)
        constraints.bottom.assert(view1, .bottom, .greaterThanOrEqual, parentView, .bottom, constant: 15, priority: 749)
        constraints.trailing.assert(view1, .trailing, .greaterThanOrEqual, parentView, .trailing, constant: 20, priority: 749)
    }

    func testInferredGreaterThanArrayEdgeAnchorsWithOutset() {
        let constraints = viewArray.edgeAnchors ≥ .outset(top: 10, leading: 5, bottom: 15, trailing: 20) ~ .high .- 1
        constraints.map {$0.top}.assert(viewArray, .top, .greaterThanOrEqual, parentView, .top, constant: -10, priority: 749)
        constraints.map {$0.leading}.assert(viewArray, .leading, .greaterThanOrEqual, parentView, .leading, constant: -5, priority: 749)
        constraints.map {$0.bottom}.assert(viewArray, .bottom, .greaterThanOrEqual, parentView, .bottom, constant: 15, priority: 749)
        constraints.map {$0.trailing}.assert(viewArray, .trailing, .greaterThanOrEqual, parentView, .trailing, constant: 20, priority: 749)
    }

    func testInferredInsetFromEdgeAnchors() {
        let constraints = view1.edgeAnchors ≥≤ 10 ~ .high .- 1
        constraints.top.assert(view1, .top, .greaterThanOrEqual, parentView, .top, constant: 10, priority: 749)
        constraints.leading.assert(view1, .leading, .greaterThanOrEqual, parentView, .leading, constant: 10, priority: 749)
        constraints.bottom.assert(view1, .bottom, .lessThanOrEqual, parentView, .bottom, constant: 10, priority: 749)
        constraints.trailing.assert(view1, .trailing, .lessThanOrEqual, parentView, .trailing, constant: 10, priority: 749)
    }

    func testInferredInsetFromArrayEdgeAnchors() {
        let constraints = viewArray.edgeAnchors ≥≤ 10 ~ .high .- 1
        constraints.map {$0.top}.assert(viewArray, .top, .greaterThanOrEqual, parentView, .top, constant: 10, priority: 749)
        constraints.map {$0.leading}.assert(viewArray, .leading, .greaterThanOrEqual, parentView, .leading, constant: 10, priority: 749)
        constraints.map {$0.bottom}.assert(viewArray, .bottom, .lessThanOrEqual, parentView, .bottom, constant: 10, priority: 749)
        constraints.map {$0.trailing}.assert(viewArray, .trailing, .lessThanOrEqual, parentView, .trailing, constant: 10, priority: 749)
    }

    func testInferredInsetFromEdgeAnchorsWithInset() {
        let insets: RelativeLayoutPadding = .inset(top: 10, leading: 5, bottom: 15, trailing: 20)
        let constraints = view1.edgeAnchors ≥≤ insets ~ .high .- 1
        constraints.top.assert(view1, .top, .greaterThanOrEqual, parentView, .top, constant: 10, priority: 749)
        constraints.leading.assert(view1, .leading, .greaterThanOrEqual, parentView, .leading, constant: 5, priority: 749)
        constraints.bottom.assert(view1, .bottom, .lessThanOrEqual, parentView, .bottom, constant: -15, priority: 749)
        constraints.trailing.assert(view1, .trailing, .lessThanOrEqual, parentView, .trailing, constant: -20, priority: 749)
    }

    func testInferredInsetFromArrayEdgeAnchorsWithInset() {
        let insets: RelativeLayoutPadding = .inset(top: 10, leading: 5, bottom: 15, trailing: 20)

        let constraints = viewArray.edgeAnchors ≥≤ insets ~ .high .- 1
        constraints.map {$0.top}.assert(viewArray, .top, .greaterThanOrEqual, parentView, .top, constant: 10, priority: 749)
        constraints.map {$0.leading}.assert(viewArray, .leading, .greaterThanOrEqual, parentView, .leading, constant: 5, priority: 749)
        constraints.map {$0.bottom}.assert(viewArray, .bottom, .lessThanOrEqual, parentView, .bottom, constant: -15, priority: 749)
        constraints.map {$0.trailing}.assert(viewArray, .trailing, .lessThanOrEqual, parentView, .trailing, constant: -20, priority: 749)
    }

    func testInferredInsetFromEdgeAnchorsWithOutset() {
        let insets: RelativeLayoutPadding = .outset(top: 10, leading: 5, bottom: 15, trailing: 20)
        let constraints = view1.edgeAnchors ≥≤ insets ~ .high .- 1
        constraints.top.assert(view1, .top, .greaterThanOrEqual, parentView, .top, constant: -10, priority: 749)
        constraints.leading.assert(view1, .leading, .greaterThanOrEqual, parentView, .leading, constant: -5, priority: 749)
        constraints.bottom.assert(view1, .bottom, .lessThanOrEqual, parentView, .bottom, constant: 15, priority: 749)
        constraints.trailing.assert(view1, .trailing, .lessThanOrEqual, parentView, .trailing, constant: 20, priority: 749)
    }

    func testInferredInsetFromArrayEdgeAnchorsWithOutset() {
        let constraints = viewArray.edgeAnchors ≥≤ .outset(top: 10, leading: 5, bottom: 15, trailing: 20) ~ .high .- 1
        constraints.map {$0.top}.assert(viewArray, .top, .greaterThanOrEqual, parentView, .top, constant: -10, priority: 749)
        constraints.map {$0.leading}.assert(viewArray, .leading, .greaterThanOrEqual, parentView, .leading, constant: -5, priority: 749)
        constraints.map {$0.bottom}.assert(viewArray, .bottom, .lessThanOrEqual, parentView, .bottom, constant: 15, priority: 749)
        constraints.map {$0.trailing}.assert(viewArray, .trailing, .lessThanOrEqual, parentView, .trailing, constant: 20, priority: 749)
    }

    func testInferredOutsetFromEdgeAnchors() {
        let constraints = view1.edgeAnchors ≤≥ 10 ~ .high .- 1
        constraints.top.assert(view1, .top, .lessThanOrEqual, parentView, .top, constant: 10, priority: 749)
        constraints.leading.assert(view1, .leading, .lessThanOrEqual, parentView, .leading, constant: 10, priority: 749)
        constraints.bottom.assert(view1, .bottom, .greaterThanOrEqual, parentView, .bottom, constant: 10, priority: 749)
        constraints.trailing.assert(view1, .trailing, .greaterThanOrEqual, parentView, .trailing, constant: 10, priority: 749)
    }

    func testInferredOutsetFromArrayEdgeAnchors() {
        let constraints = viewArray.edgeAnchors ≤≥ 10 ~ .high .- 1
        constraints.map {$0.top}.assert(viewArray, .top, .lessThanOrEqual, parentView, .top, constant: 10, priority: 749)
        constraints.map {$0.leading}.assert(viewArray, .leading, .lessThanOrEqual, parentView, .leading, constant: 10, priority: 749)
        constraints.map {$0.bottom}.assert(viewArray, .bottom, .greaterThanOrEqual, parentView, .bottom, constant: 10, priority: 749)
        constraints.map {$0.trailing}.assert(viewArray, .trailing, .greaterThanOrEqual, parentView, .trailing, constant: 10, priority: 749)
    }

    func testInferredOutsetFromEdgeAnchorsWithInset() {
        let insets: RelativeLayoutPadding = .inset(top: 10, leading: 5, bottom: 15, trailing: 20)
        let constraints = view1.edgeAnchors ≤≥ insets ~ .high .- 1
        constraints.top.assert(view1, .top, .lessThanOrEqual, parentView, .top, constant: 10, priority: 749)
        constraints.leading.assert(view1, .leading, .lessThanOrEqual, parentView, .leading, constant: 5, priority: 749)
        constraints.bottom.assert(view1, .bottom, .greaterThanOrEqual, parentView, .bottom, constant: -15, priority: 749)
        constraints.trailing.assert(view1, .trailing, .greaterThanOrEqual, parentView, .trailing, constant: -20, priority: 749)
    }

    func testInferredOutsetFromArrayEdgeAnchorsWithInset() {
        let insets: RelativeLayoutPadding = .inset(top: 10, leading: 5, bottom: 15, trailing: 20)

        let constraints = viewArray.edgeAnchors ≤≥ insets ~ .high .- 1
        constraints.map {$0.top}.assert(viewArray, .top, .lessThanOrEqual, parentView, .top, constant: 10, priority: 749)
        constraints.map {$0.leading}.assert(viewArray, .leading, .lessThanOrEqual, parentView, .leading, constant: 5, priority: 749)
        constraints.map {$0.bottom}.assert(viewArray, .bottom, .greaterThanOrEqual, parentView, .bottom, constant: -15, priority: 749)
        constraints.map {$0.trailing}.assert(viewArray, .trailing, .greaterThanOrEqual, parentView, .trailing, constant: -20, priority: 749)
    }

    func testInferredOutsetFromEdgeAnchorsWithOutset() {
        let insets: RelativeLayoutPadding = .outset(top: 10, leading: 5, bottom: 15, trailing: 20)
        let constraints = view1.edgeAnchors ≤≥ insets ~ .high .- 1
        constraints.top.assert(view1, .top, .lessThanOrEqual, parentView, .top, constant: -10, priority: 749)
        constraints.leading.assert(view1, .leading, .lessThanOrEqual, parentView, .leading, constant: -5, priority: 749)
        constraints.bottom.assert(view1, .bottom, .greaterThanOrEqual, parentView, .bottom, constant: 15, priority: 749)
        constraints.trailing.assert(view1, .trailing, .greaterThanOrEqual, parentView, .trailing, constant: 20, priority: 749)
    }

    func testInferredOutsetFromArrayEdgeAnchorsWithOutset() {
        let constraints = viewArray.edgeAnchors ≤≥ .outset(top: 10, leading: 5, bottom: 15, trailing: 20) ~ .high .- 1
        constraints.map {$0.top}.assert(viewArray, .top, .lessThanOrEqual, parentView, .top, constant: -10, priority: 749)
        constraints.map {$0.leading}.assert(viewArray, .leading, .lessThanOrEqual, parentView, .leading, constant: -5, priority: 749)
        constraints.map {$0.bottom}.assert(viewArray, .bottom, .greaterThanOrEqual, parentView, .bottom, constant: 15, priority: 749)
        constraints.map {$0.trailing}.assert(viewArray, .trailing, .greaterThanOrEqual, parentView, .trailing, constant: 20, priority: 749)
    }
}
