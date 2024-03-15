//
//  ContentView.swift
//  Shared
//
//  Created by Stephanie Diep on 2021-01-12.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Visit Design+Code")
                .font(.caption)
                .foregroundColor(Color(#colorLiteral(red: 0.2235294118, green: 0.07450980392, blue: 0.7215686275, alpha: 1)))
                .onTapGesture {
                    UIApplication.shared.open(URL(string: "https://designcode.io")!)
                }
            
            HStack(spacing: 4) {
                Text("You agree to our")

                Text("Terms")
                    .foregroundColor(Color(#colorLiteral(red: 0.2235294118, green: 0.07450980392, blue: 0.7215686275, alpha: 1)))
                    .onTapGesture {
                        UIApplication.shared.open(URL(string: "https://designcode.io/terms")!)
                    }

                Text("and")

                Text("Privacy policy")
                    .foregroundColor(Color(#colorLiteral(red: 0.2235294118, green: 0.07450980392, blue: 0.7215686275, alpha: 1)))
                    .onTapGesture {
                        UIApplication.shared.open(URL(string: "https://designcode.io/privacy")!)
                    }
            }
            .font(.caption)

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
