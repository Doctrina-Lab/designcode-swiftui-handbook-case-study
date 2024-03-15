//
//  ContentView.swift
//  ClipShape
//
//  Created by Meng To on 2021-01-26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.blue.ignoresSafeArea()
            
            VStack {
                Text("SwiftUI for iOS 14")
                    .bold()
            }
            .frame(width: 300, height: 200)
            .background(Color.white)
            .clipShape(RoundedRectangle(cornerRadius: 25.0, style: .continuous))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
