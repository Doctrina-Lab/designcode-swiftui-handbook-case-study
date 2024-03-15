//
//  ContentView.swift
//  Link
//
//  Created by Meng To on 2021-02-04.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Link(destination: URL(string: "https://designcode.io")!) {
            Image(systemName: "link")
                .frame(width: 32, height: 32)
                .background(Color.blue)
                .mask(Circle())
                .foregroundColor(.white)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
