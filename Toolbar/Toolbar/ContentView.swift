//
//  ContentView.swift
//  Toolbar
//
//  Created by Volodymyr Myroniuk on 16.02.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            VStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                Text("Hello, world!")
            }
            .padding()
            .toolbar {
                ToolbarItemGroup(placement: .bottomBar) {
                    Image(systemName: "person")
                    HStack {
                        Image(systemName: "ellipsis")
                        Divider()
                        Image(systemName: "trash")
                            .background(Color.teal)
                            .frame(width: 32, height: 32)
                            .mask(Circle())
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
