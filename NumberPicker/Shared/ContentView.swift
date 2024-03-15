//
//  ContentView.swift
//  Shared
//
//  Created by Stephanie Diep on 2021-05-11.
//

import SwiftUI

struct ContentView: View {
    @State private var tabSelection: Int = 1
    var body: some View {
        
        TabView(selection: $tabSelection) {
            NavigationView {
                WheelPicker()
            }
            .tabItem {
                Image(systemName: "person.fill")
                Text("Wheel Picker")
            }
            .tag(1)
            
            NavigationView {
                SegmentedPicker()
            }
            .tabItem {
                Image(systemName: "chevron.left.slash.chevron.right")
                Text("Segmented Picker")
            }
            .tag(1)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
