//
//  LaymanDemoApp.swift
//  LaymanDemo (WatchOS) WatchKit Extension
//
//  Created by Brian Strobach on 1/14/22.
//

import SwiftUI

@main
struct LaymanDemoApp: App {
    @SceneBuilder var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
            }
        }

        WKNotificationScene(controller: NotificationController.self, category: "myCategory")
    }
}
