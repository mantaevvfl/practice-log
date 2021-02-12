//
//  Session.swift
//  Practice Log
//
//  Created by Ali Mantaev on 2021-02-10.
//

import Foundation
import SwiftUI

struct Session {
    var title: String
    var duration: Int
    var date: Date
    var category: Category
    
    enum Category: String, CaseIterable, Identifiable {
        case shooting, passing, dribbling, fitness, defending
        
        var imageName: String {
            switch(self) {
            case .shooting:
                return "dot.square"
            case .passing:
                return "arrow.up.right"
            case .dribbling:
                return "arrow.swap"
            case .fitness:
                return "person"
            case .defending:
                return "shield.lefthalf.fill"
            }
        }
        
        var id: String {self.rawValue}
    }
}
