//
//  ContentView.swift
//  CustomLayout
//
//  Created by Meng To on 2023-01-28.
//

import SwiftUI

struct ContentView: View {
    var icons = ["calendar", "message", "figure.walk", "music.note"]
    
    var body: some View {
        CustomLayout {
            ForEach(icons, id: \.self) { item in
                Circle()
                    .frame(width: 44)
                    .overlay(Image(systemName: item).foregroundColor(.white))
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct CustomLayout: Layout {
    func sizeThatFits(proposal: ProposedViewSize, subviews: Subviews, cache: inout ()) -> CGSize {
        proposal.replacingUnspecifiedDimensions()
    }
    
    func placeSubviews(in bounds: CGRect, proposal: ProposedViewSize, subviews: Subviews, cache: inout ()) {
        for (index, subview) in subviews.enumerated() {
            // Position
            var point = CGPoint(x: 50 * index, y: 50 * index).applying(CGAffineTransform(rotationAngle: 5))

            // Center
            point.x += bounds.midX
            point.y += bounds.midY

            // Place subviews
            subview.place(at: point, anchor: .center, proposal: .unspecified)
        }
    }
}
