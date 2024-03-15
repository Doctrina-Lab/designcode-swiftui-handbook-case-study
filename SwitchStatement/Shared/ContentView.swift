//
//  ContentView.swift
//  Shared
//
//  Created by Stephanie Diep on 2020-12-24.
//

import SwiftUI

struct ContentView: View {
    var language: String = "French"
    
    var body: some View {
        switch language {
        case "French":
            Text("Bonjour!")
        case "Spanish":
            Text("Hola!")
        case "Chinese":
            Text("你好!")
        default:
            Text("Hello!")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
