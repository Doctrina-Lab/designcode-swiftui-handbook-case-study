//
//  ContentView.swift
//  ListRowSeparatorsDemo
//
//  Created by Stephanie Diep on 2021-08-25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        List(authors) {
            Text($0.name)
                .listRowSeparatorTint(.cyan)
//                .listRowSeparator(.hidden) // Uncomment this line to hide row separators
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Author: Identifiable {
    var id = UUID()
    var name: String
}

var authors = [Author(name: "Meng To"), Author(name: "Stephanie Diep"), Author(name: "Willie Yam"), Author(name: "Sai Kambampati")]
