//
//  TestData.swift
//  Practice Log
//
//  Created by Ali Mantaev on 2021-02-10.
//

import Foundation

struct TestData {
    static var sessions: [Session] = [
        Session(title: "Crossbar Challlenge", duration: 30, date: Date(), category: .shooting),
        Session(title: "Ball Mastery Exercises", duration: 22, date: Date(), category: .dribbling),
        Session(title: "1-on-1 against my brother", duration: 75, date: Date(), category: .defending)
    ]
}
