//
//  CategoryModel.swift
//  Rendezfood
//
//  Created by Phúc Nguyễn on 2/7/24.
//

import Foundation

struct CategoryResponse: Codable {
    let categories: [Category]
}

struct Category: Codable {
    let idCategory: String
    let strCategory: String
    let strCategoryThumb: String
    let strCategoryDescription: String
}
