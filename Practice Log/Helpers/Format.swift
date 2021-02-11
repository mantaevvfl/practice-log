//
//  Format.swift
//  Practice Log
//
//  Created by Ali Mantaev on 2021-02-10.
//

import Foundation

extension Int {
    var timeFormat: String {
        let hours = self/60
        let minutes = self%60
        return "\(hours)h \(minutes)m"
    }
}

extension Date {
    var dateFormat: String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .medium
        return dateFormatter.string(from: self)
    }
}
