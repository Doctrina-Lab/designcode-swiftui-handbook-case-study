//
//  ContentView.swift
//  ObservableModels
//
//  Created by Meng To on 9/15/23.
//

import SwiftUI

struct ContentView: View {
    var model = MyViewModel()
    
    var body: some View {
        VStack {
            Text(model.name)
            
            ForEach(model.items, id: \.self) {
                Text("\($0)")
            }
            
            Text("Total: \(model.count)")
        }
    }
}

#Preview {
    ContentView()
}

@Observable
class MyViewModel {
    var name = "John"
    var items = [1, 2, 3]
    var count: Int { items.count }
}
