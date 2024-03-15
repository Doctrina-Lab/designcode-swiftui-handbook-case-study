//
//  ContentView.swift
//  Shared
//
//  Created by Stephanie Diep on 2020-12-29.
//

import SwiftUI

struct ContentView: View {
    var today = Date().formatDate()
    
    var body: some View {
        Text(today)
            .font(Font.subheadline.smallCaps()).bold()
            .foregroundColor(.secondary)
    }
}

extension Date {
    func formatDate() -> String {
            let dateFormatter = DateFormatter()
        dateFormatter.setLocalizedDateFormatFromTemplate("EEEE, MMM d")
        return dateFormatter.string(from: self)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
