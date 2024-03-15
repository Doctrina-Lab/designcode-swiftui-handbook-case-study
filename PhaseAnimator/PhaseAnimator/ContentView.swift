//
//  ContentView.swift
//  PhaseAnimator
//
//  Created by Meng To on 9/6/23.
//

import SwiftUI

struct ContentView: View {
    @State var isTapped = false
    
    var body: some View {
        Image(systemName: "globe")
            .font(.largeTitle)
            .phaseAnimator([1, 2, 3], trigger: isTapped) { content, phase in
                content
                    .scaleEffect(phase)
                    .blur(radius: phase == 2 ? 20 : 0)
            } animation: { phase in
                switch phase {
                case 1: .bouncy
                case 2: .smooth
                case 3: .easeOut(duration: 3)
                default: .easeInOut
                }
            }
            .onTapGesture {
                isTapped.toggle()
            }
    }
}

#Preview {
    ContentView()
}
