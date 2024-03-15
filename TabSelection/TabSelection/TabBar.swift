//
//  TabBar.swift
//  TabSelection
//
//  Created by Meng To on 2021-02-18.
//

import SwiftUI

struct TabBar: View {
    @State var tabSelection = 1
    
    var body: some View {
        TabView(selection: $tabSelection) {
            ContentView(tabSelection: $tabSelection)
                .tabItem {
                    Image(systemName: "square.grid.2x2.fill")
                    Text("Home") }
                .tag(1)
            
            SecondView()
                .tabItem {
                    Image(systemName: "rectangle.stack.fill")
                    Text("Settings")
                }
                .tag(2)
        }
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}
