
import SwiftUI

struct ChatView: View {
    
    var message = [messages]()
    
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
                                    }.padding(.horizontal,0)
                                    HStack {
                                        Spacer()
                                        Text(m.message)
                                            .padding(5)
                                            .background(Color.accentColor)
                                            .cornerRadius(20)
                                            .foregroundColor(Color.white)
                                            
                                    }.padding(.horizontal,6)
                                    HStack {
                                        Spacer()
                                        Text(m.message)
                                            .padding(5)
                                            .background(Color.accentColor)
                                            .cornerRadius(20)
                                            .foregroundColor(Color.white)
                                            
                                    }.padding(.horizontal,6).padding(10)
                                    
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
