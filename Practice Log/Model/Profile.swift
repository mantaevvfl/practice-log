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
        var count = 0, max = 0
        
        for (i, session) in sessions[0..<(sessions.count-1)].enumerated() {
            let nextDate = Calendar.current.date(byAdding: .day, value: 1, to: session.date)!
            let nextDateComponents = Calendar.current.dateComponents([.month, .day, .year], from: nextDate)
            let nextSessionDateComponents = Calendar.current.dateComponents([.month, .day, .year], from: sessions[i+1].date)
            if nextSessionDateComponents == nextDateComponents {
                count += 1
                if count > max {
                    max = count
                    count = 0
                }
            }
            else {
                count = 0
            }
        }
        return max
    }
    
    mutating func add(session: Session) {
        sessions.append(session)
    }
}
