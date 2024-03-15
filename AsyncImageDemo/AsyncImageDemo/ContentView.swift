//
//  ContentView.swift
//  AsyncImageDemo
//
//  Created by Stephanie Diep on 2021-08-20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        AsyncImage(url: URL(string: "https://images.ctfassets.net/ooa29xqb8tix/J6KiaOqQyBtSa84hx6fuI/2cd1d475743a2a42c8643b2a69e88547/Advanced_React_Hooks_800x600_cover.png?w=400&q=50")!) { image in
            image
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(maxWidth: 220, alignment: .center)
        } placeholder: {
            ProgressView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
