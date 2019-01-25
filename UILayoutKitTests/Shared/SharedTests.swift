//
//  SharedTests.swift
//  SharedTests
//
//  Created by Brian Strobach on 1/3/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

@testable import UILayoutKit
import XCTest

// swiftlint:disable type_body_length file_length
class SharedTests: UILayoutKitTestCase {

    // MARK: WidthAnchor
    func testWidthEqualityToConstant() {
        let constraint = view1.widthAnchor .= 200
        constraint.assert(view1, .width, .equal, constant: 200)
    }
    

    
    func testWidthGreaterThanConstant() {
        let constraint = view1.widthAnchor ≥ 200
        constraint.assert(view1, .width, .greaterThanOrEqual, constant: 200)
    }
    

    func testLessThanConstant() {
        let constraint = view1.widthAnchor ≤ 200
        constraint.assert(view1, .width, .lessThanOrEqual, constant: 200)
    }




    func testEqualityWithOffsetAndMultiplier() {
        let constraint = view1.widthAnchor .= (relatedView.widthAnchor + 10) / 2.0
        constraint.assert(view1, .width, .equal, relatedView, .width, constant: 10.0, multiplier: 0.5)
    }
    

    func testEqualityWithPriorityConstant() {
        let constraint = view1.widthAnchor .= relatedView.widthAnchor ~ .low
        constraint.assert(view1, .width, .equal, relatedView, .width, priority: .low)
    }
    

    
    func testEqualityWithPriorityLiteral() {
        let constraint = view1.widthAnchor .= relatedView.widthAnchor ~ 750
        constraint.assert(view1, .width, .equal, relatedView, .width, priority: 750)
    }
    

    func testEqualityWithPriorityConstantMath() {
        let constraint = view1.widthAnchor .= relatedView.widthAnchor ~ .high - 1
        constraint.assert(view1, .width, .equal, relatedView, .width, priority: LayoutPriority(rawValue: 749))
    }
    

    
    func testEqualityWithPriorityLiteralMath() {
        let constraint = view1.widthAnchor .= relatedView.widthAnchor ~ LayoutPriority(rawValue: 750 - 1)
        constraint.assert(view1, .width, .equal, relatedView, .width, priority: LayoutPriority(rawValue: 749))
    }
    

    
    func testEqualityWithOffsetAndPriorityMath() {
        let constraint = view1.widthAnchor .= relatedView.widthAnchor + 10 ~ .high - 1.0
        constraint.assert(view1, .width, .equal, relatedView, .width, constant: 10, priority: 749)
    }
    

    
    func testEqualityWithOffsetAndMultiplierAndPriorityMath() {
        let constraint = view1.widthAnchor .= (relatedView.widthAnchor + 10) / 2.0 ~ .high - 1
        constraint.assert(view1, .width, .equal, relatedView, .width, constant: 10, multiplier: 0.5, priority: 749)
    }
    


    func testXAxisAnchorEqualityWithOffsetAndMultiplier() {
        let constraint = view1.trailingAnchor .= (relatedView.centerXAnchor + 10) / 2.0
        constraint.assert(view1, .trailing, .equal, relatedView, .centerX, constant: 10.0, multiplier: 0.5)
    }



    func testXYAxesAnchors() {
//        let constraints = viewArray.centerAnchors.equal(to: viewArray.centerAnchors.plus(10))        
        let constraints = view1.centerAnchors .= relatedView.centerAnchors
        constraints.first.assert(view1, .centerX, .equal, relatedView, .centerX)
        constraints.second.assert(view1, .centerY, .equal, relatedView, .centerY)

    }
    func testArrayXYAxesAnchors() {
        let constraints = viewArray.centerAnchors .= relatedView.centerAnchors
        constraints.map {$0.first}.assert(viewArray, .centerX, .equal, relatedView, .centerX)
        constraints.map {$0.second}.assert(viewArray, .centerY, .equal, relatedView, .centerY)
    }
    
    func testXYAxesAnchorsWithOffsetAndPriority() {
        let constraints = view1.centerAnchors .= relatedView.centerAnchors + 10 ~ .high - 1
        constraints.first.assert(view1, .centerX, .equal, relatedView, .centerX, constant: 10, priority: 749)
        constraints.second.assert(view1, .centerY, .equal, relatedView, .centerY, constant: 10, priority: 749)
    }
    
    func testArrayXYAxesAnchorsWithOffsetAndPriority() {
        let constraints = viewArray.centerAnchors .= relatedView.centerAnchors + 10 ~ .high - 1
        constraints.map {$0.first}.assert(viewArray, .centerX, .equal, relatedView, .centerX, constant: 10, priority: 749)
        constraints.map {$0.second}.assert(viewArray, .centerY, .equal, relatedView, .centerY, constant: 10, priority: 749)
        
    }
    
    func testHorizontalAnchors() {
        let constraints = view1.horizontalEdgeAnchors .= relatedView.horizontalEdgeAnchors + 10 ~ .high - 1
        constraints.first.assert(view1, .leading, .equal, relatedView, .leading, constant: 10, priority: 749)
        constraints.second.assert(view1, .trailing, .equal, relatedView, .trailing, constant: -10, priority: 749)
    }
    
