//
//  ContentView.swift
//  Shared
//
//  Created by Stephanie Diep on 2020-12-29.
//

import SwiftUI

struct ContentView: View {
    let savedEmail = UserDefaults.standard.string(forKey: "email")
    
    var body: some View {
        Text(savedEmail ?? "")
            .padding()
            .onAppear() {
                let userEmail = "stephanie@email.com"
                UserDefaults.standard.set(userEmail, forKey: "email")
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
