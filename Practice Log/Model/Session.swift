//
//  Session.swift
//  Practice Log
//
//  Created by Ali Mantaev on 2021-02-10.
//

import Foundation

struct Session {
    var title: String
    var duration: Int
    var date: Date
    var category: Category
    
    enum Category: String, CaseIterable, Identifiable {
        case shooting, passing, dribbling, fitness, defending
        
        var id: String {self.rawValue}
    }
}
