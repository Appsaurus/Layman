//
//  RelativeLayoutRelationshipTests.swift
//  Layman
//
//  Created by Brian Strobach on 3/6/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

@testable import Layman
import XCTest

class RelativeLayoutRelationshipTests: LaymanTestCase {

    // MARK: - YAxis Inset/Outset relationship
    func testView1TopInsetFromTop() {
        let constraints = view1.top ≥≤ relatedView.top
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .top)
    }

    func testView1TopOutsetFromTop() {
        let constraints = view1.top ≤≥ relatedView.top
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .top)
    }

    func testView1BottomInsetFromBottom() {
        let constraints = view1.bottom ≥≤ relatedView.bottom
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom)
    }

    func testView1BottomOutsetFromBottom() {
        let constraints = view1.bottom ≤≥ relatedView.bottom
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom)
    }

    // MARK: - XAxis Inset/Outset relationship
    func testView1LeadingInsetFromLeading() {
        let constraints = view1.leading ≥≤ relatedView.leading
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading)
    }

    func testView1LeadingOutsetFromLeading() {
        let constraints = view1.leading ≤≥ relatedView.leading
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading)
    }

    func testView1TrailingInsetFromTrailing() {
        let constraints = view1.trailing ≥≤ relatedView.trailing
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing)
    }

    func testView1TrailingOutsetFromTrailing() {
        let constraints = view1.trailing ≤≥ relatedView.trailing
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing)
    }

    // MARK: - XAxisArray Inset/Outset relationship
    func testViewArrayLeadingInsetFromLeading() {
        let constraints = viewArray.leading ≥≤ relatedView.leading
        constraints.assert(viewArray, .leading, .greaterThanOrEqual, relatedView, .leading)
    }

    func testViewArrayLeadingOutsetFromLeading() {
        let constraints = viewArray.leading ≤≥ relatedView.leading
        constraints.assert(viewArray, .leading, .lessThanOrEqual, relatedView, .leading)
    }

    func testViewArrayTrailingInsetFromTrailing() {
        let constraints = viewArray.trailing ≥≤ relatedView.trailing
        constraints.assert(viewArray, .trailing, .lessThanOrEqual, relatedView, .trailing)
    }

    func testViewArrayTrailingOutsetFromTrailing() {
        let constraints = viewArray.trailing ≤≥ relatedView.trailing
        constraints.assert(viewArray, .trailing, .greaterThanOrEqual, relatedView, .trailing)
    }

    // MARK: - YAxisArray Inset/Outset relationship
    func testViewArrayTopInsetFromTop() {
        let constraints = viewArray.top ≥≤ relatedView.top
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top)
    }

    func testViewArrayTopOutsetFromTop() {
        let constraints = viewArray.top ≤≥ relatedView.top
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top)
    }

    func testViewArrayBottomInsetFromBottom() {
        let constraints = viewArray.bottom ≥≤ relatedView.bottom
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom)
    }

    func testViewArrayBottomOutsetFromBottom() {
        let constraints = viewArray.bottom ≤≥ relatedView.bottom
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom)
    }

    // MARK: - Inferred Anchor Inset/Outset relationship

    // MARK: Inferred XAxisAnchor
    func testInferredView1LeadingInsetFromLeading() {
        let constraints = view1 ≥≤ relatedView.leading
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading)
    }

    func testInferredView1LeadingOutsetFromLeading() {
        let constraints = view1 ≤≥ relatedView.leading
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading)
    }

    func testInferredView1TrailingInsetFromTrailing() {
        let constraints = view1 ≥≤ relatedView.trailing
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing)
    }

    func testInferredView1TrailingOutsetFromTrailing() {
        let constraints = view1 ≤≥ relatedView.trailing
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing)
    }

    func testInverseInferredView1LeadingInsetFromLeading() {
        let constraints = view1.leading ≥≤ relatedView
        constraints.assert(view1, .leading, .greaterThanOrEqual, relatedView, .leading)
    }

    func testInverseInferredView1LeadingOutsetFromLeading() {
        let constraints = view1.leading ≤≥ relatedView
        constraints.assert(view1, .leading, .lessThanOrEqual, relatedView, .leading)
    }

    func testInverseInferredView1TrailingInsetFromTrailing() {
        let constraints = view1.trailing ≥≤ relatedView
        constraints.assert(view1, .trailing, .lessThanOrEqual, relatedView, .trailing)
    }

    func testInverseInferredView1TrailingOutsetFromTrailing() {
        let constraints = view1.trailing ≤≥ relatedView
        constraints.assert(view1, .trailing, .greaterThanOrEqual, relatedView, .trailing)
    }

    // MARK: - Inferred YAxisAnchor
    func testInferredView1TopInsetFromTop() {
        let constraints = view1 ≥≤ relatedView.top
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .top)
    }

    func testInferredView1TopOutsetFromTop() {
        let constraints = view1 ≤≥ relatedView.top
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .top)
    }

    func testInferredView1BottomInsetFromBottom() {
        let constraints = view1 ≥≤ relatedView.bottom
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom)
    }

    func testInferredView1BottomOutsetFromBottom() {
        let constraints = view1 ≤≥ relatedView.bottom
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom)
    }

    func testInverseInferredView1TopInsetFromTop() {
        let constraints = view1.top ≥≤ relatedView
        constraints.assert(view1, .top, .greaterThanOrEqual, relatedView, .top)
    }

    func testInverseInferredView1TopOutsetFromTop() {
        let constraints = view1.top ≤≥ relatedView
        constraints.assert(view1, .top, .lessThanOrEqual, relatedView, .top)
    }

    func testInverseInferredView1BottomInsetFromBottom() {
        let constraints = view1.bottom ≥≤ relatedView
        constraints.assert(view1, .bottom, .lessThanOrEqual, relatedView, .bottom)
    }

    func testInverseInferredView1BottomOutsetFromBottom() {
        let constraints = view1.bottom ≤≥ relatedView
        constraints.assert(view1, .bottom, .greaterThanOrEqual, relatedView, .bottom)
    }

    // MARK: - Inferred Array
    func testInferredViewArrayTopInsetFromTop() {
        let constraints = viewArray ≥≤ relatedView.top
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top)
    }

    func testInferredViewArrayTopOutsetFromTop() {
        let constraints = viewArray ≤≥ relatedView.top
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top)
    }

    func testInferredViewArrayBottomInsetFromBottom() {
        let constraints = viewArray ≥≤ relatedView.bottom
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom)
    }

    func testInferredViewArrayBottomOutsetFromBottom() {
        let constraints = viewArray ≤≥ relatedView.bottom
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom)
    }

    func testInverseInferredViewArrayTopInsetFromTop() {
        let constraints = viewArray.top ≥≤ relatedView
        constraints.assert(viewArray, .top, .greaterThanOrEqual, relatedView, .top)
    }

    func testInverseInferredViewArrayTopOutsetFromTop() {
        let constraints = viewArray.top ≤≥ relatedView
        constraints.assert(viewArray, .top, .lessThanOrEqual, relatedView, .top)
    }

    func testInverseInferredViewArrayBottomInsetFromBottom() {
        let constraints = viewArray.bottom ≥≤ relatedView
        constraints.assert(viewArray, .bottom, .lessThanOrEqual, relatedView, .bottom)
    }

    func testInverseInferredViewArrayBottomOutsetFromBottom() {
        let constraints = viewArray.bottom ≤≥ relatedView
        constraints.assert(viewArray, .bottom, .greaterThanOrEqual, relatedView, .bottom)
    }
}
