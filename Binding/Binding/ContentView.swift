//
//  ContentView.swift
//  Binding
//
//  Created by Meng To on 2021-02-01.
//

import SwiftUI

struct ContentView: View {
    @State var show = false
    
    var body: some View {
        ZStack {
            if !show {
                Text("View Transition")
                    .padding()
                    .background(Capsule().stroke())
                    .onTapGesture {
                        withAnimation(.spring()) {
                            show.toggle()
                        }
                    }
            } else {
                NewView(show: $show)
                    .transition(.move(edge: .trailing))
                    .zIndex(1)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
