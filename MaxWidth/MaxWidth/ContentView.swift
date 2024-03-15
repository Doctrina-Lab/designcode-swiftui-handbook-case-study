//
//  ContentView.swift
//  MaxWidth
//
//  Created by Meng To on 2021-02-03.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Rectangle().fill(Color.blue)
        }
        .overlay(
            Image(systemName: "xmark")
                .frame(width: 32, height: 32)
                .background(Circle().stroke())
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topTrailing)
                .padding()
        )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
