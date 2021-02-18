//
//  PracticeLog.swift
//  Practice Log
//
//  Created by Ali Mantaev on 2021-02-14.
//

import SwiftUI

struct PracticeLog: View {
    @EnvironmentObject private var stateController: StateController
    
    @State private var addingNewSession: Bool = false
    
    var body: some View {
        NavigationView {
            UserProfile(profile: stateController.profile)
                .navigationBarTitle("Practice Log")
                .navigationBarItems(trailing: Button(action: {self.addingNewSession = true}) {
                    Image(systemName: "plus")
                        .font(.title)
                })
                .sheet(isPresented: $addingNewSession) {
                    SessionView()
                        .environmentObject(self.stateController)
                }
        }
    }
}

struct PracticeLog_Previews: PreviewProvider {
    static var previews: some View {
        PracticeLog()
            .environmentObject(StateController())
    }
}