    func testArrayHorizontalAnchors() {
        let constraints = viewArray.horizontalAnchors .= relatedView.horizontalEdgeAnchors + 10 ~ .high - 1
        constraints.map {$0.first}.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 10, priority: 749)
        constraints.map {$0.second}.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: -10, priority: 749)
    }
    
    func testVerticalAnchors() {
        let constraints = view1.verticalEdgeAnchors .= relatedView.verticalEdgeAnchors + 10 ~ .high - 1
        constraints.first.assert(view1, .top, .equal, relatedView, .top, constant: 10, priority: 749)
        constraints.second.assert(view1, .bottom, .equal, relatedView, .bottom, constant: -10, priority: 749)
    }
    
    func testArrayVerticalAnchors() {
        let constraints = viewArray.verticalAnchors .= relatedView.verticalEdgeAnchors + 10 ~ .high - 1
        constraints.map {$0.first}.assert(viewArray, .top, .equal, relatedView, .top, constant: 10, priority: 749)
        constraints.map {$0.second}.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: -10, priority: 749)
    }
    
    func testSizeAnchors() {
        let constraints = view1.sizeAnchors .= relatedView.sizeAnchors + 10 ~ .high - 1
        constraints.first.assert(view1, .width, .equal, relatedView, .width, constant: 10, priority: 749)
        constraints.second.assert(view1, .height, .equal, relatedView, .height, constant: 10, priority: 749)
    }
    
    func testArraySizeAnchors() {
        let constraints = viewArray.sizeAnchors .= relatedView.sizeAnchors + 10 ~ .high - 1
        constraints.map {$0.first}.assert(viewArray, .width, .equal, relatedView, .width, constant: 10, priority: 749)
        constraints.map {$0.second}.assert(viewArray, .height, .equal, relatedView, .height, constant: 10, priority: 749)
    }
    
    func testSizeAnchorsWithConstants() {
        let constraints = view1.sizeAnchors .= CGSize(width: 50, height: 100) ~ .high - 1
        constraints.first.assert(view1, .width, .equal, constant: 50, priority: 749)
        constraints.second.assert(view1, .height, .equal, constant: 100, priority: 749)
    }
    
    func testArraySizeAnchorsWithConstants() {
        let constraints = viewArray.sizeAnchors .= CGSize(width: 50, height: 100) ~ .high - 1
        constraints.map {$0.first}.assert(viewArray, .width, .equal, constant: 50, priority: 749)
        constraints.map {$0.second}.assert(viewArray, .height, .equal, constant: 100, priority: 749)
    }
    
    func testEdgeAnchors() {
        let constraints = view1.edgeAnchors .= relatedView.edgeAnchors + 10 ~ .high - 1
        constraints.top.assert(view1, .top, .equal, relatedView, .top, constant: 10, priority: 749)
        constraints.leading.assert(view1, .leading, .equal, relatedView, .leading, constant: 10, priority: 749)
        constraints.bottom.assert(view1, .bottom, .equal, relatedView, .bottom, constant: -10, priority: 749)
        constraints.trailing.assert(view1, .trailing, .equal, relatedView, .trailing, constant: -10, priority: 749)
        print("\(constraints.all.heirarchy)")
    }

    func testArrayEdgeAnchors() {
        let constraints = viewArray.edgeAnchors .= relatedView.edgeAnchors + 10 ~ .high - 1
        constraints.map {$0.top}.assert(viewArray, .top, .equal, relatedView, .top, constant: 10, priority: 749)
        constraints.map {$0.leading}.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 10, priority: 749)
        constraints.map {$0.bottom}.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: -10, priority: 749)
        constraints.map {$0.trailing}.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: -10, priority: 749)
    }
    
    func testEdgeAnchorsWithInsets() {
        let insets = UIEdgeInsets(top: 10, left: 5, bottom: 15, right: 20)
        
        let constraints = view1.edgeAnchors .= relatedView.edgeAnchors + insets ~ .high - 1
        constraints.top.assert(view1, .top, .equal, relatedView, .top, constant: 10, priority: 749)
        constraints.leading.assert(view1, .leading, .equal, relatedView, .leading, constant: 5, priority: 749)
        constraints.bottom.assert(view1, .bottom, .equal, relatedView, .bottom, constant: -15, priority: 749)
        constraints.trailing.assert(view1, .trailing, .equal, relatedView, .trailing, constant: -20, priority: 749)
    }

    func testArrayEdgeAnchorsWithInsets() {
        let insets = UIEdgeInsets(top: 10, left: 5, bottom: 15, right: 20)

        let constraints = viewArray.edgeAnchors .= relatedView.edgeAnchors + insets ~ .high - 1
        constraints.map {$0.top}.assert(viewArray, .top, .equal, relatedView, .top, constant: 10, priority: 749)
        constraints.map {$0.leading}.assert(viewArray, .leading, .equal, relatedView, .leading, constant: 5, priority: 749)
        constraints.map {$0.bottom}.assert(viewArray, .bottom, .equal, relatedView, .bottom, constant: -15, priority: 749)
        constraints.map {$0.trailing}.assert(viewArray, .trailing, .equal, relatedView, .trailing, constant: -20, priority: 749)
    }

// sourcery:inline:auto:SharedTests.TemplateName
// sourcery:end
}
