// UILayoutKit iOS Playground

import UIKit
import UILayoutKit
import XCTest

var str = "Hello, playground"

let parent = UIView()
let view1 = UIView()
let view2 = UIView()

parent.addSubviews(view1, view2)
var constraint = view1.widthAnchor == view2.widthAnchor
XCTAssertEqual(constraint.firstItem as? UIView, view1)
XCTAssertEqual(constraint.secondItem as? UIView, view2)
XCTAssertEqual(constraint.priority, .required)

constraint = view1.heightAnchor == view2.heightAnchor
XCTAssertEqual(constraint.firstAnchor, view1.heightAnchor)
XCTAssertEqual(constraint.secondAnchor, view2.heightAnchor)
XCTAssertEqual(constraint.constant, 0)

constraint = view1.heightAnchor == view2.heightAnchor + 200
XCTAssertEqual(constraint.firstAnchor, view1.heightAnchor)
XCTAssertEqual(constraint.secondAnchor, view2.heightAnchor)
XCTAssertEqual(constraint.constant, 200)

constraint = view1.heightAnchor == view2.heightAnchor ~ .defaultLow

XCTAssertEqual(constraint.priority, .defaultLow)

constraint = view1.heightAnchor == view2.heightAnchor + 300 ~ .defaultHigh

XCTAssertEqual(constraint.constant, 300)

XCTAssertEqual(constraint.priority, .defaultHigh)
print(view1.constraints.count)
print("SUCCESS")
