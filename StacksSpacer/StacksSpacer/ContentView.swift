//
//  ContentView.swift
//  StacksSpacer
//
//  Created by Meng To on 2021-01-21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack(alignment: .topLeading) {
            Rectangle()
                .foregroundColor(.blue)
            Text("Hello, world!")
                .font(.title)
            Spacer()
            Text("Second line")
        }
        .padding()
        .frame(width: 320)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
