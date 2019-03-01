# Layman

[![CI Status](https://img.shields.io/circleci/project/github/Strobocop/Layman.svg)](https://circleci.com/gh/Strobocop/Layman)
[![Version](https://img.shields.io/cocoapods/v/Layman.svg?style=flat)](http://cocoadocs.org/docsets/Layman)
[![Carthage Compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)
[![License](https://img.shields.io/cocoapods/l/Layman.svg?style=flat)](http://cocoadocs.org/docsets/Layman)
[![Platform](https://img.shields.io/cocoapods/p/Layman.svg?style=flat)](http://cocoadocs.org/docsets/Layman)
![Swift](https://img.shields.io/badge/%20in-swift%204.0-orange.svg)

## Description

**Layman** description.

## **Installation**

**Layman** is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'Layman', :git => 'https://github.com/Appsaurus/Layman'
```

**Layman** is also available through [Carthage](https://github.com/Carthage/Carthage).
To install just write into your Cartfile:

```ruby
github "Appsaurus/Layman"
```

**Layman** can also be installed manually. Just download and drop `Sources` folders in your project.

## Usage

### Size

Layman gives you several options to constrain the size of view.

You can individually constrain the height or width of a view.

```swift
view1.height.equal(to: 100)
view1.width.equal(to: 50)

// Operator API equivalent:
view1.height .= 100
view1.width .=  50
```

Set both dimensions at once.

```swift
view2.size.equal(to: 100)
view3.size.equal(to: (25, 100))

// Operator API equivalent:
view2.size .= 100
view3.size .= (25, 100)
```

Or constraint a view relative to another view.

```swift
view4.height.equal(to: view1.width)
view4.width.equal(to: view1.height)
view5.size.equal(to: view1.size)

// Operator API equivalent:
view4.height .= view1.width
view4.width .= view1.height
view5.size .= view1.size
```

### Positioning

Views are typically positioned relative to one another.

```swift
view1.top.equal(to: container.top)
view2.leading.equal(to: container.leading)
view3.trailing.equal(to: container.trailing)
view4.bottom.equal(to: container.bottom)
[view1, view4].centerX.equal(to: container.centerX)
[view2, view3].centerY.equal(to: container.centerY)

// Operator API equivalent:
view1.top .= container.top
view2.leading .= container.leading
view3.trailing .= container.trailing
view4.bottom .= container.bottom
[view1, view4].centerX .= container.centerX
[view2, view3].centerY .= container.centerY
```

Both the X and Y axis can be constrained at once by constraining a view's corner or center.

```swift
view1.topLeading.equal(to: container.topLeading)
view2.topTrailing.equal(to: container.topTrailing)
view3.bottomLeading.equal(to: container.bottomLeading)
view4.bottomTrailing.equal(to: container.bottomTrailing)

// Operator API equivalent:
view1.topLeading .= container.topLeading
view2.topTrailing .= container.topTrailing
view3.bottomLeading .= container.bottomLeading
view4.bottomTrailing .= container.bottomTrailing
```

You can specifically constrain the leading and trailing edges.

```swift
view1.horizontalEdges.equal(to: container.horizontalEdges)
// Operator API equivalent:
view1.horizontalEdges .= container.horizontalEdges
```

Top and bottom edges.

```swift
view1.verticalEdges.equal(to: container.verticalEdges)
// Operator API equivalent:
view1.verticalEdges .= container.verticalEdges
```

You can constrain all edges at once, or exclude a single edge.

```swift
view1.edges.equal(to: container.edges)
view2.edges.equal(to: view1.edgesExcluding(.trailing))
view3.edges.equal(to: view1.edgesExcluding(.leading))
// Operator API equivalent:
view1.edges .= container.edges
view2.edges .= view1.edgesExcluding(.trailing)
view3.edges .= view1.edgesExcluding(.leading)
```

### Coefficients and Constants

You can modify constraints with a variety of coefficeints and constant types. Add or subtract consants or tuples. For constraint multipliers, you can multiply attributes by a constant, a percentage using the  `%` postfix operator, or divide. All will convert to the expected multipler under the hood.

```swift
view1.size.equal(to: 100)
view2.size.equal(to: view1.size.plus((15, 30)))
view3.size.equal(to: view1.size.minus(50))
view4.size.equal(to: view1.size.times(1.25))
view5.size.equal(to: view1.size.times(50%))
view6.size.equal(to: view1.size.divided(by: 2))

// Operator API equivalent:
view1.size .= 100
view2.size .= view1.size .+ (15, 30)
view3.size .= view1.size .- 50
view4.size .= view1.size .* 1.25
view5.size .= view1.size .* 50%
view6.size .= view1.size ./ 2
```

### Inset and Offset Constants

While all attributes support the above coefficients and constants, it is often easier to think in terms of insets and offets — especially when creating compound edge constraints. When using insets and offset constants, Layman will automatically take into consideration the two attributes of the constraint, and when appropriate, flip the sign of the constant's value.

```swift
view1.edges.equal(to: container.edges.inset(25))
view3.edges.equal(to: view2.edges.outset(50))
view4.topLeading.equal(to: view1.topLeading.inset(25))
view5.topTrailing.equal(to: view1.topTrailing.inset(25))
view6.bottomLeading.equal(to: view1.bottomLeading.inset(25))
view7.bottomTrailing.equal(to: view1.bottomTrailing.inset(25))

// Operator API equivalent:
view1.edges .= container.edges .+ .inset(25)
view3.edges .= view2.edges .+ .outset(50)
view4.topLeading .= view1.topLeading .+ .inset(25)
view5.topTrailing .= view1.topTrailing .+ .inset(25)
view6.bottomLeading .= view1.bottomLeading .+ .inset(25)
view7.bottomTrailing .= view1.bottomTrailing .+ .inset(25)
```

### Inset and Offset Relationships

For inequality relationships, It is also sometimes easier to think about the *relationship* itself in terms of insets or outsets. For this, Layman introduces two new types of relationships: `insetOrEqual` and `outsetOrEqual`. These relationships adjust the underlying constraint the same way as inset and offset constants, but instead of flipping the contant's sign, they inverse the relationship of the inequality. For example, the following:

```swift
view1.edges.insetOrEqual(to: container.edges)
```

Is equivalent to:

```swift
view1.leading.greaterThanOrEqual(to: container.leading)
view1.top.greaterThanOrEqual(to: container.top)
view1.trailing.lessThanOrEqual(to: container.trailing)
view1.bottom.lessThanOrEqual(to: container.bottom)
```

### Priority

Setting a constraints priority is simple. You can assign constants directly, and even perform arithmetic on the priority.

```swift
view1.size.equal(to: 100).priority(.high)
view3.size.equal(to: 100).priority(10)
view2.size.equal(to: 100).priority(LayoutPriority.low.plus(1))

// Operator API equivalent:
view1.size .= 100 ~ .high
view2.size .= 100 ~ 10
view2.size .= 100 ~ .low .+ 1
```

### Multiple views

Layman supports constraining multiple views at once. You can use collections on either side of the equation. Contrain several views to one view, one view to several views, or setup constraints between two groups of views.

```swift
view1.size.greaterThanOrEqual(to: [view2, view3].size)
[view4, view5].size.equal(to: view1.size)
[view6, view7].size.lessThanOrEqual(to: [view2, view3].size)

// Operator API equivalent:
view1.size ≥ [view2, view3].size
[view4, view5].size .= view1.size
[view6, view7].size ≤ [view2, view3].size
```

### Aspect Ratio

When contraining views that contain media, you will often want to restrict a views size to a certain aspect ratio. Layman introduces an aspect ratio anchor that makes it super simple to do so. Under the hood, aspect ratio contraints are simply constraining a view's height to its width times a multiplier. Because of this it is required that you horizontally constrain the view first to avoid ambiguity. Layman will warn you at runtime if you haven't done this.

## Contributing

We would love you to contribute to **Layman**, check the [CONTRIBUTING](github.com/Appsaurus/Layman/blob/master/CONTRIBUTING.md) file for more info.

## License

**Layman** is available under the MIT license. See the [LICENSE](github.com/Appsaurus/Layman/blob/master/LICENSE.md) file for more info.

