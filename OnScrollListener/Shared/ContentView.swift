//
//  ContentView.swift
//  Shared
//
//  Created by Stephanie Diep on 2020-12-31.
//

import SwiftUI
import SwiftUITrackableScrollView

struct ContentView: View {
    @EnvironmentObject var data: DataStore
    @State var scrollViewContentOffset = CGFloat(0)
    
    var body: some View {
        VStack {
            Text("Content offset: \(scrollViewContentOffset)")
                .font(.headline)
                .fontWeight(.bold)
                .frame(height: 50)
            
            TrackableScrollView(.vertical, showIndicators: false, contentOffset: $scrollViewContentOffset) {
                
                ScrollView {
                    ZStack {
                        Text(data.text)
                            .padding(.horizontal, 40)
                            .foregroundColor(.gray)
                            .onChange(of: scrollViewContentOffset, perform: {
                                value in
                                print("scrollViewContentOffset", scrollViewContentOffset)
                                // Do something
                            })
                        
                        
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(DataStore())
    }
}
