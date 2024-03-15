//
//  ContentView.swift
//  StatusBarSize
//
//  Created by Meng To on 2021-02-15.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        GeometryReader { geometry in
            VStack {
                Text("\(geometry.safeAreaInsets.top)")
                    .padding()
                Text("\(geometry.safeAreaInsets.bottom)")
                    .padding()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
