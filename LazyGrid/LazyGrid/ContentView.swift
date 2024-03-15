//
//  ContentView.swift
//  LazyGrid
//
//  Created by Meng To on 2021-02-02.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView {
            LazyVGrid(columns: Array(repeating: .init(.flexible(), spacing: 16), count: 4), spacing: 16) {
                ForEach(0 ..< 12) { item in
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color.blue)
                        .frame(height: 100)
                }
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
