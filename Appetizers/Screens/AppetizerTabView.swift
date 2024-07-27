//
//  ContentView.swift
//  Appetizers
//
//  Created by Makarov_Maxim on 28.05.2024.
//

import SwiftUI

struct AppetizerTabView: View {
    
    @EnvironmentObject var order: Order
    
    var body: some View {
        TabView {
            AppetizerListView()
                .tabItem {Label("Home", systemImage: "house.circle.fill")}
            AccountView()
                .tabItem {Label("Account", systemImage: "person.circle.fill")}
            OrderView()
                .tabItem {Label("Order", systemImage: "bag.circle.fill")}
                .badge(order.items.count)
        }
    }
}

#Preview {
    AppetizerTabView()
}
