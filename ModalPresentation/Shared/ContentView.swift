//
//  ContentView.swift
//  Shared
//
//  Created by Stephanie Diep on 2020-12-23.
//

import SwiftUI

struct ContentView: View {
    @State var showModal = false
    
    var body: some View {
        VStack {
            Text("Welcome!")
                .font(.largeTitle)
                .fontWeight(.bold)
                .frame(maxWidth: 335, alignment: .center)
            
            Spacer()
                .frame(height: 20)
            
            GradientButton(text: "Sign in")
                .onTapGesture {
                    showModal = true
                }
            
        }.sheet(isPresented: $showModal) {
            SignInView()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
