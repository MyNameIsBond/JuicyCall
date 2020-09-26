
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
                            Spacer(minLength: (UIApplication.shared.windows.first?.safeAreaInsets.bottom)! + 60 )
                        }
                    }
                    #if os(iOS)
                    ChatTextField()
                    #else
                    ChatTextField()
                    #endif
                }
            }.ignoresSafeArea(.container,edges: .bottom)
            
            .onAppear(perform: {
                Global.tabBar!.isHidden = true
            })
//            .navigationBarItems(trailing: NavigationLink(Image("user13").imgAvatar(width: 25, height: 25), destination: test()))
        
    }
    
}

struct test: View {
    var body: some View {
        Text("test")
    }
}

struct ChatView_Previews: PreviewProvider {
    static var previews: some View {
        ChatView(message: [messages(time: "17:50", message: "Hello", sender: "Tony" ),messages(time: "17:50", message: "Hello", sender: "Tony" ),messages(time: "17:50", message: "Hello", sender: "Tony" ),messages(time: "17:50", message: "Hello", sender: "Tony" ),messages(time: "17:50", message: "Hello", sender: "Tony" ),messages(time: "17:50", message: "Hello", sender: "Tony" ),messages(time: "17:50", message: "Hello", sender: "Tony" ),messages(time: "17:50", message: "Hello", sender: "Tony" ),messages(time: "17:50", message: "Hello", sender: "Tony" ),messages(time: "17:50", message: "Hello", sender: "Tony" ),messages(time: "17:50", message: "Hello", sender: "Tony" ),messages(time: "17:50", message: "Hello", sender: "Tony" ),messages(time: "17:50", message: "Hello", sender: "Tony" ),messages(time: "17:50", message: "Hello", sender: "Tony" ),messages(time: "17:50", message: "Hello", sender: "Tony" ),messages(time: "17:50", message: "Hello", sender: "Tony" ),messages(time: "17:50", message: "Hello", sender: "Tony" ),messages(time: "17:50", message: "Hello", sender: "Tony" ),messages(time: "17:50", message: "Hello", sender: "Tony" ),messages(time: "17:50", message: "Hello", sender: "Tony" ),messages(time: "17:50", message: "Hello", sender: "Tony" ),messages(time: "17:50", message: "Hello", sender: "Tony" ),messages(time: "17:50", message: "Hello", sender: "Tony" ),messages(time: "17:50", message: "Hello", sender: "Tony" ),])
    }
}
