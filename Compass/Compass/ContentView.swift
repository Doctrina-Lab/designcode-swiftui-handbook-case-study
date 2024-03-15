//
//  ContentView.swift
//  Compass
//
//  Created by Meng To on 8/27/23.
//

import SwiftUI
import CoreLocationUI

struct ContentView: View {
    @ObservedObject var locationManager = LocationManager()
    
    var body: some View {
        VStack {
            Text("\(String(format: "%.0f", locationManager.degrees))º".uppercased())
                .font(.largeTitle)
            if let myLocation = locationManager.location {
                Text("Latitude: \(myLocation.latitude.formatted(.number.precision(.fractionLength(0)))), Longitude: \(myLocation.longitude.formatted(.number.precision(.fractionLength(0))))".uppercased())
            } else {
                LocationButton {
                    locationManager.requestLocation()
                }
                .labelStyle(.iconOnly)
                .cornerRadius(20)
            }
        }
    }
}

#Preview {
    ContentView()
}
