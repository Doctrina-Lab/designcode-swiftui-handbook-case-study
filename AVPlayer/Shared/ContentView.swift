//
//  ContentView.swift
//  Shared
//
//  Created by Stephanie Diep on 2020-12-30.
//

import SwiftUI
import AVKit

struct ContentView: View {
    @State var player = AVPlayer()
    var videoUrl: String = "https://www.learningcontainer.com/wp-content/uploads/2020/05/sample-mp4-file.mp4"

    
    var body: some View {
        VideoPlayer(player: player)
            .onAppear() {
                player = AVPlayer(url: URL(string: videoUrl)!)
                player.play()
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(videoUrl: "https://www.learningcontainer.com/wp-content/uploads/2020/05/sample-mp4-file.mp4")
    }
}
