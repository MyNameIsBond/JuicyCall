
import SwiftUI

extension NSTextField {
    open override var focusRingType: NSFocusRingType {
        get { .none }
        set { }
    }
}

struct ChatTextField: View {
    @State private var mess: String = ""
    var body: some View {
        HStack {
            Button(action: {
                print("hello")
            }, label: {
                Image(systemName: "plus").foregroundColor(Color.accentColor)
            })
            TextField("Type a message...",text:$mess)
                .overlay(RoundedRectangle(cornerRadius: 10)
                .stroke(Color.gray, lineWidth: 2))
                .cornerRadius(9)
            Button(action: {
            }, label: {
                Image(systemName: "face.smiling").foregroundColor(Color.accentColor)
            })
        }.padding(.all, 15).background(BlurView(material: NSVisualEffectView.Material.menu, blendingMode: NSVisualEffectView.BlendingMode.withinWindow))

    }
}

struct ChatTextField_Previews: PreviewProvider {
    static var previews: some View {
        ChatTextField()
    }
}
