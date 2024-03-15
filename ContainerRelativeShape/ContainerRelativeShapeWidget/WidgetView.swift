//
//  WidgetView.swift
//  ContainerRelativeShape2
//
//  Created by Amol Kumar on 2021-04-28.
//

import SwiftUI
import WidgetKit

struct WidgetView: View {
    var padding: CGFloat = 10
    
    var body: some View {
        VStack(spacing: 8) {
            Text("PADDING")
                .foregroundColor(.white)
            Text("\(padding)")
                .foregroundColor(.white)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(ContainerRelativeShape().fill(Color(.black).opacity(0.9)))
        .padding(padding)
    }
}

struct Previews: PreviewProvider {
    static var previews: some View {
        Group {
            WidgetView()
                .previewContext(WidgetPreviewContext(family: .systemSmall))
            WidgetView()
                .previewContext(WidgetPreviewContext(family: .systemMedium))
            WidgetView()
                .previewContext(WidgetPreviewContext(family: .systemLarge))
        }
    }
}
