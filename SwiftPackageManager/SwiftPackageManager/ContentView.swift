//
//  ContentView.swift
//  SwiftPackageManager
//
//  Created by Meng To on 2021-02-09.
//

import SwiftUI
import SwiftUIX

struct ContentView: View {
    var body: some View {
        ZStack {
            Text("Hello, world!")
                .font(.largeTitle).bold()
            VisualEffectBlurView(blurStyle: .systemUltraThinMaterial)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
