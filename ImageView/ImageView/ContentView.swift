//
//  ContentView.swift
//  ImageView
//
//  Created by Meng To on 2021-01-25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image("Illustration")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 200, height: 200, alignment: .center)
            Image("Illustration")
                .resizable(resizingMode: .tile)
                .aspectRatio(contentMode: .fit)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
