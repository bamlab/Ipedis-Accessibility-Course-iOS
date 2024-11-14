import SwiftUI

enum ArticleState {
    case favorite, addingFavorite, deleteFavorite, notFavorite

    func isFavorite() -> Bool {
        return self == .favorite
    }

    func isLoading() -> Bool {
        return self == .addingFavorite || self == .deleteFavorite
    }

    func accessibilityValue() -> String {
        switch self {
        case .favorite:
            return "Favori"
        case .addingFavorite:
            return "Ajout du favori"
        case .deleteFavorite:
            return "Suppression du favori"
        case .notFavorite:
            return "Non favori"
        }
    }
}

struct CustomArticle: View {
    var title: String
    var content: String
    @State private var selected: ArticleState = .notFavorite

    var body: some View {
        Button(action: {
            handleButtonClick()
        }) {
            VStack(alignment: .leading) {
                HStack {
                    Text(title)
                        .font(.headline)
                        .padding(.bottom, 4)
                    Spacer()
                    if selected.isLoading() {
                        ProgressView()
                    }
                    Image(systemName: iconName())
                }
                Text(content)
                    .font(.body)
                    .foregroundColor(.secondary)
                
            }
        }
        .padding()
        .accessibilityRemoveTraits(.isButton)
        .accessibilityAddTraits(AccessibilityTraits.isToggle)
    
    }

    private func handleButtonClick() {
        if selected.isFavorite() {
            selected = .deleteFavorite
            DispatchQueue.main.asyncAfter(deadline: .now() + 8) {
                selected = .notFavorite
            }
        } else if selected == .notFavorite {
            selected = .addingFavorite
            DispatchQueue.main.asyncAfter(deadline: .now() + 8) {
                selected = .favorite
            }
        }
    }

    private func iconName() -> String {
        switch selected {
        case .favorite:
            return "heart.fill"
        case .addingFavorite:
            return "plus"
        case .deleteFavorite:
            return "trash"
        case .notFavorite:
            return "heart"
        }
    }
}
