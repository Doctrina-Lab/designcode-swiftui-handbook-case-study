//
//  ContentView.swift
//  Shared
//
//  Created by Stephanie Diep on 2021-05-13.
//

import SwiftUI

struct ContentView: View {
    @State private var shouldBeRed: Bool = true
    @State private var shouldAddShadow: Bool = true
    
    var body: some View {
        VStack(spacing: 20) {
            // If else statement method
            if shouldBeRed {
                Text("Hello, world!")
                    .foregroundColor(.red)
            } else {
                Text("Hello, world!")
                    .foregroundColor(.blue)
            }
            
            // Ternary operator method
            Text("Hello, world!")
                .foregroundColor(shouldBeRed ? .red : .blue)
            
            // If modifier by using the View extension below
            Text("Hello, world!")
                .if(shouldAddShadow) { view in
                    view.shadow(color: .black, radius: 10, x: 0.0, y: 0.0)
                }
        }
    }
}

extension View {
    @ViewBuilder func `if`<Content: View>(_ condition: Bool, transform: (Self) -> Content) -> some View {
        if condition {
            transform(self)
        } else {
            self
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
