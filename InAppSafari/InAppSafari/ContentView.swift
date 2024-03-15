//
//  ContentView.swift
//  InAppSafari
//
//  Created by Stephanie Diep on 2021-06-11.
//

import SwiftUI

struct ContentView: View {
    @State private var showSafari: Bool = false
    
    var body: some View {
        Text("Open Design+Code in Safari")
            .foregroundColor(.blue)
            .padding()
            .onTapGesture {
                    showSafari.toggle()
            }
            .fullScreenCover(isPresented: $showSafari, content: {
                    SFSafariViewWrapper(url: URL(string: "https://www.designcode.io")!)
            })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
