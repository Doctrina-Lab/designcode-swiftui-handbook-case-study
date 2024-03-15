//
//  ContentView.swift
//  SwiftDataTutorial
//
//  Created by Meng To on 9/15/23.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Environment(\.modelContext) var modelContext
    @Query(filter: #Predicate<Card> { $0.title == "Title" }, sort: \Card.title, order: .reverse) var cards: [Card]
    
    var body: some View {
        List {
            ForEach(cards) { card in
                HStack {
                    Text(card.title)
                    ForEach(card.colors) { color in
                        Text(color.name)
                    }
                }
            }
            .onDelete(perform: { indexSet in
                for index in indexSet {
                    modelContext.delete(cards[index])
                }
            })
            
            Button {
                let newCard = Card(title: "Title", colors: [Color(name: "red"), Color(name: "blue")])
                modelContext.insert(newCard)
            } label: {
                Text("Add")
            }
        }
    }
}

#Preview {
    ContentView()
        .modelContainer(for: [Card.self, Color.self])
}

