//
//  ContentView.swift
//  CustomFonts
//
//  Created by Meng To on 2021-01-26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("San Francisco")
                .font(.largeTitle).bold()
            Text("Open Sans")
                .font(.custom("OpenSans-Bold", size: 34))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
