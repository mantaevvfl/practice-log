//
//  Title.swift
//  Practice Log
//
//  Created by Ali Mantaev on 2021-02-15.
//

import SwiftUI

struct Title: View {
    @Binding var title: String
    
    var body: some View {
        TextField("Title", text: $title)
            .font(Font.title.bold())
            .multilineTextAlignment(.leading)
            .padding()
    }
}

struct Title_Previews: PreviewProvider {
    static var previews: some View {
        Title(title: .constant("Crossing"))
            .previewLayout(.sizeThatFits)
            
    }
}
