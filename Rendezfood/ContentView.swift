//
//  ContentView.swift
//  Rendezfood
//
//  Created by Phúc Nguyễn on 26/6/24.
//

import SwiftUI

struct ContentView: View {    
    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    Text("Find new recipe!")
                        .fontWeight(.bold)
                        .font(.title)
                    Spacer()
                    NavigationLink(destination: CategoryView()) {
                        Text("See all categories")
                    }
                    .buttonStyle(.borderedProminent)
                    .padding()
                    .tint(AppColor.primaryColor)
                    Spacer()
                }
            }
            .navigationBarTitle("RendezFood")
            .navigationBarTitleTextColor(AppColor.primaryColor)
        }
    }
}

#Preview {
    ContentView()
}

extension View {
    @available(iOS 14, *)
    func navigationBarTitleTextColor(_ color: Color) -> some View {
        let uiColor = UIColor(color)
        UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: uiColor ]
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: uiColor ]
        return self
    }
}
