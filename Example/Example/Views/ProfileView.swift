import SwiftUI

struct ProfileView: View {
    var body: some View {
        NavigationStack {
            List {
                Section {
                    HStack(spacing: 16) {
                        Image(systemName: "person.crop.circle.fill")
                            .font(.system(size: 60))
                            .foregroundStyle(.purple)
                            .accessibilityHidden(true)
                        VStack(alignment: .leading) {
                            Text("Pavel Andreev")
                                .font(.headline)
                            Text("iOS Developer")
                                .font(.subheadline)
                                .foregroundStyle(.secondary)
                        }
                    }
                    .padding(.vertical, 8)
                }
                Section("Settings") {
                    Label("Notifications", systemImage: "bell")
                    Label("Privacy", systemImage: "lock")
                    Label("About", systemImage: "info.circle")
                }
            }
            .navigationTitle("Profile")
        }
    }
}

#Preview { ProfileView() }
