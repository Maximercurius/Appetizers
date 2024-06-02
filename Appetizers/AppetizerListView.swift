//
//  AppetizerListView.swift
//  Appetizers
//
//  Created by Makarov_Maxim on 28.05.2024.
//

import SwiftUI

struct AppetizerListView: View {
    var body: some View {
        NavigationView {
            List(MockData.appetizers) { appetizer in
                AppetizerListCell(appetizer: appetizer)

            }
            .navigationTitle("🍟 Appetizers")
            
        }
    }
}

#Preview {
    AppetizerListView()
}
