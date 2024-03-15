//
//  ContentView.swift
//  SwipeActionsDemo
//
//  Created by Stephanie Diep on 2021-08-26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("My Inbox")
                .font(.title).bold()
                .padding(.horizontal)
                
            List(messages) { message in
                MessageRow(message: message)
                    .swipeActions {
                        Button {
                            print("Message deleted")
                        } label: {
                            Label("Delete", systemImage: "trash")
                        }
                        .tint(.red)
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

struct Message: Identifiable {
    var id = UUID()
    var title: String
    var content: String
}

var messages = [Message(title: "Hello", content: "Hello my friend, how have you been? I've been wondering if you'd like to meet up sometime."), Message(title: "50% off sales", content: "Last chance to get a hold of last season's collection, now with an additional 50% off."), Message(title: "Required documents", content: "Hi, please find attached the required documents."), Message(title: "You have 8 new followers", content: "Congrats! Since yesterday, 8 new people followed you! Log into the app to see who they are.")]


