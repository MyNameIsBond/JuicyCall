//
//  ChatTextField.swift
//  Juicy Call 2 (macOS)
//
//  Created by Tony Hajdini on 08/09/2020.
//

import SwiftUI

struct ChatTextField: View {
    @State private var mess: String = ""
    var body: some View {
        HStack {
            Button(action: {
                // code
            }, label: {
                Image(systemName: "plus").foregroundColor(Color.accentColor)
            })
//                    .actionSheet(isPresented: $showingActionSheet) {
//                        ActionSheet(title: Text(""), message: Text(""), buttons: [
//                            .default(Text("Gallery")) {  },
//                            .default(Text("Camera")) { },
//                            .default(Text("Blue")) { },
//                            .cancel()
//                        ])
//                    }
            TextField("Message",text:$mess).padding(5).overlay(RoundedRectangle(cornerRadius: 20).stroke(Color.gray, lineWidth: 2))
//                        .background(BlurView(style: .regular)).cornerRadius(20)
            Button(action: {
                // To Photo Gallery
            }, label: {
                Image(systemName: "face.smiling").foregroundColor(Color.accentColor)
            })
        }.padding(.all)
    }
}

struct ChatTextField_Previews: PreviewProvider {
    static var previews: some View {
        ChatTextField()
    }
}
