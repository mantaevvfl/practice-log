//
//  UserProfile.swift
//  Practice Log
//
//  Created by Ali Mantaev on 2021-02-14.
//

import SwiftUI

struct UserProfile: View {
    var profile: Profile
    
    var sortedSessions: [Session] {
        profile.sessions.sorted(by: {
            (s1: Session, s2: Session) in
            s1.date > s2.date
        })
    }
    
    var body: some View {
        VStack {
            Progress(totalDuration: profile.totalDuration, noOfSessions: profile.noOfSessions, dayStreak: profile.dayStreak)
            
            List {
                ForEach(sortedSessions) {session in
                    SessionRow(session: session)
                }
            }
        }
    }
}

struct UserProfile_Previews: PreviewProvider {
    
    static var previews: some View {
        UserProfile(profile: TestData.profile)
    }
}
