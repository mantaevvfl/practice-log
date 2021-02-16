//
//  CategoryButton.swift
//  Practice Log
//
//  Created by Ali Mantaev on 2021-02-15.
//

import SwiftUI

struct CategoryButton: View {
    var category: Session.Category
    var selected: Bool = false
    var action: () -> Void
    
    var body: some View {
        Button(action: action) {
            VStack {
                CategoryIcon(category: category, highlighted: selected)
                Text(category.rawValue.capitalized)
                    .font(.caption)
                    .foregroundColor(selected ? .primary : .secondary)
            }

        }
    }
}

struct CategoryButton_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            CategoryButton(category: .defending, action: {})
            CategoryButton(category: .shooting, selected: true, action: {})
        }
        .previewLayout(.sizeThatFits)
        
    }
}
