// Layman iOS Playground

import UIKit
import Layman
import XCTest

var str = "Hello, playground"

let parent = UIView().labeled("parent")

let view1 = UIView().labeled("view1")

let view2 = UIView()
let view3 = UIView()
let view4 = UIView()

parent.addSubview(view1)
let constraint = view1 .= 50% ~~ "SizeConstaint"

print(constraint.first)
print(constraint.second)

let con = view2.greaterThanOrEqual(to: 10%)
con.first.labeled("conman")
print(con.first)
print(con.second)

let guideCon = parent.margins.top.equal(to: view1.margins.bottom)
(guideCon.secondItem as? UILayoutGuide)?.owningView
print("\(guideCon.firstItem)")
