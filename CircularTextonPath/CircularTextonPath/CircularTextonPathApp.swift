//
//  CircularTextonPathApp.swift
//  CircularTextonPath
//
//  Created by Meng To on 2022-12-02.
//

import SwiftUI

@main
struct CircularTextonPathApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(
                radius: 150,
                text: "Latitude 35.08587 E • Longitude 21.43673 W • Elevation 64M • Incline 12 •".uppercased()
            )
            .font(.system(size: 13, design: .monospaced)).bold()
        }
    }
}
