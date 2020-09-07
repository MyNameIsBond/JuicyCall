//
//  ChatView.swift
//  Juicy Call 2
//
//  Created by Tony Hajdini on 05/09/2020.
//

import SwiftUI

struct ChatView: View {
    var message = [messages]()
    @State private var mess: String = ""
    @State private var showingActionSheet = false
    var body: some View {
            VStack {
                ZStack(alignment: .bottom) {
                    GeometryReader { g in
                        ScrollView {
                            ForEach(message) { m in
                                VStack {
                                    // Message
                                    Text(m.message).background(Color.accentColor)
                                }
                            }.frame(width: g.size.width)
                        }
                    }
                HStack {
                    Button(action: {
                        self.showingActionSheet.toggle()
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
//                .background(BlurView(style: .regular))
                    
            }
        }
    }
}

struct ChatView_Previews: PreviewProvider {
    static var previews: some View {
        ChatView()
    }
}
