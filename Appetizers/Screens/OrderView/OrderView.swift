//
//  OrderView.swift
//  Appetizers
//
//  Created by Makarov_Maxim on 28.05.2024.
//

import SwiftUI

struct OrderView: View {
    
    @EnvironmentObject var order: Order
    
    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    List {
                        ForEach(order.items) { appetizer in
                            AppetizerListCell(appetizer: appetizer)
                        }
                        .onDelete(perform: order.deleteItems)
                    }
                    .listStyle(.plain)
                    
                    Button {
                        print ("tap")
                    } label: {
//                        APButton(title: "$\(order.totalPrice, specifier: "%.f") - Place Order")
                        Text("$\(order.totalPrice, specifier: "%.f") - Place Order")
                    }
                    .modifier(StandartButtonStyle())
                    .padding(.bottom, 27)
                }
                if order.items.isEmpty {
                    EmptyState(imageName: "empty-order", message: "You have no items in your order")
                }
            }

            .navigationTitle("🧾 Orders")
        }
    }
}

#Preview {
    OrderView()
}
