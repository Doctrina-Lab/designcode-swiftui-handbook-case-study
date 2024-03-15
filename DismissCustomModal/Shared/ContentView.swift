//
//  ContentView.swift
//  Shared
//
//  Created by Stephanie Diep on 2020-12-24.
//

import SwiftUI

struct ContentView: View {
    @State var showModal = false
    
    var body: some View {
        ZStack {
            VStack {
                Text("Welcome!")
                    .font(.title)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                
                Spacer()
                    .frame(height: 20)
                
                GradientButton(text: "Show Modal")
                    .padding()
                    .onTapGesture {
                        showModal = true
                    }
            }
            
            if showModal {
                Rectangle()
                    .foregroundColor(Color.black.opacity(0.5))
                    .edgesIgnoringSafeArea(.all)
                    .onTapGesture {
                        showModal = false
                    }
                
                SignInView()
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
