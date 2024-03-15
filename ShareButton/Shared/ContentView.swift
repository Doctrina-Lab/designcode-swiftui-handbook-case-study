//
//  ContentView.swift
//  Shared
//
//  Created by Stephanie Diep on 2021-01-21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Button(action: shareButton) {
            Image(systemName: "square.and.arrow.up")
                .foregroundColor(.black)
        }
    }
    
    func shareButton() {
        let url = URL(string: "https://designcode.io")
        let activityViewController = UIActivityViewController(activityItems: [url!], applicationActivities: nil)
        
        UIApplication.shared.windows.first?.rootViewController?.present(activityViewController, animated: true, completion: nil)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
