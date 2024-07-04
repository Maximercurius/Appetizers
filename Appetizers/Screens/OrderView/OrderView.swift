//
//  OrderView.swift
//  Appetizers
//
//  Created by Makarov_Maxim on 28.05.2024.
//

import SwiftUI

struct OrderView: View {
    
    @State private var orderItems = MockData.orderItems
    
    var body: some View {
        NavigationView {
            VStack {
                List {
                    ForEach(orderItems) { appetizer in
                        AppetizerListCell(appetizer: appetizer)
                    }
                    .onDelete(perform: deleteItems)
                }
                .listStyle(.plain)
                
                Button {
                    print ("tap")
                } label: {
                    APButton(title: "$999 - Place Order")
                }
                .padding(.bottom, 27)
            }
            .navigationTitle("🧾 Orders")
        }
    }
    func deleteItems(at offsets: IndexSet) {
        orderItems.remove(atOffsets: offsets)
    }
}

#Preview {
    OrderView()
}
