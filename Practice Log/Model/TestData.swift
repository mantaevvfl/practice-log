//
//  TestData.swift
//  Practice Log
//
//  Created by Ali Mantaev on 2021-02-10.
//

import Foundation

struct TestData {
    
    static var sessions: [Session] = [
        Session(title: "Crossbar Challlenge", duration: 30, date: Calendar.current.date(byAdding: .day, value: -3, to: Date())!, category: .shooting),
        Session(title: "Ball Mastery Exercises", duration: 22, date: Calendar.current.date(byAdding: .day, value: -7, to: Date())!, category: .dribbling),
        Session(title: "Headers", duration: 75, date: Calendar.current.date(byAdding: .day, value: -1, to: Date())!, category: .defending)
    ]
    
    static let profile: Profile = Profile(sessions: sessions)
}
