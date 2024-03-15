//
//  ContentView.swift
//  DragGesture
//
//  Created by Meng To on 2021-02-02.
//

import SwiftUI

struct ContentView: View {
    @State var viewState = CGSize.zero
    
    var body: some View {
        RoundedRectangle(cornerRadius: 30)
            .fill(Color(#colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1)))
            .frame(width: 300, height: 400)
            .offset(x: viewState.width, y: viewState.height)
            .animation(.spring(response: 0.4, dampingFraction: 0.6))
            .gesture(
                DragGesture().onChanged { value in
                    viewState = value.translation
                }
                .onEnded { value in
                    viewState = .zero
                }
            )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
