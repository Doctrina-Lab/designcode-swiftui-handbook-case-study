//
//  ContentView.swift
//  Sidebar
//
//  Created by Volodymyr Myroniuk on 14.02.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            List {
                NavigationLink(value: "Courses") {
                    Label("Courses", systemImage: "book")
                }
                NavigationLink(value: "Tutorials") {
                    Label("Tutorials", systemImage: "square")
                }
            }
            .navigationTitle("Learn")
            .navigationDestination(for: String.self) { value in
                if value == "Courses" { HomeView() }
                if value == "Tutorials" { TutorialsView() }
            }
        }
    }
}

#Preview {
    ContentView()
}
