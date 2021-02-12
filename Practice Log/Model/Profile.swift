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
    var totalDuration: Int
    var dayStreak: Int
}
