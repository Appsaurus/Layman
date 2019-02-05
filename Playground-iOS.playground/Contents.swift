// UILayoutKit iOS Playground

import UIKit
import UILayoutKit
import XCTest

var str = "Hello, playground"

let parent = UIView()
parent.tag = 0

let view1 = UIView()
parent.tag = 1
let view2 = UIView()
let view3 = UIView()
let view4 = UIView()

parent.addSubview(view1)
let constraint = view1 .= CGFloat(50)%

let con = view1.edges .= 0.5
print("cont: \(con.all)")
