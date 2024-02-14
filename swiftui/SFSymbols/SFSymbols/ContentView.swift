//
//  ContentView.swift
//  SFSymbols
//
//  Created by Volodymyr Myroniuk on 10.02.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Image(systemName: "paperplane.circle.fill")
            .renderingMode(.original)
            .imageScale(.large)
            .font(.system(size: 40, weight: .bold))
    }
}

#Preview {
    ContentView()
}
