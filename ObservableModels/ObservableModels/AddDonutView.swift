//
//  AddDonutView.swift
//  ObservableModels
//
//  Created by Meng To on 9/15/23.
//

import SwiftUI

@Observable class Donut: Identifiable {
    var id = UUID()
    var name = "Strawberry"
}

struct AddDonutView: View {
    @State var donutToAdd: Donut?
    
    var body: some View {
        Button("Add Donut") {
            donutToAdd = Donut()
        }
        //present sheet to edit donut
        .sheet(item: $donutToAdd) { donut in
            Text(donut.name)
        }
    }
}

#Preview {
    AddDonutView()
}
