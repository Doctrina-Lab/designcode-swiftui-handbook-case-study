//
//  NewView.swift
//  Binding
//
//  Created by Meng To on 2021-02-01.
//

import SwiftUI

struct NewView: View {
    @Binding var show: Bool
    var body: some View {
        RoundedRectangle(cornerRadius: 30)
            .fill(Color.blue)
            .padding()
            .onTapGesture {
                withAnimation(.spring()) {
                    show.toggle()
                }
            }
    }
}

struct NewView_Previews: PreviewProvider {
    static var previews: some View {
        NewView(show: .constant(true))
    }
}
