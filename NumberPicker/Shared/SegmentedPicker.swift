//
//  SegmentedPicker.swift
//  NumberPicker
//
//  Created by Stephanie Diep on 2021-05-11.
//

import SwiftUI

enum ProgrammingLanguage: String, CaseIterable, Identifiable {
    case swiftui
    case react
    case flutter
    
    var id: String { self.rawValue }
}

struct SegmentedPicker: View {
    @State private var favoriteLanguage = ProgrammingLanguage.swiftui
    
    var body: some View {
        Picker("Favorite language", selection: $favoriteLanguage) {
            ForEach(ProgrammingLanguage.allCases) { language in
                Text(language.rawValue.capitalized)
                    .tag(language)
            }
        }
        .pickerStyle(SegmentedPickerStyle())
    }
}

struct SegmentedPicker_Previews: PreviewProvider {
    static var previews: some View {
        SegmentedPicker()
    }
}

