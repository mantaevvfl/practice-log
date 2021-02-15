//
//  PracticeLog.swift
//  Practice Log
//
//  Created by Ali Mantaev on 2021-02-14.
//

import SwiftUI

struct PracticeLog: View {
    var profile: Profile
    var someFunction: () -> Void
    
    var body: some View {
        NavigationView {
            UserProfile(profile: profile)
                .navigationBarTitle("Practice Log")
                .navigationBarItems(trailing: Button(action: someFunction) {
                    Image(systemName: "plus")
                        .font(.title)
                })
        }
    }
}

struct PracticeLog_Previews: PreviewProvider {
    static var previews: some View {
        PracticeLog(profile: TestData.profile, someFunction: {})
    }
}
