//
//  WheelPicker.swift
//  NumberPicker
//
//  Created by Stephanie Diep on 2021-05-11.
//

import SwiftUI

struct WheelPicker: View {
    @State private var number: Int = 1
    
    var body: some View {
        Picker("Your age", selection: $number) {
            ForEach(1...100, id: \.self) { number in
                Text("\(number)")
            }
        }
    }
}
 
struct WheelPicker_Previews: PreviewProvider {
    static var previews: some View {
        WheelPicker()
    }
}
