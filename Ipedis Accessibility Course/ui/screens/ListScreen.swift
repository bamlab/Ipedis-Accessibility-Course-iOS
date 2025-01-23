import SwiftUI

struct ListScreen: View {
    @EnvironmentObject var router: Router
    @State private var showAlert = false
    @State private var selectedItem: Int? = nil

       var body: some View {
           VStack {
               
               List(0..<10, id: \.self) { index in
                   CustomListItem(name: "Item \(index)") {
                       // OnClick handler
                       selectedItem = index
                       showAlert = true
                   }
               }
               .listStyle(PlainListStyle())
           }.navigationTitle("List")
           .alert(isPresented: $showAlert) {
               Alert(title: Text("Item \(selectedItem ?? 0) clicked"))
           }
       }
   }

struct ListScreen_Previews: PreviewProvider {
    static var previews: some View {
        ListScreen()
    }
}
