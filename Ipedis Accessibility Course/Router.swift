import SwiftUI
final class Router: ObservableObject {
    
    public enum Destination: Codable, Hashable { 
        case home
        case list
        case order
        case detail
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
