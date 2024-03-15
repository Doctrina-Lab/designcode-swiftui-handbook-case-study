//
//  ContentView.swift
//  DetectScreenSize
//
//  Created by Meng To on 2023-01-24.
//

import SwiftUI

struct ContentView: View {
    @State var screenSize: CGSize = .zero
    
    var body: some View {
        ZStack {
            // UI Screen
            VStack{}
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
                .background(.purple)
            
            // GeometryReader
            GeometryReader { proxy in
                VStack {}
                    .frame(width: proxy.size.width, height: proxy.size.height)
                    .background(.blue)
            }
            
            // PreferenceKey
            VStack {}
                .frame(width: screenSize.width, height: screenSize.height)
                .background(.pink)
        }
        .overlay(
            GeometryReader { proxy in
                Color.clear.preference(key: SizePreferenceKey.self, value: proxy.size)
            }
        )
        .onPreferenceChange(SizePreferenceKey.self) { value in
            screenSize = value
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct SizePreferenceKey: PreferenceKey {
    static var defaultValue: CGSize = .zero
    static func reduce(value: inout CGSize, nextValue: () -> CGSize) {
        value = nextValue()
    }
}
