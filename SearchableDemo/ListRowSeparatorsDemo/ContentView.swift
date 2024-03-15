//
//  ContentView.swift
//  ListRowSeparatorsDemo
//
//  Created by Stephanie Diep on 2021-08-25.
//

import SwiftUI

struct ContentView: View {
    @State private var text = ""
    @State private var updatedAuthors: [Author] = []
    
    var body: some View {
        NavigationView {
            List(text == "" ? authors : updatedAuthors) {
                Text($0.name)
            }
        }
        .searchable(text: $text)
        .onChange(of: text) { searchValue in
            updatedAuthors = authors.filter { $0.name.contains(searchValue)}
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
