//
//  CustomModifiers.swift
//  Appetizers
//
//  Created by Makarov_Maxim on 27.07.2024.
//

import SwiftUI

struct StandartButtonStyle: ViewModifier {
    func body (content: Content) -> some View {
        content
            .buttonStyle(.bordered)
            .tint(.branPrimary)
            .controlSize(.large)
    }
}

//extension View {
//    func standartButtonStyle() -> some View {
//        self.modifier(StandartButtonStyle())
//    }
//}
