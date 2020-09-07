import SwiftUI

struct profileView: View {
    var body: some View {
        Text("settingsView")
    }
}


struct defaultView: View {
    var body: some View {
        Text("default")
    }
}
 
func destionation (dest: String) -> AnyView {
    switch dest {
    case "messagesView": return AnyView(MessagesView())
    case "findAMatchView": return AnyView(FindAMatchView())
    case "profileView": return AnyView(profileView())
    default: return AnyView(defaultView())
    }
}

struct SidebariPadOS: View {
    var Menu = menu
    var body: some View {
            List(Menu) { m in
                NavigationLink(destination: destionation(dest: m.destination)) {
                    Label(m.name, systemImage: m.icon)
                }.tag(m.id)
                }
            .listStyle(SidebarListStyle())
            .navigationTitle("Meet Me")
//            .navigationBarItems(trailing: Image("user15").imgAvatar(width: 30.0, height: 30.0))
    }
}

struct ContentView: View {
    var Menu = menu
    @State private var selection = 0
    
    var body: some View {
        #if os(iOS)
        iPhoneTabView
        #else
        iPadOSTabView
        #endif
    }
    
    var iPhoneTabView: some View {
            TabView(selection: $selection) {
                    List(Menu) { m in
                        destionation(dest: m.destination).tabItem {
                            Label(m.name, systemImage: m.icon)
                    }.tag(selection)
                }
            }
        }
    
    
    var iPadOSTabView: some View {
//       LoginFirebase()
        NavigationView {
                SidebariPadOS()
                    .toolbar {
                        ToolbarItem(placement: .navigation) {
                            Button(action: toggleSidebar, label: {
                                Image(systemName: "sidebar.left")
                            })
                        }
                    }
                MessagesView()
                defaultView()
           
        }
    }
}

func toggleSidebar() {
        #if os(iOS)
        #else
        NSApp.keyWindow?.firstResponder?.tryToPerform(#selector(NSSplitViewController.toggleSidebar(_:)), with: nil)
        #endif
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
