//
//  ContentView.swift
//  SecureField
//
//  Created by Willie Yam on 2020-12-24.
//

import SwiftUI

struct ContentView: View {
    @State var password: String = ""
    
    var body: some View {
        VStack {
            Text(password)
                .padding()
            SecureField("Password", text: $password)
                .padding()
                .textContentType(.password)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
