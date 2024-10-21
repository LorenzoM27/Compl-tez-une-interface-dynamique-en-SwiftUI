//
//  DishSectionModifier.swift
//  TajMahal
//
//  Created by Lorenzo Menino on 17/10/2024.
//

import SwiftUI

struct DishSectionModifier: ViewModifier {
    let title: String
    let dishes: [Dish]

    func body(content: Content) -> some View {
        Section(title) {
            ForEach(dishes, id: \.self) { dish in
                ZStack {
                    NavigationLink {
                        DishDetailView(dish: dish)
                    } label: {
                        EmptyView()
                    }
                    .opacity(0)
                    
                    RowDishView(dish: dish)
                }
                .listRowSeparator(.hidden)
            }
        }
    }
}

extension View {
    func dishSection(title: String, dishes: [Dish]) -> some View {
        self.modifier(DishSectionModifier(title: title, dishes: dishes))
    }
}
