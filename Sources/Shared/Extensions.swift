//
//  Extensions.swift
//  UILayoutKit
//
//  Created by Brian Strobach on 12/10/18.
//  Copyright © 2018 Brian Strobach. All rights reserved.
//

import Foundation

 extension Array {
    subscript (safe index: Int) -> Element? {
        return indices ~= index ? self[index] : nil
    }
    
    var lastIndex: Int{
        return count - 1
    }
}
