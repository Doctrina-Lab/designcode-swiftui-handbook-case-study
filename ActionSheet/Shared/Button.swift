//
//  Button.swift
//  ActionSheet
//
//  Created by Stephanie Diep on 2021-03-02.
//

import SwiftUI

struct Button: View {    
    var body: some View {
        VStack {
            Text("Change photo")
                .font(.headline)
                .frame(maxWidth: .infinity)
                .frame(height: 50)
                .background(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.262745098, green: 0.0862745098, blue: 0.8588235294, alpha: 1)), Color(#colorLiteral(red: 0.5647058824, green: 0.462745098, blue: 0.9058823529, alpha: 1))]), startPoint: .top, endPoint: .bottom))
            .cornerRadius(16)
            .foregroundColor(.white)
        }
    }
}

struct Button_Previews: PreviewProvider {
    static var previews: some View {
        Button()
    }
}
