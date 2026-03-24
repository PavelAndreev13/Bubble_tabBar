import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationStack {
            List {
                Section("Bubble TabBar") {
                    Label("Custom animations", systemImage: "sparkles")
                    Label("Material backgrounds", systemImage: "circle.hexagongrid.fill")
                    Label("Dynamic Type support", systemImage: "textformat.size")
                    Label("VoiceOver ready", systemImage: "accessibility")
                }
            }
            .navigationTitle("Home")
        }
    }
}

#Preview { HomeView() }
