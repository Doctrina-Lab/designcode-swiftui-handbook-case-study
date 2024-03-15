//
//  ChildView.swift
//  TabBarToRoot
//
//  Created by Stephanie Diep on 2021-04-01.
//

import SwiftUI

struct ChildView: View {
    var courseTitle: String
    
    var body: some View {
        VStack {
            Text(courseTitle)
                .font(.title).bold()
                .padding()
            
            Text("This is the child view.")
        }
    }
}

struct ChildView_Previews: PreviewProvider {
    static var previews: some View {
        ChildView(courseTitle: "SwiftUI for iOS 14")
    }
}
