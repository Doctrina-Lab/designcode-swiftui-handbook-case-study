//
//  ContentView.swift
//  Shared
//
//  Created by Stephanie Diep on 2020-12-30.
//

import SwiftUI

struct ContentView: View {
    
    
    var body: some View {
        ZStack() {
            SignInView()
        }
        .background(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.9)))
        .cornerRadius(30)
        .onTapGesture {
            hideKeyboard()
        }
    }
}

extension View {
    func hideKeyboard() {
        let resign = #selector(UIResponder.resignFirstResponder)
        UIApplication.shared.sendAction(resign, to: nil, from: nil, for: nil)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
