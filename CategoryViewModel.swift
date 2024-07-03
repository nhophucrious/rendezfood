//
//  CategoryViewModel.swift
//  Rendezfood
//
//  Created by Phúc Nguyễn on 3/7/24.
//

import Foundation

class CategoryViewModel : ObservableObject {
    
    @Published var categories: [Category] = []
    
    func fetch() {
        
        print("is fetching")
        
        let urlString: String = "https://www.themealdb.com/api/json/v1/1/categories.php"
        
        if let url = URL(string: urlString) {
            URLSession
                .shared
                .dataTask(with: url) { [weak self] data, response, error in
                    
                    DispatchQueue.main.async {
                        if let error = error {
                            // TODO: handle error
                            print(error)
                        } else {
                            let decoder = JSONDecoder()
                            decoder.keyDecodingStrategy = .convertFromSnakeCase // first_name > firstName
                            
                            if let data = data,
                               let categoryResponse = try? decoder.decode(CategoryResponse.self, from: data) {
                                print(data)
                                self?.categories = categoryResponse.categories
                            } else {
                                // TODO: Handle error here
                            }
                        }
                    }
                }
                .resume()
        }
    }
}
