//
//  Progress.swift
//  Practice Log
//
//  Created by Ali Mantaev on 2021-02-11.
//

import SwiftUI

struct Progress: View {
    var totalDuration: Int
    var noOfSessions: Int
    var dayStreak: Int
    
    var body: some View {
        HStack {
            VStack {
                Text(totalDuration.timeFormat).bold()
                Text("Total Time")
                    .font(.caption)
            }
            Spacer()
            VStack {
                Text("\(noOfSessions)").bold()
                Text("Sessions")
                    .font(.caption)
            }
            Spacer()
            VStack {
                Text("\(dayStreak)").bold()
                Text("Day Streak")
                    .font(.caption)
            }
        }
        .padding()
    }
}

struct Progress_Previews: PreviewProvider {
    static var previews: some View {
        Progress(totalDuration: 75, noOfSessions: 4, dayStreak: 2)
            .previewLayout(.sizeThatFits)
    }
}
