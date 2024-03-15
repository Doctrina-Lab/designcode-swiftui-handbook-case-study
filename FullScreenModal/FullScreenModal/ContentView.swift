//
//  ContentView.swift
//  FullScreenModal
//
//  Created by Meng To on 2020-12-23.
//

import SwiftUI

struct ContentView: View {
    @State var showModal = false
    
    var body: some View {
        Button(action: { showModal = true }) {
            Text("My Button")
        }
        .fullScreenCover(isPresented: $showModal) {
            ModalView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
