// UILayoutKit iOS Playground

import UIKit
import UILayoutKit
import XCTest

var str = "Hello, playground"

let parent = UIView()
let view1 = UIView()
let view2 = UIView()

parent.addSubviews(view1, view2)
//var constraints = view1 == view2[.top, .bottom, .left, .right]

var constraints = view1.edgeAnchors == view2.edgeAnchors

var constraint = constraints.top
XCTAssertEqual(constraint.firstItem as? UIView, view1)
XCTAssertEqual(constraint.secondItem as? UIView, view2)
XCTAssertEqual(constraint.priority, .required)
XCTAssertEqual(constraint.firstAnchor, view1.topAnchor)
XCTAssertEqual(constraint.secondAnchor, view2.topAnchor)

constraint = constraints.bottom
XCTAssertEqual(constraint.firstAnchor, view1.bottomAnchor)
XCTAssertEqual(constraint.secondAnchor, view2.bottomAnchor)
XCTAssertEqual(constraint.constant, 0)

constraint = constraints.leading
XCTAssertEqual(constraint.firstAnchor, view1.leadingAnchor)
XCTAssertEqual(constraint.secondAnchor, view2.leadingAnchor)
XCTAssertEqual(constraint.constant, 0)

let widthAnchor = view1.widthAnchor
print("SUCCESS")
