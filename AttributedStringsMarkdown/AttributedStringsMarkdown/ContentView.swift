//
//  ContentView.swift
//  AttributedStringsMarkdown
//
//  Created by Stephanie Diep on 2021-08-20.
//

import SwiftUI

struct ContentView: View {
    let markdown = "Visit [Design Code](https://designcode.io) to learn how to `code` and _design_."
    @State private var myString: AttributedString = ""
    
    var body: some View {
        Text(myString)
            .padding()
            .onAppear {
                do {
                    myString = try AttributedString(markdown: markdown)
                } catch {
                    print("Error creating AttributedString:  \(error)")
                }
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

