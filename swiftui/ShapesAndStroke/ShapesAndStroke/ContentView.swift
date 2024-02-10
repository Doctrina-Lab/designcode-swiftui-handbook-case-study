//
//  ContentView.swift
//  ShapesAndStroke
//
//  Created by Volodymyr Myroniuk on 09.02.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color.blue)
                .ignoresSafeArea()
            
            VStack {
                Circle()
                    .stroke(lineWidth: 2)
                    .frame(width: 44, height: 44)
                Text("Vova Myroniuk")
                    .bold()
                Capsule()
                    .foregroundStyle(Color.green)
                    .frame(height: 44)
                    .overlay(Text("Sign up"))
            }
            .padding()
            .background(Color.white)
            .clipShape(RoundedRectangle(cornerRadius: 25.0, style: .continuous))
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
