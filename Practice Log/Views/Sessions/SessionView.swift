//
//  SessionView.swift
//  Practice Log
//
//  Created by Ali Mantaev on 2021-02-16.
//

import SwiftUI

struct SessionView: View {
    @Environment(\.presentationMode) var presentationMode
    
    @EnvironmentObject private var stateController: StateController
    
    // Default values
    @State var title: String = ""
    @State var selectedCategory: Session.Category = .dribbling
    @State var description: String = ""
    @State var duration: String = ""
    
    
    
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
        stateController.add(session)
        self.dismiss()
    }
    
    func dismiss() -> Void {
        presentationMode.wrappedValue.dismiss()
    }
}

struct SessionView_Previews: PreviewProvider {
    static var previews: some View {
        SessionView()
            .environmentObject(StateController())
    }
}
