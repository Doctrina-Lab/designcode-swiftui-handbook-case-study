//
//  SwiftDataTutorialApp.swift
//  SwiftDataTutorial
//
//  Created by Meng To on 9/15/23.
//

import SwiftUI

@main
struct SwiftDataTutorialApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: [Card.self, Color.self])
    }
}
