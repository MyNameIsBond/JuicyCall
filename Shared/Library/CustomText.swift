
import SwiftUI

struct LibraryTextContent: LibraryContentProvider {
    @LibraryContentBuilder
    func subtitleText(base: Text) -> [LibraryItem] {
        LibraryItem(
            base.timeText(),
            title: "secondary text"
        )
    }
    @LibraryContentBuilder
    func titleText(base: Text) -> [LibraryItem] {
        LibraryItem(
            base.primaryText(),
            title: "Primary texrt"
        )
    }
}




//MARK: Time Text
extension Text {
    func primaryText() -> some View {
        self
            .font(.subheadline)
            .fontWeight(.light)
            .foregroundColor(Color.gray)
            .lineLimit(1)
    }
}

extension Text {
    func timeText() -> some View {
        self
        .font(.footnote)
        .foregroundColor(Color.gray)
    }
}



