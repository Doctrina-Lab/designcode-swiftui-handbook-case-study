//
//  MessageRow.swift
//  MessageRow
//
//  Created by Stephanie Diep on 2021-08-26.
//

import SwiftUI

struct MessageRow: View {
    var message: Message
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text(message.title)
                .font(.headline)
                .bold()
            
            Text(message.content)
                .foregroundColor(.gray)
                .lineLimit(2)
        }
    }
}

struct MessageRow_Previews: PreviewProvider {
    static var previews: some View {
        MessageRow(message: Message(title: "Hello", content: "Hello my friend, how have you been? I've been wondering if you'd like to meet up sometime."))
    }
}
