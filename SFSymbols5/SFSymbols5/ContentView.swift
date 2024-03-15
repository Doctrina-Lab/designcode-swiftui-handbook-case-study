//
//  ContentView.swift
//  SFSymbols5
//
//  Created by Meng To on 8/28/23.
//

import SwiftUI

struct ContentView: View {
    @State var isTapped = false
    
    var body: some View {
        HStack(spacing: 30) {
            Image(systemName: "ellipsis")
                .symbolEffect(.pulse)
            Image(systemName: "wand.and.rays")
                .symbolEffect(.variableColor.iterative.reversing, options: .speed(3))
            Image(systemName: isTapped ? "pause.fill" : "play.fill")
                .contentTransition(.symbolEffect(.replace))
            Image(systemName: "bell")
                .symbolEffect(.bounce, options: .speed(2).repeat(2), value: isTapped)
            Image(systemName: "magnifyingglass")
                .symbolEffect(.scale.up, isActive: isTapped)
        }
        .font(.largeTitle)
        .onTapGesture {
            isTapped.toggle()
        }
        .foregroundStyle(.primary, .blue)
    }
}

#Preview {
    ContentView()
}
