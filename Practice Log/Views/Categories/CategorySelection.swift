//
//  CategorySelection.swift
//  Practice Log
//
//  Created by Ali Mantaev on 2021-02-15.
//

import SwiftUI

struct CategorySelection: View {
    @State var selectedCategory: Session.Category
    
    var body: some View {
        HStack {
            Spacer()
            ForEach(Session.Category.allCases) {
                category in
                CategoryButton(category: category, selected: self.selectedCategory == category, action: {self.selectedCategory = category})
                Spacer()
            }
        }
    }
}

struct CategorySelection_Previews: PreviewProvider {
    static var previews: some View {
        CategorySelection(selectedCategory: .fitness)
            .previewLayout(.sizeThatFits)
    }
}
