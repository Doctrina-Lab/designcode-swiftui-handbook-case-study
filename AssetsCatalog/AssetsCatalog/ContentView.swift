//
//  ContentView.swift
//  AssetsCatalog
//
//  Created by Meng To on 2021-01-25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Image("Illustration")
            Image(systemName: "xmark")
                .padding(8)
                .background(Circle().stroke(Color.black, lineWidth: 1))
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topTrailing)
                .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
