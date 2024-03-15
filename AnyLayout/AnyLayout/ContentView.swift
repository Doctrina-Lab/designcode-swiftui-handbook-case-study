//
//  ContentView.swift
//  AnyLayout
//
//  Created by Meng To on 2023-01-28.
//

import SwiftUI

struct ContentView: View {
    @State var isRadial = true
    
    var body: some View {
        let layout = isRadial ? AnyLayout(RadialLayout()) : AnyLayout(CustomLayout())
        
        layout {
            ForEach(0 ..< 5) { item in
                Circle()
                    .frame(width: 44)
                    .overlay(Image(systemName: "calendar").foregroundColor(.white))
            }
        }
        .onTapGesture {
            withAnimation(.spring()) {
                isRadial.toggle()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct RadialLayout: Layout {
    func sizeThatFits(proposal: ProposedViewSize, subviews: Subviews, cache: inout ()) -> CGSize {
        proposal.replacingUnspecifiedDimensions()
    }
    
    func placeSubviews(in bounds: CGRect, proposal: ProposedViewSize, subviews: Subviews, cache: inout ()) {
        let radius = bounds.width / 3.0
        let angle = Angle.degrees(360.0 / Double(subviews.count)).radians
        
        
        for (index, subview) in subviews.enumerated() {
            // Position
            var point = CGPoint(x: 0, y: -radius)
                .applying(CGAffineTransform(rotationAngle: CGFloat(angle) * CGFloat(index)))

            // Center
            point.x += bounds.midX
            point.y += bounds.midY

            // Place subviews
            subview.place(at: point, anchor: .center, proposal: .unspecified)
        }
    }
}

struct CustomLayout: Layout {
    func sizeThatFits(proposal: ProposedViewSize, subviews: Subviews, cache: inout ()) -> CGSize {
        proposal.replacingUnspecifiedDimensions()
    }
    
    func placeSubviews(in bounds: CGRect, proposal: ProposedViewSize, subviews: Subviews, cache: inout ()) {
        
        for (index, subview) in subviews.enumerated() {
            // Position
            var point = CGPoint(x: 20 * index, y: 20 * index)
                .applying(CGAffineTransform(rotationAngle: CGFloat(index * 6 + 6)))

            // Center
            point.x += bounds.midX
            point.y += bounds.midY

            // Place subviews
            subview.place(at: point, anchor: .center, proposal: .unspecified)
        }
    }
}
