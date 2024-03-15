//
//  ContentView.swift
//  ColorLiteral
//
//  Created by Meng To on 2021-01-27.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Color literal")
                .font(.title).bold()
                .foregroundColor(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)))
        }
        .frame(width: 300, height: 200)
        .background(Image(uiImage: #imageLiteral(resourceName: "gradienta-LeG68PrXA6Y-unsplash")).resizable().aspectRatio(contentMode: .fill))
        .cornerRadius(20)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
