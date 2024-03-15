//
//  ContentView.swift
//  StaticData
//
//  Created by Meng To on 2021-02-09.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        List {
            ForEach(courses) { item in
                Text(item.title)
                    .padding()
                    .background(item.color)
                    .cornerRadius(10)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Course: Identifiable {
    var id = UUID()
    var title: String
    var color: Color
}

var courses = [
    Course(title: "SwiftUI", color: Color.blue),
    Course(title: "UI Design", color: Color.red)
]
