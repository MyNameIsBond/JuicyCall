
import SwiftUI

struct SideBar: View {
    var Menu = menu
    var body: some View {
        List(menu){ m in
            NavigationLink(destination: MessagesView()) {
                Label(m.name, systemImage: m.icon)
            }
        }
        .listStyle(SidebarListStyle())
        .navigationTitle("Juicy Call")
    }
}

struct MessagesView: View {
    var body: some View {
        Text("side bar")
    }
}

struct DefaultView: View {
    var body: some View {
        Text("side bar")
    }
}

struct ContentView: View {
    
    var body: some View {
        NavigationView {
            SideBar()
            MessagesView()
            DefaultView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
