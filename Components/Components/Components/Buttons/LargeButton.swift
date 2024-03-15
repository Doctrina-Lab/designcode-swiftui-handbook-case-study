//
//  LargeButton.swift
//  Components
//
//  Created by Meng To on 2021-02-09.
//

import SwiftUI

struct LargeButton: View {
    var text = "Download files"
    
    var body: some View {
        Button(action: {}) {
            Text(text)
                .bold()
        }
        .frame(maxWidth: .infinity)
        .padding(12)
        .background(Color.blue)
        .foregroundColor(.white)
        .cornerRadius(12)
    }
}

struct LargeButton_Previews: PreviewProvider {
    static var previews: some View {
        LargeButton()
    }
}
