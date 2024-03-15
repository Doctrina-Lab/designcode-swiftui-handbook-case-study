//
//  Models.swift
//  SwiftDataTutorial
//
//  Created by Meng To on 9/15/23.
//

import SwiftData

@Model
class Card {
    var title: String
    var colors: [Color]
    
    init(title: String, colors: [Color]) {
        self.title = title
        self.colors = colors
    }
}

@Model
class Color {
    var name: String
    
    init(name: String) {
        self.name = name
    }
}
