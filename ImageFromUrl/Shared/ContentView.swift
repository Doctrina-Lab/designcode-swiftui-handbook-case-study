//
//  ContentView.swift
//  Shared
//
//  Created by Stephanie Diep on 2020-12-23.
//

import SwiftUI
import SDWebImageSwiftUI

struct ContentView: View {
    let myPhotoUrl = URL(string: "https://picsum.photos/200/300")

    var body: some View {
        WebImage(url: myPhotoUrl)
            .renderingMode(.original)
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 100, height: 100)
            .clipShape(Circle())
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
