//
//  TabsScreen.swift
//  Ipedis Accessibility Course
//
//  Created by Dennis BORDET on 12/12/2024.
//


import SwiftUI

struct TabsScreen: View {
    @State private var selectedTabIndex = 0

    private let tabs = ["Acceuil", "Paramètres"]
    private let loremTexts = [
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
        "Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
    ]
    
    func getAccessibilityTabPosition(index: Int) -> String {
        return "\(index + 1) sur \(tabs.count)"
    }

    var body: some View {
        VStack {
            Text(loremTexts[selectedTabIndex])
                .padding(16)
                .frame(maxWidth: .infinity, alignment: .leading)
                .font(.body)
                
            Spacer()

            CustomTabRow(selectedTabIndex: $selectedTabIndex, tabs: tabs)
        }
        .padding()
    }
    
    var bodyTabView: some View {
        TabView(selection: $selectedTabIndex) {
            ForEach(tabs.indices, id: \.self) { index in
                Tab(tabs[index], systemImage: "person.crop.circle.fill", value: index) {
                    Text(loremTexts[index])
                        .padding(16)
                        .font(.body)
                }
            }
        }
    }
}

struct CustomTabRow: View {
    @Binding var selectedTabIndex: Int
    let tabs: [String]

    var body: some View {
        HStack(spacing: 0) {
            ForEach(tabs.indices, id: \.self) { index in
                CustomTab(
                    selected: selectedTabIndex == index,
                    title: tabs[index],
                    onClick: { selectedTabIndex = index }
                )
                
            }
        }
        .frame(maxWidth: .infinity)
    }
}

struct CustomTab: View {
    let selected: Bool
    let title: String
    let onClick: () -> Void

    var body: some View {
        VStack {
            Text(title)
                .font(.body)
                .padding(8)
                .frame(maxWidth: .infinity)
                .background(selected ? Color.primary.opacity(0.1) : Color.clear)
                .cornerRadius(8)
        }
        .onTapGesture {
            onClick()
        }
        .border(selected ? Color.blue : Color.clear, width: selected ? 4 : 0)
    }
}

struct Tabs {
    static let title = "Tabs Example"
}

struct TabsScreen_Previews: PreviewProvider {
    static var previews: some View {
        TabsScreen()
    }
}
