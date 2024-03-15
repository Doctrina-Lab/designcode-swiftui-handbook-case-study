//
//  ContentView.swift
//  AttributeContainerDemo
//
//  Created by Stephanie Diep on 2021-08-20.
//

import SwiftUI

struct ContentView: View {
    var attributedString: AttributedString {
        var name = AttributedString("Stephanie")
        
        var container = AttributeContainer()
        
        container.foregroundColor = .blue
        container.underlineStyle = .single
        container.underlineColor = .blue
        name.mergeAttributes(container)
        
        return "Hello, " + name
    }
    
    var body: some View {
        Text(attributedString)
            .bold()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
