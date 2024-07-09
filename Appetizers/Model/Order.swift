//
//  Order.swift
//  Appetizers
//
//  Created by Makarov_Maxim on 09.07.2024.
//

import SwiftUI

final class Order: ObservableObject {
    
    @Published var items: [Appetizer] = []
    
    func add(_ appetizer: Appetizer) {
        items.append(appetizer)
    }
}
