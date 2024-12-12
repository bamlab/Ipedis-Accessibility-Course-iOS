import SwiftUI
final class Router: ObservableObject {
    
    public enum Destination: Codable, Hashable { 
        case home
        case list
        case order
        case detail
        case offer
        case canvas
        case titles
        case formatedTexts
        case tabs
        case forms
    }
    
    @Published var navPath = NavigationPath()
    
    func navigate(to destination: Destination) {
        navPath.append(destination)
    }
    
    func navigateBack() {
        navPath.removeLast()
    }
    
    func navigateToRoot() {
        navPath.removeLast(navPath.count)
    }
}
