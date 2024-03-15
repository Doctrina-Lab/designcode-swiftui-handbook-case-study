//
//  ContentView.swift
//  NavigationStack
//
//  Created by Meng To on 2022-12-02.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            List(navigationItems) { item in
                NavigationLink(value: item) {
                    Label(item.title, systemImage: item.icon)
                        .foregroundColor(.primary)
                }
            }
            .listStyle(.plain)
            .navigationTitle("SwiftUI apps")
            .navigationBarTitleDisplayMode(.inline)
            .navigationDestination(for: NavigationItem.self) { item in
                switch item.menu {
                case .compass:
                    Text("CompassView")
                case .card:
                    Text("CardReflectionView")
                case .charts:
                    Text("ChartView")
                case .radial:
                    Text("RadialLayoutView")
                case .halfsheet:
                    Text("HalfSheetView")
                case .gooey:
                    Text("GooeyView")
                case .actionbutton:
                    Text("ActionButtonView")
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

enum Menu: String {
    case compass
    case card
    case charts
    case radial
    case halfsheet
    case gooey
    case actionbutton
}

struct NavigationItem: Identifiable, Hashable {
    var id = UUID()
    var title: String
    var icon: String
    var menu: Menu
}

var navigationItems = [
    NavigationItem(title: "Compass App", icon: "safari", menu: .compass),
    NavigationItem(title: "3D Card", icon: "lanyardcard", menu: .card),
    NavigationItem(title: "Radial Layout", icon: "clock", menu: .radial),
    NavigationItem(title: "Gooey Action Button", icon: "plus.circle", menu: .actionbutton),
    NavigationItem(title: "Gooey Menu", icon: "drop", menu: .gooey),
    NavigationItem(title: "Charts", icon: "chart.xyaxis.line", menu: .charts),
    NavigationItem(title: "Half Sheet", icon: "rectangle.portrait.bottomhalf.filled", menu: .halfsheet),
]
