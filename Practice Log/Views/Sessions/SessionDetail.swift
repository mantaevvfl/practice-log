//
//  SessionDetail.swift
//  Practice Log
//
//  Created by Ali Mantaev on 2021-02-16.
//

import SwiftUI

struct SessionDetail: View {
    @Binding var title: String
    @Binding var selectedCategory: Session.Category
    @Binding var duration: String
    @Binding var description: String
    
    var body: some View {
        List {
            Title(title: $title)
            CategorySelection(selectedCategory: selectedCategory)
            Group {
                TextField("Duration", text: $duration)
                    .keyboardType(.numberPad)
                TextField("Description", text: $description)
            }
            .padding(.horizontal)

        }

    }
}

struct SessionDetail_Previews: PreviewProvider {
    static var previews: some View {
        SessionDetail(title: .constant("Freestyle Skills"), selectedCategory: .constant(.dribbling), duration: .constant("120"), description: .constant("A lot of skill moves done."))
    }
}
