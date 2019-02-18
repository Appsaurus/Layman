//
//  EdgeAnchorGroup.swift
//  Layman
//
//  Created by Brian Strobach on 2/18/19.
//  Copyright © 2019 Brian Strobach. All rights reserved.
//

public class EdgeAnchorGroup: SidesTuple<XAxisAnchor, YAxisAnchor> {}

extension EdgeAnchorGroup: LayoutVariableTuple, CoefficientsEquatable {}
