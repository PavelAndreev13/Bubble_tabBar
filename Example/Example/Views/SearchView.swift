import SwiftUI

struct SearchView: View {
    @State private var query = ""

    var body: some View {
        NavigationStack {
            List {
                Text("Result 1")
                Text("Result 2")
                Text("Result 3")
            }
            .navigationTitle("Search")
            .searchable(text: $query)
        }
    }
}

#Preview { SearchView() }
