import SwiftUI

struct TabBarButton: View {
    let tab: BubbleTab
    let isSelected: Bool
    let action: () -> Void

    var body: some View {
        Button(action: action) {
            VStack(spacing: 4) {
                ZStack {
                    Circle()
                        .fill(.ultraThinMaterial)
                        .overlay {
                            Circle()
                                .stroke(Color.gray.opacity(0.3), lineWidth: 1)
                        }
                        .frame(width: 55, height: 55)
                        .shadow(color: .black.opacity(0.1), radius: 3, y: 2)
                        .opacity(isSelected ? 1 : 0)
                        .scaleEffect(isSelected ? 1 : 0.5)

                    Image(systemName: tab.icon)
                        .font(isSelected ? .title3.weight(.medium) : .body.weight(.medium))
                        .foregroundStyle(isSelected ? tab.selectedColor : Color.gray)
                        .scaleEffect(isSelected ? 1.1 : 1.0)
                        .accessibilityHidden(true)
                }
                .frame(height: 55)

                Text(tab.title)
                    .font(.caption.weight(.medium))
                    .foregroundStyle(isSelected ? tab.selectedColor : Color.gray)
                    .opacity(isSelected ? 1 : 0.7)
            }
        }
        .buttonStyle(.plain)
    }
}
