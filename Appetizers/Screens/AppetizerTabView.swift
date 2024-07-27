//
//  ContentView.swift
//  Appetizers
//
//  Created by Makarov_Maxim on 28.05.2024.
//

import SwiftUI

struct AppetizerTabView: View {
    var body: some View {
        TabView {
            AppetizerListView()
                .tabItem {
                    Image(systemName: "house.circle.fill")
                    Text("Home")
                }
            AccountView()
                .tabItem {
                    Image(systemName: "person.circle.fill")
                    Text("Account")
                }
            OrderView()
                .tabItem {
                    Image(systemName: "bag.circle.fill")
                    Text("Order")
                }
        }
    }
}

#Preview {
    AppetizerTabView()
}
