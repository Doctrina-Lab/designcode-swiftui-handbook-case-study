//
//  ContentView.swift
//  NavigationView
//
//  Created by Meng To on 2021-02-03.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                NavigationLink(destination: Text("New View")) {
                    RoundedRectangle(cornerRadius: 30)
                        .frame(height: 1000)
                        .padding()
                }
            }
            .navigationTitle("Today")
            .navigationBarItems(trailing: Image(systemName: "person.crop.circle"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
