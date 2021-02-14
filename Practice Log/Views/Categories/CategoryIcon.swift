//
//  CategoryIcon.swift
//  Practice Log
//
//  Created by Ali Mantaev on 2021-02-11.
//

import SwiftUI

struct CategoryIcon: View {
    let category: Session.Category
    var highlighted: Bool = false
    
    var body: some View {
        ZStack {
            Circle()
                .foregroundColor(highlighted ? Color.blue : Color.secondary)
                .frame(width: 50.0, height: 50.0)
            Image(systemName: category.imageName)
                .foregroundColor(Color.white)
        }
        .padding()
        
    }
}

struct CategoryIcon_Previews: PreviewProvider {
    
    static var previews: some View {
        Group {
            HStack {
                ForEach(Session.Category.allCases) {
                    category in
                    VStack {
                        CategoryIcon(category: category)
                        CategoryIcon(category: category, highlighted: true)
                    }
                }
            }
        }
        .previewLayout(.sizeThatFits)
            
    }
}
