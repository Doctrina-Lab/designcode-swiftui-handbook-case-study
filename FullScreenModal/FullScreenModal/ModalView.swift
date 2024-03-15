//
//  ModalView.swift
//  FullScreenModal
//
//  Created by Meng To on 2020-12-23.
//

import SwiftUI

struct ModalView: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        Text("Close Modal")
            .onTapGesture {
                presentationMode.wrappedValue.dismiss()
            }
    }
}

struct ModalView_Previews: PreviewProvider {
    static var previews: some View {
        ModalView()
    }
}
