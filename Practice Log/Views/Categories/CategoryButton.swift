//
//  CategoryButton.swift
//  Practice Log
//
//  Created by Ali Mantaev on 2021-02-15.
//

import SwiftUI

struct CategoryButton: View {
    var category: Session.Category
    @State var selected: Bool = false
    
    var body: some View {
        Button(action: {
            self.selected.toggle()
        }) {
            VStack {
                CategoryIcon(category: category, highlighted: selected)
                Text(category.rawValue.capitalized)
                    .font(.headline)
                    .foregroundColor(selected ? .primary : .secondary)
            }

        }
    }
}

struct CategoryButton_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            CategoryButton(category: .defending)
            CategoryButton(category: .shooting, selected: true)
        }
        .previewLayout(.sizeThatFits)
        
    }
}
