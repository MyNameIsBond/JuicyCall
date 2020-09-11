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
                                    ChatBubble(direction: .right) {
                                            Text(m.message)
                                               .padding(10)
                                               .foregroundColor(Color.white)
                                               .background(Color.accentColor)
                                    }.padding(.horizontal,10)
                                }
                            }.frame(width: g.size.width)
                            Spacer(minLength: 60)
                        }
                    }
                #if os(iOS)
                ChatTextField()
                #else
                ChatTextField()
                #endif
            }
        }
    }
}

struct ChatView_Previews: PreviewProvider {
    static var previews: some View {
        ChatView()
    }
}
