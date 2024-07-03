//
//  CategoryView.swift
//  Rendezfood
//
//  Created by Phúc Nguyễn on 2/7/24.
//

import SwiftUI

struct CategoryView: View {
    
    @StateObject var viewModel = CategoryViewModel()
    
    var body: some View {
        List {
            ForEach(viewModel.categories, id: \.idCategory) { category in
                CategoryCardView(category: category)
            }
        }
        
        .listStyle(.plain)
        .navigationTitle("Category")
        .navigationBarTitleDisplayMode(.inline)
        .onAppear() {
            viewModel.fetch()
        }
        
    }
}

#Preview {
    CategoryView()
}
