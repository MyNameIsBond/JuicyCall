
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
                }.ignoresSafeArea(edges: .bottom)
            }
        }
}

struct ChatView_Previews: PreviewProvider {
    static var previews: some View {
        ChatView(message: [messages(time: "17:50", message: "Hello", sender: "Tony" ),messages(time: "17:50", message: "Hello", sender: "Tony" ),messages(time: "17:50", message: "Hello", sender: "Tony" ),messages(time: "17:50", message: "Hello", sender: "Tony" ),messages(time: "17:50", message: "Hello", sender: "Tony" ),messages(time: "17:50", message: "Hello", sender: "Tony" ),messages(time: "17:50", message: "Hello", sender: "Tony" ),messages(time: "17:50", message: "Hello", sender: "Tony" ),messages(time: "17:50", message: "Hello", sender: "Tony" ),messages(time: "17:50", message: "Hello", sender: "Tony" ),messages(time: "17:50", message: "Hello", sender: "Tony" ),messages(time: "17:50", message: "Hello", sender: "Tony" ),messages(time: "17:50", message: "Hello", sender: "Tony" ),messages(time: "17:50", message: "Hello", sender: "Tony" ),messages(time: "17:50", message: "Hello", sender: "Tony" ),messages(time: "17:50", message: "Hello", sender: "Tony" ),messages(time: "17:50", message: "Hello", sender: "Tony" ),messages(time: "17:50", message: "Hello", sender: "Tony" ),messages(time: "17:50", message: "Hello", sender: "Tony" ),messages(time: "17:50", message: "Hello", sender: "Tony" ),messages(time: "17:50", message: "Hello", sender: "Tony" ),messages(time: "17:50", message: "Hello", sender: "Tony" ),messages(time: "17:50", message: "Hello", sender: "Tony" ),messages(time: "17:50", message: "Hello", sender: "Tony" ),])
    }
}
