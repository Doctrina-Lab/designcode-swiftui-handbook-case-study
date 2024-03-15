//
//  ContentView.swift
//  ColorPicker
//
//  Created by Meng To on 2021-02-04.
//

import SwiftUI

struct ContentView: View {
    @State var color = Color.blue
    @State var color2 = Color.purple
    
    var body: some View {
        VStack {
            ColorPicker("Color 1", selection: $color)
            ColorPicker("Color 2", selection: $color2, supportsOpacity: false)
            RoundedRectangle(cornerRadius: 30)
                .fill(LinearGradient(gradient: Gradient(colors: [color, color2]), startPoint: .topLeading, endPoint: .bottomTrailing))
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
