//
//  ContentView.swift
//  HalfSheet
//
//  Created by Meng To on 2022-12-02.
//

import SwiftUI

struct ContentView: View {
    @State var showSheet = false
    
    var body: some View {
        Button("Show Sheet") {
            showSheet = true
        }
        .sheet(isPresented: $showSheet) {
            Text("Content")
                .presentationDetents([.height(200), .medium, .large])
                .presentationDragIndicator(.automatic)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
