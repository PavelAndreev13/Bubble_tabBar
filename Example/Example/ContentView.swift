import SwiftUI
import BubbleTabBar

struct ContentView: View {
    var body: some View {
        BubbleTabBar {
            BubbleTab(icon: "house.fill", title: "Home", color: .blue) {
                HomeView()
            }
            BubbleTab(icon: "magnifyingglass", title: "Search", color: .green) {
                SearchView()
            }
            BubbleTab(icon: "heart.fill", title: "Favorites", color: .pink) {
                FavoritesView()
            }
            BubbleTab(icon: "person.fill", title: "Profile", color: .purple) {
                ProfileView()
            }
        }
    }
}

#Preview {
    ContentView()
}
