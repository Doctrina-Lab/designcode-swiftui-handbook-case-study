//
//  HomeView.swift
//  TabBarToRoot
//
//  Created by Stephanie Diep on 2021-04-01.
//

import SwiftUI

struct HomeView: View {
    var columns = [GridItem(.adaptive(minimum: 159), spacing: 16)]
    
    var body: some View {
        ScrollView {
            Text("Home")
                .font(.largeTitle).bold()
                .padding(.horizontal, 20)
                .padding(.top, 17)
            
            LazyVGrid(columns: columns, spacing: 16) {
                ForEach(0..<10) { number in
                    NavigationLink(destination: ChildView(courseTitle: "SwiftUI for iOS 14")) {
                        CourseCard(image: "illustration", title: "SwiftUI for iOS 14", hours: "20 sections - 3 hours", colors: [Color(#colorLiteral(red: 1, green: 0.4509803922, blue: 0.4509803922, alpha: 1)), Color(#colorLiteral(red: 0.2862745098, green: 0.1176470588, blue: 0.7215686275, alpha: 1))], logo: "swift-logo")
                    }
                }
            }
            .padding(20)
        }
        .navigationBarHidden(true)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
