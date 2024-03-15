//
//  ContentView.swift
//  DatePicker
//
//  Created by Meng To on 2021-02-04.
//

import SwiftUI

struct ContentView: View {
    @State var selectedDate = Date()
    
    var body: some View {
        VStack {
            DatePicker("Select a date", selection: $selectedDate)
                .datePickerStyle(GraphicalDatePickerStyle())
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
