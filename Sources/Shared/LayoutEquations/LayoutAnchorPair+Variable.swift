//
//  LayoutAnchorPair+Variable.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 1/20/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

import UIKit

public class LayoutAnchorPair<F: AnchorType, S: AnchorType>: MixedLayoutModelReferencePair<LayoutAnchor<F>, LayoutAnchor<S>> {}

public typealias XAxisAnchorPairRelationship = LayoutPairRelationship<XAxisAnchor, XAxisAnchor>

public typealias YAxisAnchorPairRelationship = LayoutPairRelationship<YAxisAnchor, YAxisAnchor>

public typealias LayoutDimensionPairRelationship = LayoutPairRelationship<LayoutDimension, LayoutDimension>

public typealias XYAxesAnchorPairRelationship = LayoutPairRelationship<XAxisAnchor, YAxisAnchor>
