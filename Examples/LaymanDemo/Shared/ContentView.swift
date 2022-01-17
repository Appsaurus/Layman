//
//  ContentView.swift
//  Shared
//
//  Created by Brian Strobach on 1/14/22.
//

import SwiftUI
import Layman

struct ContentView: SwiftUI.View {
    var body: some SwiftUI.View {
        Text(SwiftPackageClass().text)
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some SwiftUI.View {
        ContentView()
    }
}
