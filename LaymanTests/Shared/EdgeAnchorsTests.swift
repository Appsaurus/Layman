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
        view1.leadingAnchor .= relatedView.leadingAnchor .+ .inset(10)
        view1.leadingAnchor .= relatedView.leadingAnchor.inset(10)

        view1.horizontalEdges .= relatedView.horizontalEdges .+ .inset(10)
        view1.horizontalEdges .= relatedView.horizontalEdges.inset(10)
        view1.horizontalEdges .= relatedView.horizontalEdges .+ .inset(10, 20)
        view1.horizontalEdges .= relatedView.horizontalEdges.inset(10, 20)

        view1.edges .= relatedView.edges  .+ .inset(10)
        view1.edges .= relatedView.edges.inset(10)
        view1.edges .= relatedView.edges .+ .inset(top: 10, leading: 5, bottom: 5, trailing: 10)
        view1.edges .= relatedView.edges .+ .inset(top: 10, leading: 5, bottom: 5, trailing: 10)
        let constraints = view1.edgeAnchors .= relatedView.edgeAnchors .+ 10  ~ .high .- 1
        constraints.top.assert(view1, .top, .equal, relatedView, .top, constant: 10, priority: 749)
        constraints.leading.assert(view1, .leading, .equal, relatedView, .leading, constant: 10, priority: 749)
        constraints.bottom.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 10, priority: 749)
        constraints.trailing.assert(view1, .trailing, .equal, relatedView, .trailing, constant: 10, priority: 749)
    }

    func testArrayEdgeAnchors() {
        let constraints = viewArray.edgeAnchors .= relatedView.edgeAnchors .+ 10 ~ .high .- 1
        constraints.map {$0.top}.assert(viewArray, .top, .equal, relatedView, .top, constant: 10, priority: 749)
        constraints.map {$0.leading}.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 10, priority: 749)
        constraints.map {$0.bottom}.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 10, priority: 749)
        constraints.map {$0.trailing}.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: 10, priority: 749)
    }

    func testEdgeAnchorsWithInset() {
        let insets: RelativeLayoutPadding = .inset(top: 10, leading: 5, bottom: 15, trailing: 20)
        let constraints = view1.edgeAnchors .= relatedView.edgeAnchors .+ insets ~ .high .- 1
        constraints.top.assert(view1, .top, .equal, relatedView, .top, constant: 10, priority: 749)
        constraints.leading.assert(view1, .leading, .equal, relatedView, .leading, constant: 5, priority: 749)
        constraints.bottom.assert(view1, .bottom, .equal, relatedView, .bottom, constant: -15, priority: 749)
        constraints.trailing.assert(view1, .trailing, .equal, relatedView, .trailing, constant: -20, priority: 749)
    }

    func testArrayEdgeAnchorsWithInset() {
        let insets: RelativeLayoutPadding = .inset(top: 10, leading: 5, bottom: 15, trailing: 20)

        let constraints = viewArray.edgeAnchors .= relatedView.edgeAnchors .+ insets ~ .high .- 1
        constraints.map {$0.top}.assert(viewArray, .top, .equal, relatedView, .top, constant: 10, priority: 749)
        constraints.map {$0.leading}.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 5, priority: 749)
        constraints.map {$0.bottom}.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: -15, priority: 749)
        constraints.map {$0.trailing}.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: -20, priority: 749)
    }

    func testEdgeAnchorsWithOutset() {
        let insets: RelativeLayoutPadding = .outset(top: 10, leading: 5, bottom: 15, trailing: 20)
        let constraints = view1.edgeAnchors .= relatedView.edgeAnchors .+ insets ~ .high .- 1
        constraints.top.assert(view1, .top, .equal, relatedView, .top, constant: -10, priority: 749)
        constraints.leading.assert(view1, .leading, .equal, relatedView, .leading, constant: -5, priority: 749)
        constraints.bottom.assert(view1, .bottom, .equal, relatedView, .bottom, constant: 15, priority: 749)
        constraints.trailing.assert(view1, .trailing, .equal, relatedView, .trailing, constant: 20, priority: 749)
    }

    func testArrayEdgeAnchorsWithOutset() {

        let constraints = viewArray.edgeAnchors .= relatedView.edgeAnchors .+ .outset(top: 10, leading: 5, bottom: 15, trailing: 20) ~ .high .- 1
        constraints.map {$0.top}.assert(viewArray, .top, .equal, relatedView, .top, constant: -10, priority: 749)
        constraints.map {$0.leading}.assert(viewArray, .leading, .equal, relatedView, .leading, constant: -5, priority: 749)
        constraints.map {$0.bottom}.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: 15, priority: 749)
        constraints.map {$0.trailing}.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: 20, priority: 749)
    }
}
