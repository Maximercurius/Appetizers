//
//  AppetizerListView.swift
//  Appetizers
//
//  Created by Makarov_Maxim on 28.05.2024.
//

import SwiftUI

struct AppetizerListView: View {
    @StateObject var viewModel = AppetizerListViewModel()
    
    var body: some View {
        NavigationView {
            List(viewModel.appetizers) { appetizer in
                AppetizerListCell(appetizer: appetizer)
                
            }
            .navigationTitle("🍟 Appetizers")
        }
        .onAppear() {
            viewModel.getAppetizers()
        }
    }

}

#Preview {
    AppetizerListView()
}
