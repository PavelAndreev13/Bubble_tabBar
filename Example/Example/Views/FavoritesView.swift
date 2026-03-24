import SwiftUI

struct FavoritesView: View {
    var body: some View {
        NavigationStack {
            ContentUnavailableView(
                "No Favorites",
                systemImage: "heart.slash",
                description: Text("Items you favorite will appear here.")
            )
            .navigationTitle("Favorites")
        }
    }
}

#Preview { FavoritesView() }
