//
//  ContentView.swift
//  Shared
//
//  Created by Stephanie Diep on 2021-02-17.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("themePreference") var themePreference: String = "dark"
    
    var body: some View {
        VStack {
            Text("Your theme preference is: \(themePreference).")
                .padding()
            
            Button("Toggle theme preference") {
                if themePreference == "dark" {
                    themePreference = "light"
                } else {
                    themePreference = "dark"
                }
            }
        }
      
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
