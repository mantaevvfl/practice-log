//
//  SessionRow.swift
//  Practice Log
//
//  Created by Ali Mantaev on 2021-02-14.
//

import SwiftUI

struct SessionRow: View {
    var session: Session
    
    var body: some View {
        HStack() {
            CategoryIcon(category: session.category, highlighted: true)
            Text(session.title)
                .font(.headline)
            Spacer()
            VStack(alignment: .trailing, spacing: 5.0) {
                Text(session.duration.timeFormat).bold()
                Text(session.date.dateFormat)
                    .font(.caption)
            }
        }
        .padding(.vertical)
    }
}

struct SessionRow_Previews: PreviewProvider {
    static var previews: some View {
        SessionRow(session: TestData.profile.sessions[2])
            .previewLayout(.sizeThatFits)
    }
}
