//
//  ContentView.swift
//  Shared
//
//  Created by Stephanie Diep on 2021-01-12.
//

import SwiftUI
import AVKit

struct ContentView: View {
    @State var player = AVPlayer()
    @State var videoStartTime: CMTime = CMTimeMake(value: 10, timescale: 1)
    var videoUrl: String = "https://www.learningcontainer.com/wp-content/uploads/2020/05/sample-mp4-file.mp4"

    
    var body: some View {
        VideoPlayer(player: player)
            .onAppear() {
                player = AVPlayer(url: URL(string: videoUrl)!)
                
                // Set a start time
                player.seek(to: videoStartTime)
                
                // Automatically play video
                player.play()
                
                // Get video duration
                print("video duration", player.currentItem!.asset.duration)
                
                // Get video currentTime
                print("video currentTime", player.currentTime())

                // Set play rate
                player.rate = 1.5
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(videoUrl: "https://www.learningcontainer.com/wp-content/uploads/2020/05/sample-mp4-file.mp4")
    }
}
