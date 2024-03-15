//
//  DonutEditorView.swift
//  ObservableModels
//
//  Created by Meng To on 9/15/23.
//

import SwiftUI

struct DonutEditorView: View {
    @Bindable var donut = Donut()
    
    var body: some View {
        TextField("Name", text: $donut.name)
            .padding()
    }
}

#Preview {
    DonutEditorView()
}
