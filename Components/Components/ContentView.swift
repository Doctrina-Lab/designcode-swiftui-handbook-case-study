//
//  ContentView.swift
//  Components
//
//  Created by Meng To on 2021-02-09.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Apple Design Resources")
                .font(.largeTitle).bold()
                .frame(maxWidth: .infinity, alignment: .leading)
            Text("Design apps quickly and accurately by using Sketch, Photoshop, and XD templates, guides, and other resources.")
            LargeButton(text: "Download")
            
            Spacer()
        }
        .padding(20)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
