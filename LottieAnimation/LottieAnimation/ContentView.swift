//
//  ContentView.swift
//  LottieAnimation
//
//  Created by Meng To on 2021-02-05.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LottieView(name: "success", loopMode: .loop)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
