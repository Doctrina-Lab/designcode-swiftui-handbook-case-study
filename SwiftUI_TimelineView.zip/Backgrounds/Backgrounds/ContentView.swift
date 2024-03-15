//
//  ContentView.swift
//  Backgrounds
//
//  Created by Sai Kambampati on 5/24/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Canvas { context, size in
            let w = size.width
            let h = size.height
            
            context.fill(Path(CGRect(origin: .zero, size: size)), with: .color(Color(.sRGB, red: 230/255, green: 240/255, blue: 1, opacity: 1)))
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
