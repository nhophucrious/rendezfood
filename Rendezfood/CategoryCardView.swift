//
//  CategoryCardView.swift
//  Rendezfood
//
//  Created by Phúc Nguyễn on 3/7/24.
//

import SwiftUI

struct CategoryCardView: View {
    
    let category: Category
    
    var body: some View {
        HStack {
            AsyncImage(url: URL(string: category.strCategoryThumb)) { phase in
                switch phase {
                case .failure:
                    Image(systemName: "photo")
                        .font(.largeTitle)
                case .success(let image):
                    image
                        .resizable()
                default:
                    ProgressView()
                }
            }
            .frame(width: 150, height: 100, alignment: .center)
            .clipShape(.rect(cornerRadius: 25))
            
            VStack (alignment: .leading) {
                Text(category.strCategory)
                    .font(.title3)
                    .fontWeight(.bold)
                Text(category.strCategoryDescription)
                    .foregroundStyle(Color.white)
                    .fontWeight(.bold)
                    .lineLimit(4)
            }
        }
        .padding()
        .background(AppColor.primaryColor)
        .clipShape(.rect(cornerRadius: 25))
        
    }
}

#Preview {
    CategoryCardView(category: Category(idCategory: "1", strCategory: "Placeholder", strCategoryThumb: "link", strCategoryDescription: "desc"))
}
