//
//  Profile.swift
//  Practice Log
//
//  Created by Ali Mantaev on 2021-02-11.
//

import Foundation

struct Profile {
    var sessions: [Session]
    var noOfSessions: Int {
        sessions.count
    }
    var totalDuration: Int {
        var duration = 0
        for session in sessions {
            duration += session.duration
        }
        return duration
    }
    var dayStreak: Int {
        var highestStreak = 0, count = 0
        let calendar = Calendar.current
        for (i, session) in sessions[1..<sessions.count].enumerated() {
            let previousSessionDate = sessions[i].date // The index always starts at 0 regardless if you start from the second element of the array
            let dayAfterPrevious = calendar.date(byAdding: .day, value: 1, to: previousSessionDate)!
            if dayAfterPrevious.dateFormat == session.date.dateFormat {
                count += 1
            }
            else {
                if count > highestStreak {
                    highestStreak = count
                }
                count = 0
            }
        }
        return highestStreak
    }
    
    mutating func add(session: Session) {
        sessions.append(session)
    }
}
