import SwiftUI

struct BubbleTabBarView: View {
    @Binding var selectedTab: String
    let tabs: [BubbleTab]

    var body: some View {
        HStack(spacing: 0) {
            ForEach(tabs, id: \.id) { tab in
                TabBarButton(
                    tab: tab,
                    isSelected: selectedTab == tab.id,
                    action: {
                        withAnimation(.spring(duration: 0.3, bounce: 0.3)) {
                            selectedTab = tab.id
                        }
                    }
                )
                .frame(maxWidth: .infinity)
            }
        }
        .padding(.horizontal, 16)
    }
}

#Preview {
    BubbleTabBar {
        BubbleTab(icon: "house.fill", title: "Home", color: .blue) {
            Color.primary.opacity(0.05).ignoresSafeArea()
        }
        BubbleTab(icon: "magnifyingglass", title: "Search", color: .green) {
            Color.primary.opacity(0.05).ignoresSafeArea()
        }
        BubbleTab(icon: "heart.fill", title: "Favorites", color: .pink) {
            Color.primary.opacity(0.05).ignoresSafeArea()
        }
    }
}
