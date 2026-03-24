import SwiftUI

public struct BubbleTabBar: View {

    @State private var selectedTab: String
    private let tabs: [BubbleTab]
    private let colorSchema: TabBarColorSchema
    private let horizontalPadding: Double
    private let bottomPadding: Double
    private let verticalPadding: Double

    public init(
        colorSchema: TabBarColorSchema = .material(.ultraThinMaterial),
        horizontalPadding: Double = 15,
        bottomPadding: Double = 10,
        verticalPadding: Double = 16,
        @BubbleTabBuilder content: () -> [BubbleTab]
    ) {
        let tabs = content()
        self.tabs = tabs
        self._selectedTab = State(initialValue: tabs.first?.id ?? "")
        self.colorSchema = colorSchema
        self.horizontalPadding = horizontalPadding
        self.bottomPadding = bottomPadding
        self.verticalPadding = verticalPadding
    }

    public var body: some View {
        ZStack {
            if let tab = tabs.first(where: { $0.id == selectedTab }) {
                tab.view
                    .ignoresSafeArea()
                    .transition(.opacity)
                    .id(selectedTab)
            }

            VStack {
                Spacer()
                BubbleTabBarView(selectedTab: $selectedTab, tabs: tabs)
                    .padding(.vertical, verticalPadding)
                    .background(
                        Capsule()
                            .fill(colorSchema.value)
                            .overlay {
                                Capsule()
                                    .stroke(Color.gray.opacity(0.3), lineWidth: 2)
                            }
                            .shadow(color: .black.opacity(0.5), radius: 10, y: 5)
                            .padding(.horizontal, horizontalPadding)
                            .padding(.top, bottomPadding)
                    )
            }
            .padding(.bottom, bottomPadding)
        }
        .ignoresSafeArea()
    }
}

extension BubbleTabBar {

    public enum TabBarColorSchema {
        case color(Color)
        case material(Material)

        var value: AnyShapeStyle {
            switch self {
            case .color(let color):
                AnyShapeStyle(color)
            case .material(let material):
                AnyShapeStyle(material)
            }
        }
    }
}
