import SwiftUI

@resultBuilder
public struct BubbleTabBuilder {
    public static func buildBlock(_ tabs: BubbleTab...) -> [BubbleTab] {
        tabs
    }
}
