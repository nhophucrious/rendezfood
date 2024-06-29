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
                Color(AppColor.secondaryColor).ignoresSafeArea()
                VStack {
                    Text("Discover new recipes")
                        .foregroundStyle(Color.white)
                        .fontWeight(.bold)
                        .font(.title)
                    Text("With RendezFood")
                        .foregroundStyle(AppColor.primaryColor)
                        .fontWeight(.bold)
                        .font(.title3)
                    Spacer()
                }
            }
        }
        .navigationTitle("RendezFood")
    }
}

#Preview {
    ContentView()
}
