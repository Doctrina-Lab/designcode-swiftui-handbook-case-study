//
//  MenuView.swift
//  ObservableModels
//
//  Created by Meng To on 9/15/23.
//

import SwiftUI

@Observable class Account {
    var userName = "Meng"
}

struct MenuView: View {
    @Environment(Account.self) var account
    
    var body: some View {
        Text(account.userName)
    }
}

#Preview {
    MenuView()
        .environment(Account())
}
