////
////  LayoutAnchorPair+Variable.swift
////  UILayoutKit
////
////  Created by Brian Strobach on 1/20/19.
////  Copyright © 2019 Brian Strobach. All rights reserved.
////
//
//public class LayoutAnchorPair<F: AnchorType, S: AnchorType>: MixedLayoutModelReferencePair<LayoutAnchor<F>, LayoutAnchor<S>>, Variable {
//
//    // MARK: Variable
//    public typealias E = LayoutPairExpression<F, S>
//
//    public func plus(_ constant: LayoutConstant) -> E {
//        return E(anchor: self, configuration: LayoutPairConfiguration(.constant(constant)))
//    }
//
//    public func times(_ multiplier: LayoutMultiplier) -> E {
//        return E(anchor: self, configuration: LayoutPairConfiguration(.multiplier(multiplier)))
//    }
//}
