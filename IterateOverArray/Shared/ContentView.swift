//
//  ContentView.swift
//  Shared
//
//  Created by Stephanie Diep on 2020-12-24.
//

import SwiftUI

struct ContentView: View {
    var authors = ["Meng To", "Daniel Nisttahuz", "Mica Andreea", "Surya Anand"]
    
    var body: some View {
        // Iterating over an array in a View
        VStack {
            ForEach(authors.indices, id: \.self) { index in
                Text(authors[index])
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            }
        }
    }
    
    
//    Iterating over array in a function
//    Using forEach
    func iterateOverAuthorsForEach() {
        authors.forEach { author in
            print("author", author)
        }
    }
    
//  Using for...in
    func iterateOverAuthorsForIn() -> String? {
        for author in authors {
            return author
        }
        
        // If you need the index
        for (index, author) in authors.enumerated() {
            return "\(index + 1) - \(author)"
        }
        
        return nil
    }
        
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
