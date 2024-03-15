//
//  ContentView.swift
//  HideStatusBar
//
//  Created by Meng To on 2021-01-20.
//

import SwiftUI

struct ContentView: View {
    @State var isHidden = false
    
    var body: some View {
        Text("Status bar")
            .statusBar(hidden: isHidden)
            .onTapGesture {
                withAnimation {
                    isHidden = true
                }
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
