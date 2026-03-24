import SwiftUI

public struct BubbleTab {
    public let id: String
    public let icon: String
    public let title: String
    public let selectedColor: Color
    let view: AnyView // internal — not part of the public API

    public init<Content: View>(
        icon: String,
        title: String,
        color: Color,
        id: String? = nil,
        @ViewBuilder content: () -> Content
    ) {
        self.id = id ?? icon
        self.icon = icon
        self.title = title
        self.selectedColor = color
        self.view = AnyView(content())
    }
}
