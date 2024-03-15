//
//  ContentView.swift
//  DarkMode
//
//  Created by Willie Yam on 2020-12-24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color("Background")
                .edgesIgnoringSafeArea(.all)
            
            Text("Hello, world!")
                .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
            
            ContentView()
                .environment(\.colorScheme, .dark)
        }
    }
}
