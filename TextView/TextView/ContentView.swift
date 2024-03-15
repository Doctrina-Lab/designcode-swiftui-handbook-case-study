//
//  ContentView.swift
//  TextView
//
//  Created by Meng To on 2021-01-23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Get the details, frameworks, and tools you need to use system fonts for Apple platforms in your apps. These typefaces offer the control and flexibility to optimally display text at a variety of sizes, in many different languages, across multiple interfaces.")
            .font(.system(size: 28, weight: .bold))
            .foregroundColor(.blue)
            .frame(width: 300, alignment: .leading)
            .multilineTextAlignment(.center)
            .lineLimit(3)
            .lineSpacing(10.0)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
