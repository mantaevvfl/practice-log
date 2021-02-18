//
//  SessionView.swift
//  Practice Log
//
//  Created by Ali Mantaev on 2021-02-16.
//

import SwiftUI

struct SessionView: View {
    @Environment(\.presentationMode) var presentationMode
    
    @State var title: String
    @State var selectedCategory: Session.Category
    @State var description: String
    @State var duration: String
    
    
    
    var body: some View {
        NavigationView {
            SessionDetail(title: $title, selectedCategory: $selectedCategory, duration: $duration, description: $description)
                .navigationBarTitle("New Session")
                .navigationBarItems(leading: Button(action: {self.dismiss()}) {Text("Cancel")}, trailing: Button(action: {self.addSession()}) {Text("Add").bold()})
        }
    }
    
}

extension SessionView {
    func addSession() -> Void {
        let duration = Int(self.duration)!
        let session: Session = Session(title: self.title, duration: duration, date: Date(), category: self.selectedCategory)
        self.dismiss()
    }
    
    func dismiss() -> Void {
        presentationMode.wrappedValue.dismiss()
    }
}

struct SessionView_Previews: PreviewProvider {
    static var previews: some View {
        // Display multiple previews
        Group {
            SessionView(title: "My favourite session", selectedCategory: .dribbling, description: "I did many stepovers and L-drags", duration: "75")
            Group {
                SessionDetail(title: .constant("Title"), selectedCategory: .constant(.dribbling), duration: .constant("100"), description: .constant("I am feeling completely drained"))
                Title(title: .constant("Title"))
                CategorySelection(selectedCategory: .passing)
            }
        }
        .previewLayout(.sizeThatFits)
    }
}
