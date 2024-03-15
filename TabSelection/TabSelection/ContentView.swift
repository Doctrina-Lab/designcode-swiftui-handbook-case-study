//
//  ContentView.swift
//  TabSelection
//
//  Created by Meng To on 2021-02-18.
//

import SwiftUI

struct ContentView: View {
    @Binding var tabSelection: Int
    
    var body: some View {
        Text("Change tab")
            .onTapGesture {
                tabSelection = 2
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(tabSelection: .constant(1))
    }
}
