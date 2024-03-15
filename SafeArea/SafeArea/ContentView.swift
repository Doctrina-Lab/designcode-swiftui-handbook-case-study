//
//  ContentView.swift
//  SafeArea
//
//  Created by Meng To on 2021-01-27.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.blue.ignoresSafeArea(.all, edges: .all)
            
            VStack {
                Text("SwiftUI for iOS 14")
            }
            .frame(width: 300, height: 200)
            .background(Color.white)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
